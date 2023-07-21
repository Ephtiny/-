# Lab1

## 实验教程

### 前言

`.sct` 文件为了（后续的？）运行会在 `dc_shell` 展现其交互性提示符(shell prompt)前将一串命令保存

这里使用 `.sct`来表示`Tcl`语法（常见的还有 .`scr`）



### 过程

- 首先要向后滚动并找到调用 `dc_shell`的位置，确保没有错误信息，warnings没有问题

-  `Intro_Top.sct`的命令如下：

  - 规定综合器(synthesizer)的技术和图形符号库
  - 将设计逻辑库（内存中）与目录相关联
  - 将涉及作为光盘文件放入该库中进行分析和阐述；建立了操作条件(NCCOM = nominal-case, commercial temperature range)和通用延迟参数（导线-负载模型）

- 命令再次设置几个约束（芯片上允许的最大面积、允许的最大延迟、估计负载和驱动器），然后在交互模式下停止

- 在 `dc_shell`中输入下面的命令并等待编译

  ```shell
  dc_shell> compile
  dc_shell> report_area
  dc_shell> report_timing		
  ```

- 这些信息代表着满足或不满足的时序要求。对于这个库，面积近似晶体管计数

- 接下来通过写出verilog网表文件将结果保存到光盘中

  ```shell
  dc_shell> write -hierarchy -format verilog -output Intro_Netlist.v
  dc_shell> exit
  ```

- 重复 `dc_shell`的运行，以拉平网表层次结构(flatten the netlist hierarchy)与提高运行速度

  展平化通常是为了提高时序优化和综合网表的面积

  （flatten（展平化）和hierarchical（层次化）的介绍：[芯片后端：flatten和hierarchical_什么叫芯片flattern_Num One的博客-CSDN博客](https://blog.csdn.net/weixin_45270982/article/details/124262471)）

  ```shell
  dc_shell -f Intro_top.sct
  ```

- 运行后检查前面的信息，若没有错误则继续下一步

  ```shell
  dc_shell> ungroup -all -flatten
  dc_shell> compile -map_effort high
  dc_shell> report_timing
  ```

- 时序得到了改进，现在应该满足 `.sct`文件中的所有约束

  保存这个综合的(synthesized)、未分组的、不在具有任何层次结构但尚未推出的网表

  ```shell
  dc_shell> write -hierarchy -format verilog -output Intro_TopFlat.v
  ```

- 当我们在内存中有综合的网表时，写出一个包含从综合器使用的库中计算的网表计时的标准延迟格式(Standard Delay Format, SDF)文件（后续会用到）

  确保新文件的后缀是sdf

  ```shell
  dc_shell> write_sdf Intro_TopFlat.sdf
  dc_shell> exit
  ```

  

### 注释

flatten：

- 为了展平化设计中的层次结构，DC命令式没有分组的。在DC命令中，flatten指的是布尔逻辑结构而不是设计层次
- 在DC命令术语中，设计者可以用 `set_flatten`将组合逻辑层展平化为两层布尔乘积和。 `set_structure`命令则是将逻辑分解，在某种意义上可以称为 `set_flatten`的逆



### *选读

这两个的网表都是verilog语言的，所以可以在文本编辑器中检查，但由于它们小而简单，所以可以转化为电路图，并用VCS或综合GUI(Synthesis GUI)界面来查看

- VCS

  退出DC和VCS (如果仍在运行)，重新调用VCS，然后，与之前一样，使用[Load session]和{F5}运行仿真

  在初始(控制)窗口中，在层次结构窗口中选择'测试平台(TestBench) ',然后点击层级窗口正上方的"与门"图标。这将导致VCS在设计的测试平台级别创建示意图(schematic)（显示测试平台和顶层设计以及它们的所有连接）

  然后将鼠标放在测试平台示意图的Topper01块(block)上以突出显示，并右键弹出菜单选择，向下移动到定义（创建设计顶部的示意图）

  可以将光标移至块上查看其结构或内容

- 综合GUI

  在Shell提示符处，输入 `design_vision`。DC和 `design_visual`都使用`TcL` (工具命令语言)脚本接口；然而，在这一步中我们将只使用GUI命令

  当GUI出现后，使用[File]/[Read]命令读取从DC写出的 `Intro_Netlist.v`

  从Drop - Down菜单中选择[ Intro _ Top ]。然后，在上方菜单栏中间附近选取"与门"图标查看示意图

  忽略不成比例的方块与基本门的尺寸，注意到与《教程注释》或《教科书》中的原设计示意图相比没有太大变化（因为默认DC保留了设计结构，保留了层次结构）

  双击一个块以查看其子结构；选择向上箭头返回

  查看示意图后，使用 `design_vision` File / Exit 

  然后，退出DC，查看展平化优化后的网表示意图：再次调用综合GUI：`design_visual`

  使用[ File ] / [ Read ]命令读取新的 `Intro_TopFlat.v`

  在查看原理图之后，选择[ File ] / [ Exit ]来完成实验

  运行提供的Clean脚本，从实验练习目录中删除杂乱无章的内容



## 仿真过程

### 波形

![image-20230719154049218](https://gitee.com/ephtiny/image/raw/master/img/202307191540386.png)



### 电路图

参考：[Modelsim原理图生成小白教程（含操作实例）_modelsim生成电路图_acto__的博客-CSDN博客](https://blog.csdn.net/acto__/article/details/127878921)

在对module进行编译后，通过modelsim的transcript输入下面代码得到电路图

```
VSIM 16> vopt +acc Intro_Top -o Topper01 -debugdb
VSIM 16> vsim -debugdb work.Topper01
```

- `Intro_Top`为模块名， `Topper01`为生成的 `Optimized...`名称，如下图所示

  ![image-20230721171544981](https://gitee.com/ephtiny/image/raw/master/img/202307211715023.png)![image-20230721171600147](https://gitee.com/ephtiny/image/raw/master/img/202307211716184.png)

![image-20230721170943304](https://gitee.com/ephtiny/image/raw/master/img/202307211709426.png)

![image-20230721171020440](https://gitee.com/ephtiny/image/raw/master/img/202307211710490.png)

![](https://gitee.com/ephtiny/image/raw/master/img/202307211710471.png)

![image-20230721171058053](https://gitee.com/ephtiny/image/raw/master/img/202307211710085.png)



## 问题

1. redhat中的dc配置出现问题，导致在执行 `Intro_Top.sct`时出现部分代码无法识别

   ![image-20230721171842160](https://gitee.com/ephtiny/image/raw/master/img/202307211718272.png)

   遂无法进行下一步的编译，进行编译会出现下一个报错

   ![image-20230721172007661](https://gitee.com/ephtiny/image/raw/master/img/202307211720718.png)

   DC配置等下星期回来再重新进行配置

