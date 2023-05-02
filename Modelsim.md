# 简述

## 简介（了解，可跳过）

modelsim是Mentor公司开发的优秀的HDL语言仿真软件。
它能提供友好的仿真环境，采用单内核支持[VHDL](https://so.csdn.net/so/search?q=VHDL&spm=1001.2101.3001.7020)和Verilog混合仿真的仿真器。它采用直接优化的编译技术、Tcl/Tk技术和单一内核仿真技术，编译仿真速度快且编译的代码与平台无关。

## 特点（了解，可跳过）

- RTL和门级优化，本地编译结构，编译仿真速度快，跨平台跨版本仿真；
- 单内核VHDL和Verilog混合仿真；
- 源代码模版和助手，项目管理；
- 集成了性能分析、波形比较、代码覆盖、数据流ChaseX、Signal Spy、虚拟对象Virtual Object、Memory窗口、Assertion窗口、源码窗口显示信号值、信号条件断点等众多调试功能； 
- C和Tcl/Tk接口，C调试；
- 对SystemC的直接支持，和HDL任意混合；
- 支持SystemVerilog的设计功能；
- 对系统级描述语言的最全面支持，SystemVerilog，SystemC，PSL；
- ASIC Sign off。
- 可以单独或同时进行行为（behavioral）、RTL级、和门级（gate-level）的代码。

## 版本（了解，可跳过）

分为SE、PE、LE和OEM

其中SE最高级，在仿真速度上巨快，同时支持PC、UNIX和LINUX混合平台，提供全面完善以及高性能的验证功能。而集成在Actel、Atmel、Altera、Xilinx以及Lattice等FPGA厂商设计工具中的均是OEM版本

## 下载安装（本节重点）

- modelsim下载地址：[原子哥资料_免费高速下载|百度网盘-分享无限制 (baidu.com)](https://pan.baidu.com/s/1vaMfrHw4IfamREKiVAsSGw#list/path=%2F原子哥资料%2F【正点原子】开拓者FPGA开发板 工具盘(B盘)) 提取码：82eh
- 补充文件下载地址：[modelsim补充文档_免费高速下载|百度网盘-分享无限制 (baidu.com)](https://pan.baidu.com/s/1JfbqLaT9lgGE24WTJuKW2w#list/path=%2Fsharelink1101123749199-75223560736155%2Fmodelsim补充文档&parentPath=%2Fsharelink1101123749199-75223560736155) 提取码：zxr0
- 64位的也可以选择阿里云盘：https://www.aliyundrive.com/s/YMPZPVNEN9U

- 解压符合本机的modelsim版本，双击运行应用程序进入安装导向界面

![image-20230418161740030](https://gitee.com/ephtiny/image/raw/master/img/202304182133295.png)

- 点next

  ![image-20230418161851635](https://gitee.com/ephtiny/image/raw/master/img/202304182136562.png)

- 选择安装位置后next

  ![image-20230418162010321](https://gitee.com/ephtiny/image/raw/master/img/202304182136563.png)

- 选择agree

  ![image-20230418162324621](https://gitee.com/ephtiny/image/raw/master/img/202304182136564.png)

- 等待安装

  ![image-20230418162415218](https://gitee.com/ephtiny/image/raw/master/img/202304182136566.png)

- 弹出提示：是否在桌面创建快捷方式（建议yes）

  ![image-20230418162509269](https://gitee.com/ephtiny/image/raw/master/img/202304182136567.png)

- 添加路径，选择yes

  ![image-20230418162842711](https://gitee.com/ephtiny/image/raw/master/img/202304182136568.png)

- 选择no（这点需要注意）

  ![image-20230418163003286](https://gitee.com/ephtiny/image/raw/master/img/202304182136569.png)

- 完成安装

  ![image-20230418163046526](https://gitee.com/ephtiny/image/raw/master/img/202304182136570.png)

## 软件注册（本节重点）

- 找到软件安装目录中的mgls64.dll文件（右键桌面快捷键，打开文件所在目录）

  ![image-20230418163305126](https://gitee.com/ephtiny/image/raw/master/img/202304182136571.png)

- 右键该文件选择属性，取消“只读”，确定

  ![image-20230418163402416](https://gitee.com/ephtiny/image/raw/master/img/202304182136572.png)

- 找到MentorKG.exe和patch_dll.bat一起复制到modelsim安装目录的win32或win64下

  ![image-20230418163508533](https://gitee.com/ephtiny/image/raw/master/img/202304182136573.png)![image-20230418163612074](https://gitee.com/ephtiny/image/raw/master/img/202304182136574.png)

- 双击运行patch_dll.bat生成LICENSE.TXT，将LICENSE.TXT放到任意目录下（建议也是放到安装目录下，后面需要用到）

  运行patch_dll.bat生成LICENSE.TXT后会自动用记事本将其打开，生成的LICENSE.TXT默认放在C:\Users\user\AppData\Local\Temp

  ![image-20230418164042554](https://gitee.com/ephtiny/image/raw/master/img/202304182136575.png)

## 设置环境变量（本节重点）

- 右键桌面的此电脑，选择属性，选择高级系统设置

  ![image-20230418164208842](https://gitee.com/ephtiny/image/raw/master/img/202304182136576.png)

- 选择环境变量

  ![image-20230418164248039](https://gitee.com/ephtiny/image/raw/master/img/202304182136577.png)

- 在系统变量中新建

  ![image-20230418164350792](https://gitee.com/ephtiny/image/raw/master/img/202304182136578.png)

- 变量名称输入MGLS_LICENSE_FILE

- 变量值为LICENSE.TXT放置的路径

  ![image-20230418164552271](https://gitee.com/ephtiny/image/raw/master/img/202304182136579.png)![image-20230418164626338](https://gitee.com/ephtiny/image/raw/master/img/202304182136580.png)![image-20230418164659229](https://gitee.com/ephtiny/image/raw/master/img/202304182136581.png)

- 打开modelsim

  ![image-20230418164917515](https://gitee.com/ephtiny/image/raw/master/img/202304182136582.png)

## 卸载

- 在控制面板的程序和功能中找到 `Mentor Graphics Products`，双击删除

## 出现问题以及解决办法

### 找不到license文件

安装后打开Modelsim出现下面报错

![image-20230502231538436](https://gitee.com/ephtiny/image/raw/master/img/202305022315525.png)

- 在Modelsim安装目录（win64文件夹中）下找到 `mgls64.dll`，右键选择属性，取消“只读”属性
- 将 `MentorKG.exe`和 `patch_dll.bat`复制到安装目录下的win64文件夹中，运行 `patch_dll.bat`生成`LICENSE.TXT` 文本，将该文本另存于**Modelsim安装目录win64文件夹**中
- 恢复 `mgls64.dll`文件的”只读“属性
- 在环境变量中的用户变量中新建一个变量，变量名命名为 `MGLS_LICENSE_FILE`，变量值为刚才生成的 `LICENSE.TXT`的文件路径（具体参考“设置环境变量”）
- 打开Modelsim即可（如若仍未检测到 `LICENSE`可以尝试重启电脑 

### 调整字体大小

Tools > Edit Preference

![image-20230502235550497](https://gitee.com/ephtiny/image/raw/master/img/202305022355553.png)

选择textFont，点击Choose

​	在我的电脑里点击Choose后，Modelsim会卡死，可能是因为ModelSim的设置文件出现了问题或者软件本身存在Bug，重装Modelsim后仍无法解决

# 仿真前言

​	搬运资料：[Modelsim的仿真之路（基础仿真流程）_modelsim仿真_Smart_Devil的博客-CSDN博客](https://blog.csdn.net/Smart_Devil/article/details/121057663)

​	在ModelSim中对一个设计进行仿真有几种模式，基本的仿真、工程形式的仿真，还有使用多个库进行仿真

## 基础仿真步骤

- 创建工作库

  在ModelSim中，所有设计都被编译到一个库中。通常通过创建名为“work”的工作库来启动一个新的仿真，这是编译器使用的默认库名，作为已编译设计单元的目标库

- 编译设计文件

  创建工作库之后，就要将设计模块编译到其中，编译后的库格式支持在多个平台上使用，比如在Linux上编译了，然后可以不需要重新编译，就直接移到Windows上用

- 载入且运行仿真

  编译完成后，选择顶层的激励文件来加载仿真器，载入完成后，仿真界面将处于初始状态，再Run一下就可以开始仿真了

- 对仿真结果进行Debug

  Debug就是在仿真的时候，如果发现结果不是你想要的，就一步步调试了（可以借用工具）

## 工程形式的仿真步骤

​	与基础仿真相似

- 创建工作库
- 添加设计文件到工程
- 编译设计文件
- 载入且运行仿真
- 对仿真结果进行Debug

### 多个库的使用

​	工作库是处于设计文件的编译目录下，而资源库则可以处于其他位置，然后链接后就可以使用，这个资源库可以是第三方的（比如Vivado编译的库，然后在ModelSim里使用）

步骤：

- 创建工程
- 添加激励文件到工程
- 编译设计文件
- 链接资源库
- 载入且运行仿真
- 对仿真结果进行Debug

# 基础仿真

- 将工作路径改变到准备好的文件路径下（File > Change Directory）

  ![image-20211030130641333](https://gitee.com/ephtiny/image/raw/master/img/202305022335519.png)

- 创建工作库（File > New > Library）

  ![image-20211030131437058](https://gitee.com/ephtiny/image/raw/master/img/202305022338603.png)

  会出现一个弹窗，在这个窗口可以创建一个新的库，也可以映射已存在的库，库名的栏中会有个默认的值”work“，没有的话就自己输入一下，然后选择OK

  ![image-20211030131537172](https://gitee.com/ephtiny/image/raw/master/img/202305022338670.png)

  工作库创建好后，在软件的库界面会出现一个work的选项

  ![image-20211030132001714](https://gitee.com/ephtiny/image/raw/master/img/202305022339832.png)

- 新建设计文件（File > New > Source) 选择VHDL或SystemVerilog或其他

  - SystemVerilog介绍：“IEEE的2012版标准提出了System Verilog，并**将全部Verilog特性放到了System Verilog中**。未来全部的新特性都只会在System Verilog中维护。Verilog标准不会再有后续版本更新”  “对于设计人员，相比于Verilog，System Verilog新增了一个net类型——logic，以及大量现代化的分支判断、时序/组合逻辑语法”  “对于验证人员，System Verilog引入了面向对象的方法和更健全的随机化方法，允许验证人员从更高的抽象层次对RTL进行验证，也更方便验证人员快速提高验证覆盖率”  ==所以学了Verilog的也可以直接选SystemVerilog==

- 编写设计文件

- 编译文件（Compile > Compile）

  *注：如果开着工程的话，该选项是灰色的*，需要使用File > Close先关闭

  ![image-20211030142020181](https://gitee.com/ephtiny/image/raw/master/img/202305022344491.png)

  - 点击后，在弹窗的文件窗口选中设计文件，注意左上角的Library选中的是否为work，然后点Compile进行编译
  - 编译完后，Transcript窗口会出现编译结果，然后就可以点Done完成且关闭编译界面
  - 这时再看work，会发现，已经是非空状态了，多了个 “+” ，点击后，出现了个模块的名字，即刚刚编译的文件，类型为Module

- 选择设计文件，双击进入仿真界面

  ![image-20211030142953892](https://gitee.com/ephtiny/image/raw/master/img/202305022346719.png)

  或者选中设计文件，点右键，再选择 Simulate ；或者选中菜单栏上的Simulate > Start Simulation ，然后弹出以下的窗口，选择好文件，点OK也一样进入仿真界面

  仿真界面如下，这时候的界面主要由三个部分组成

  1：文件层次；2：根据1中选中的模块，对模块内的变量信息（Objects）以及当前仿真状态（Processes）进行显示；3：波形窗口

  ![image-20211030144708473](https://gitee.com/ephtiny/image/raw/master/img/202305022347454.png)

  如果少了可以在View中开启对应部分

  ![image-20211030145437001](https://gitee.com/ephtiny/image/raw/master/img/202305022348275.png)

  若Wave窗口中无信号，则在1窗口中，选中模块，然后右键，点击Add Wave ，Wave中就添加对应的信号变量了

  ![image-20211030145656413](https://gitee.com/ephtiny/image/raw/master/img/202305022348910.png)

- 找到控制仿真运行的菜单，然后点 Run，或者直接在脚本窗口输入：run 100ns，也可运行仿真，时长根据自己需要设定，要注意的是，当以后变量多了，运行则会相对变慢；点 Run -All 的图标，则会一直运行，直到运行到停止的信号或者点了 Stop 那个图

  ![image-20211030145846320](https://gitee.com/ephtiny/image/raw/master/img/202305022349612.png)

  ![image-20211030150425185](https://gitee.com/ephtiny/image/raw/master/img/202305022349208.png)

  可以看到 Wave 中的信号变量运行了一段时间，接着 Restart，将状态全部复位，准备后续的演示

  ![image-20211030151121360](https://gitee.com/ephtiny/image/raw/master/img/202305022349468.png)

- Debug，先在菜单栏 View > Files ，打开文件窗口，双击counter.v（含bug的设计文件）

  ![image-20211030150716809](https://gitee.com/ephtiny/image/raw/master/img/202305022351468.png)

  打开counter.v后，在always处点下侧边栏，会出现一个红色的点，即断点，再次单击就会变灰色，如果要移除就右键然后Remove Breakpoint

  ![image-20211030150841613](https://gitee.com/ephtiny/image/raw/master/img/202305022351669.png)

  断点设好后，直接点 Run -All 的图标，会发现运行的蓝箭头停在了设置的断点处

  ![image-20211030151242350](https://gitee.com/ephtiny/image/raw/master/img/202305022351363.png)

  这时候看Objects窗口的变量值，为当前停下时，各变量的值

  ![(img-tJYKj3Rl-1635603312500)](https://gitee.com/ephtiny/image/raw/master/img/202305022351349.png)

  把鼠标移到变量上，也会出现此时相应的变量与其值，和Objects的一样

  ![image-20211030151635224](https://gitee.com/ephtiny/image/raw/master/img/202305022352090.png)

  或者选中某个信号，然后右键，选中 Examine

  ![image-20211030152106501](https://gitee.com/ephtiny/image/raw/master/img/202305022352891.png)

  这时也会弹出对应变量的值

  ![image-20211030152137115](https://gitee.com/ephtiny/image/raw/master/img/202305022352304.png)

  接着找到调试窗口，图标的含义和玩C的Debug是一样的，单步调试那些啥的

  ![Debug](https://gitee.com/ephtiny/image/raw/master/img/202305022352367.png)

  点两下Step Into，箭头就一步步的到了count的赋值处

  ![image-20211030152627075](https://gitee.com/ephtiny/image/raw/master/img/202305022353538.png)

  最后菜单栏 Simulate > End Simulation 结束并退出仿真，出现提示框的话，点是就可以了（quit -sim）

  ![image-20211030152927823](https://gitee.com/ephtiny/image/raw/master/img/202305022353769.png)