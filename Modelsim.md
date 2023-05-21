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

  ![这里写图片描述](https://img-blog.csdn.net/20151011175712388)

  ![这里写图片描述](https://img-blog.csdn.net/20151011175722478)

## 出现问题以及解决办法

### 找不到license文件

安装后打开Modelsim出现下面报错

![image-20230502231538436](https://gitee.com/ephtiny/image/raw/master/img/202305022315525.png)

- 在Modelsim安装目录（win64文件夹中）下找到 `mgls64.dll`，右键选择属性，取消“只读”属性
- 将 `MentorKG.exe`和 `patch_dll.bat`复制到安装目录下的win64文件夹中，运行 `patch_dll.bat`生成`LICENSE.TXT` 文本，将该文本另存于**Modelsim安装目录win64文件夹**中
- 恢复 `mgls64.dll`文件的”只读“属性
- 在环境变量中的用户变量中新建一个变量，变量名命名为 `MGLS_LICENSE_FILE`，变量值为刚才生成的 `LICENSE.TXT`的文件路径（具体参考“设置环境变量”）
- 打开Modelsim即可（如若仍未检测到 `LICENSE`可以尝试重启电脑 ）

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

# 仿真工程的使用

## 创建工程

- 设置工作路径，然后选择菜单栏 File > New > Project

  ![image-20211031211836325](https://gitee.com/ephtiny/image/raw/master/img/202305192303878.png)

- 在下面的界面中填写工程的名字、工程的路径、以及工程默认库的名字，使用默认的work即可

  初始化配置文件的路径，配置文件选安装路径下的modelsim.ini即可

  选择Copy Library Mappings，这样就可以把这个文件直接加到这个工程中了，使用Reference也可以

  填好后选择OK

  ![image-20211031212256129](https://gitee.com/ephtiny/image/raw/master/img/202305192306298.png)

- 进入工程的设置，可以创建新的文件、添加已有的文件、创建仿真的配置以及创建文件夹（以下以添加已有文件为例）

  ![image-20211031212917150](https://gitee.com/ephtiny/image/raw/master/img/202305192307758.png)

- 从Browse中选择要添加的文件

  当工程已经和添加文件在一个目录下时，所以选择Reference即可，如果是其他路径下的，就可以考虑Copy过来进行管理

  接着OK，close添加界面

  ![image-20211031213350647](https://gitee.com/ephtiny/image/raw/master/img/202305192310426.png)

  此时Project的栏中，多了刚添加的文件，且Status显示的是一个蓝色问号，这代表该文件还未编译；Order就是两者的一个编译顺序以及文件改动的时间

  ![image-20211031213727124](https://gitee.com/ephtiny/image/raw/master/img/202305192311297.png)

## 文件编译

- 如果想改变编译顺序，右键 > Compile > Compile Order

  ![image-20211031214057341](https://gitee.com/ephtiny/image/raw/master/img/202305192313918.png)

  使用这两个箭头来改变文件的编译顺序，点Auto Generate 就会以Top层开始进行编译，如果顺序不正确，它也会自动循环跑，然后找到这个Top层往下一层层的编，可以的话，就自己用箭头先把顺序按正确的来设置好

  ![image-20211031214217952](https://gitee.com/ephtiny/image/raw/master/img/202305192313748.png)

  除了用上面的Auto来编译外，还可以直接单个编译，或者选全部编译（图中两个箭头所指）

  ![image-20211031214942015](https://gitee.com/ephtiny/image/raw/master/img/202305192314740.png)

- 编译成功后，状态会变为绿色的勾，如果代码出问题了，就是个红色的X，这时候就有根据Transcript 的信息去改代码了，跳到Library的窗口，从原本empty的状态变为了一个带 **+** 号的状态

  ![image-20211031215338769](https://gitee.com/ephtiny/image/raw/master/img/202305192314491.png)

- 点开 **+** 号，可以看到两个编译的结果，名字、类型和路径都在信息里，选中test_counter，右键 > Simulate，进入仿真界面

  ![image-20211031215446896](https://gitee.com/ephtiny/image/raw/master/img/202305192315826.png)

- 在Sim窗口含仿真文件的层次结构，接着的基本仿真使用就和 基础仿真 的一样了

- 在Transcript窗口（最下面的命令行）输入：**quit -sim**，退出仿真，准备接下来的

## 文件管理

- 刚开始创建工程是点击Create New Folder创建好文件夹，在工程创建好后还需要新建文件夹来管理，就接着往下操作

- 在Project的窗口，**右键 > Add to Project > Folder** ，在弹出的窗口输入文件夹的名字，按正常的文件夹格式来对文件夹取名就好了，然后OK

  ![image-20211031221613420](https://gitee.com/ephtiny/image/raw/master/img/202305192319480.png)

  这样在Project窗口中也多了一个文件夹的图标

  ![image-20211031221718372](https://gitee.com/ephtiny/image/raw/master/img/202305192325228.png)

- 当文件过多需要细分时，可以按激励文件和模块文件来分类，继续 **右键 > Add to Project > Folder** ，填写子文件夹的名字，且将该文件夹放置在Design Files的文件夹下，然后OK

  ![](https://gitee.com/ephtiny/image/raw/master/img/202305192326208.png)

  重复上述的操作，再加入一个Source的子文件夹，然后效果如下

  ![image-20211031222223962](https://gitee.com/ephtiny/image/raw/master/img/202305192326701.png)

  

  然后就该把文件添加到对应的文件夹下进行管理了，选中 counter.v（如果是多个文件，就选中多个） 然后**右键 > Properties**

  ![image-20211031222515394](https://gitee.com/ephtiny/image/raw/master/img/202305192327370.png)

  在属性窗口，可以从 **Place In Folder** 看到文件放在Top层，修改它，将其放置在Source层，然后OK

  ![image-20211031222706553](https://gitee.com/ephtiny/image/raw/master/img/202305192327514.png)

  重复上述操作，将tcounter.v放入testbench文件夹下，这时的效果如下

  ![image-20211031222902276](https://gitee.com/ephtiny/image/raw/master/img/202305192327838.png)

  此时会发现状态又变成了问号，这是因为改变了文件的位置，工程已经不知道编译结果是否依然有效，所以需要**重新编译**才能继续使用。

## 仿真配置

仿真配置就是将模块和仿真的选项存在了一个文件中，然后直接使用该文件就可以自动按设置好的启动仿真，举个例子：假设你的某个模块需要对仿真的时间精度然后还需要做一些自检啥的，这时候就可以直接用配置文件来操作，以省去不必要的步骤。

- 在Project窗口 右键>Add to Project > Simulation Configuration ,在出现的界面中，填入配置文件的名字，以及放置的文件夹，这边选则放在testbench文件夹下

  ![image-20211031225154956](https://gitee.com/ephtiny/image/raw/master/img/202305192330846.png)

- 接着选中work库下的 **test_counter**，仿真精度（Resolution）改为ps

  ![image-20211031225205494](https://gitee.com/ephtiny/image/raw/master/img/202305192330692.png)

- 选中Verilog的窗口，将**Enable hazard checking (-hazards)** 的选项打勾，然后点Save进行保存

  ![image-20211031225314514](https://gitee.com/ephtiny/image/raw/master/img/202305192331756.png)

- 在文件夹下就有了该仿真配置，直接双击它

  ![image-20211031225407717](https://gitee.com/ephtiny/image/raw/master/img/202305192331174.png)

- 然后在Transcript 窗口可以看到仿真的命令和之前的有了一些不同，是按照刚刚的设置启动了仿真

  ![image-20211031225636299](https://gitee.com/ephtiny/image/raw/master/img/202305192331380.png)



# 仿真过程碰到的问题

## modelsim-objects窗口为空的解决办法

参考：[modelsim-objects窗口为空的解决办法_modelsimwork为空_Vuko-wxh的博客-CSDN博客](https://blog.csdn.net/weixin_41445387/article/details/90189405)

使用Modelsim进行仿真时，点击start simulateion后，出现Objects空白的问题，导致add wave -hex 后出现“No objects found matching '’”；尽管输入run后，可以运行仿真，但却无法察看wave窗口的波形。
解决方案：

- 法一：点击工具栏中的“simulate”按钮，调出start smulation窗口，把窗口中最下边optimization栏中的Enable optimization项目前的钩钩去掉，然后选择仿真的文件，点击OK，就一切正常了，能看到objects了。（这里有时候会出现OK点不了，有时候虽然点不了但close重进窗口后发现√已去掉，但Objects仍空白，此时可以尝试法二）
- 法二：找到modelsim安装目录下的modelsim.ini文件，将VoptFlow = 1注释掉，或者把1改为0，这样默认的状态就是不优化。（修改后，我只有第一次成功了）
- 法三：右键要仿真的文件，选择Simulate without optimization

​	解决这一问题的核心在于取消优化。

## 仿真过程中，变量不是自己想要的进制

可以在Objects中选择对应的变量右键>Radix>想要显示的进制如：Binary(二进制)

# SystemVerilog基础代码

## Testbench脚本编写

搬运资料：[使用modelsim进行Verilog仿真（包含testbench编写）_modelsim编写verilog_学术萌新的博客-CSDN博客](https://blog.csdn.net/weixin_43506155/article/details/118179930?ops_request_misc=%7B%22request%5Fid%22%3A%22168450801216800217239358%22%2C%22scm%22%3A%2220140713.130102334..%22%7D&request_id=168450801216800217239358&biz_id=0&utm_medium=distribute.pc_search_result.none-task-blog-2~all~sobaiduend~default-2-118179930-null-null.142^v87^control_2,239^v2^insert_chatgpt&utm_term=modelsim testbench&spm=1018.2226.3001.4187)

- 第一句timescale是对时间进行约束，第一个1ns为单位时间，可以理解为一个最基本的时钟周期的时间为1ns，第二个1ns为精度，也就是时间分辨精度，设置为1ns那么在仿真时时间坐标的单位就为1ns。

```systemverilog
`timescale 1 ns/ 1 ns//仿真的单位时间为1ns，精度为1ps
```

- 下面这句就是对变量的声明，clk和rstn为led0_module的输入，led0_out为输出。led0_out只能为wire类型，因为在led0_module中输出变量LED_Out是使用assign被赋值，所以testbench中的led0_out只能为wire类型。

```systemverilog
	reg clk,rstn;
	wire led0_out;
```

- 在下面这段代码中，对rstn和clk的行为进行了描述，forever为循环，通常用于时钟的产生，在这里为每1ns时钟电平翻转一次。

  其中 `#10 rstn=1;`中的 `#10`是等待10个时间单位

```systemverilog
	initial
	begin
		rstn=0;
		#10 rstn=1;
		clk=0;
		forever #1 clk=~clk;
	end
```

- 最后，下面这段代码用于对模块的实例化。我的理解是这段代码也顺便完成了信号线的pin map功能。即，将上面rstn和clk以及led0_out分别与CLK、RSTn和LED_Out相连接

```systemverilog
led0_module U1
	(
		.CLK(clk),
		.RSTn(rstn),
		.LED_Out(led0_out)
	);
```

### Testbench总代码

```systemverilog
`timescale 1 ns/ 1 ns//仿真的单位时间为1ns，精度为1ps
module led_tb;
	reg clk,rstn;
	wire led0_out;
	initial
	begin
		rstn=0;
		#10 rstn=1;
		clk=0;
		forever #1 clk=~clk;
	end
led0_module U1
	(
		.CLK(clk),
		.RSTn(rstn),
		.LED_Out(led0_out)
	);

endmodule
```

### 应用模块代码（能理解上面可以跳）

```systemverilog
module led0_module
(
    CLK, RSTn, LED_Out
);

    input CLK;
    input RSTn;
    output LED_Out;
    
    /*************************************/
    
    parameter T1S = 26'd50;//å¤–éƒ¨æ™¶æŒ¯50M
    
    /*************************************/
    
    reg [25:0]Count1;
    
    always @ ( posedge CLK or negedge RSTn )
	    if( !RSTn )	
	        Count1 <= 26'd0;
	    else if( Count1 == T1S )
	        Count1 <= 26'd0;
	    else
	        Count1 <= Count1 + 1'b1;
	        
	/*************************************/
	
	reg rLED_Out;
	
	always @ ( posedge CLK or negedge RSTn )
        if( !RSTn ) 
            rLED_Out <= 1'b0;
        else if( Count1 >= 26'd0 && Count1 < 26'd25 )
            rLED_Out <= 1'b1;
        else 
            rLED_Out <= 1'b0;
            
     /***************************************/
     
     assign LED_Out = rLED_Out;
     
     /***************************************/
              
 endmodule
```



# CMOS附录代码

## A.1 引言

### A.1.1 模块

#### 例A.1 组合逻辑

**combinatory_logic.sv**

```systemverilog
module sillyfunction(input	logic a, b, c,
		     output	logic y);

	assign y = ~a & ~b & ~c |
		    a & ~b & ~c |
		    a & ~b &  c;
endmodule
```

- assign 语句用来描述组合逻辑
- “～”表示非(NOT), “&”表示与(AND),而“|”表示或(OR)
- logic信号如输入和输出都是布尔变量(0 或1),它们也可以取浮空(Hoating)和不定(undefined)值

**com_logic_tb.sv**

```systemverilog
`timescale 1 ns/ 1 ns
module com_logic_tb;
	logic a, b, c;
    logic y;
    //reg a, b, c;
	//wire y;
	
	initial
	begin 
	 a = 1'b0;
	 b = 1'b0;
	 c = 1'b0;
	 #100 a = 1'b1;
	 #100 a = 1'b0;
	 b = 1'b1;
	 #100 b = 1'b0;
	 c = 1'b1;
	 #100 a = 1'b1;
	 #100 a = 1'b0;
	 b = 1'b1;
	 #100 c = 1'b0;
	 a = 1'b1;
	 #100 c = 1'b1;
	 #100;
	end

sillyfunction A1
	(
		.a(a),
		.b(b),
		.c(c),
		.y(y)
	);

endmodule
```

![image-20230520131952503](https://gitee.com/ephtiny/image/raw/master/img/202305201319571.png)

![image-20230520144027688](https://gitee.com/ephtiny/image/raw/master/img/202305201440769.png)

#### 例A.2 32位加法器

**adder.sv**

```systemverilog
module adder(input	logic [31:0] a,
			input  logic [31:0] b,
			output logic [31:0] y);
			
    assign y = a + b;
endmodule    
```

**tb_adder.sv**

```systemverilog
`timescale 1 ns/ 1 ns
module tb_adder;
    logic [31:0] a, b;
	logic [31:0] y;
	
	initial
	begin 
	 a = 32'b0101;
	 b = 32'b1010;
	 #100;
	end

adder A2
	(
		.a(a),
		.b(b),
		.y(y)
	);

endmodule
```

![](https://gitee.com/ephtiny/image/raw/master/img/202305201518107.png)

![image-20230520144040606](https://gitee.com/ephtiny/image/raw/master/img/202305201440654.png)

## A.2 组合逻辑

### A.2.1 按位操作

#### 例A.3 反相器

**inv.sv**

```systemverilog
module inv(input	logic [3:0] a,
           output	logic [3:0] y);
    
    assign y = ~a;
endmodule
```

**tb_inv.sv**

```systemverilog
`timescale 1 ns/ 1 ns
module tb_inv;
	logic [3:0] a;
	logic [3:0] y;
	
	initial
	begin
       a = 4'b1;
	  #100 a = ~a;
	  #100 a = ~a;
	  #100 a = ~a;
	  #100 $stop;
	// a = 4'b0101;
	// forever #100 a = ~a;
	end

inv A3
	(
		.a(a),
		.y(y)
	);

endmodule
```

仿真时可能会出现显示为十六进制，可以在Objects中选择对应的变量右键>Radix>Binary(二进制)

![image-20230520151642935](https://gitee.com/ephtiny/image/raw/master/img/202305201516995.png)

#### 例A.4 逻辑门

**gates.sv**

```systemverilog
module gates(input	logic [3:0] a, b
             output	logic [3:0] y1, y2,
             					y3, y4, y5);
    
    assign y1 = a & b;		// AND
    assign y2 = a | b;		// OR
    assign y3 = a ^ b;		// XOR
    assign y4 = ~(a & b);	// NAND
    assign y5 = ~(a | b);	// NOR
endmodule
```

- 操作符 (operator)：如“～”,“^”及“|“

- 操作数(operand)：如a、b及y1

- 表达式(expression)：操作符和操作数的组合，如aob或～(a | b)

- 语句(statement)：一条完整的命令如assign y4 = ～(a & b)

  连续赋值语句(continuous assignment statement)：assign out = in1ap in2

  ​	在一条连续赋值语句中每当“=”号右边 的输入变化时，左边的输出就重新进行计算。



![image-20230520163053749](https://gitee.com/ephtiny/image/raw/master/img/202305201630815.png)

### A.2.2 注释与空白

- /*  */注释多行；//注释一行
- 对使用空白( white space),即空 格(space)、跳格(tab)和换行符(line break)并不过分讲究
- g对字母的大小骂教感

### A.2.3 简约操作符

#### 例A.5 8输入与门

**and8.sv**

```systemverilog
module and8(input	logic [7:0] a,
            output	logic	    y);
    
    assign y = &a;
endmodule
// &a 比 assign y = a[7] & a[6] & a[5] & a[4] &
// 				  a[3] & a[2] & a[1] & a[0];
// 容易写得多
```

​	或(OR)、异或(XOR)、与 非(NAND)以及或非(NOR)都有简约操作符 “|”、“^”、“~&” 及 “~|“



![image-20230520164120437](https://gitee.com/ephtiny/image/raw/master/img/202305201641497.png)

### A.2.4 条件赋值

#### 例A.6 2:1多路开关

```systemverilog
module mux2(input	logic [3:0] d0, d1,
            input	logic 	    s,
            output	logic [3:0] y);
    
    assign y = s ? d1 : d0;
endmodule
```

​	第一个表达式称为条件(condition)。加果条件表达式s为1,操作符选择第二个表达式d1；如果条件表达式为0,操作符选择第三个表达式d0。

​	“?:”操作符也称为三变量操作符( temary operator),因为它有三个输入。它在C和Java编程语言中也用于同样目的。

![image-20230520164545121](https://gitee.com/ephtiny/image/raw/master/img/202305201645172.png)

#### 例A.7 4:1多路开关

```systemverilog
module mux4(input	logic [3:0] d0, d1, d2, d3,
            input	logic [1:0] s,
            output	logic [3:0] y);
    
    assign y = s[1] ? (s[0] ? d3 : d2)
        		   : (s[0] ? d1 : d0);
endmodule
```

![image-20230521151315131](https://gitee.com/ephtiny/image/raw/master/img/202305211513223.png)

​	该多路开关具有多个数据输人(d)和仅一位为1(one-hot)的使能输人 (e)。当使能信号中有一个有效时，相应的数据就传送至输出。例如，当s[1]= s[0]=0时，最 下面的与门unl_s_5产生1,使该多路开关最下面的输人有效，从而使它选取d0[3:0]。

### A.2.5 内部变量

全加器是一个由下式定义的三个输入及两个输出的电路：

![image-20230521151746141](https://gitee.com/ephtiny/image/raw/master/img/202305211517248.png)

如果我们定义两个中间信号P和G;

![image-20230521151817390](https://gitee.com/ephtiny/image/raw/master/img/202305211518430.png)

可以将这个全加器改写为：

![image-20230521151839639](https://gitee.com/ephtiny/image/raw/master/img/202305211518693.png)

**P和G称为内部变量(internal variable)**,因为它们既不是输人也不是输出而只是用在该模块内部。

#### 例A.8 全加器

```systemverilog
module fulladder(input  wire a, b,cin,
                 output reg s , cout);
	reg p, g;
	assign p = a ^ b;
	assign g = a & b;
	assign s = p ^ cin;
	assign cout = g | (p & cin);
endmodule
```

![image-20230521152053263](https://gitee.com/ephtiny/image/raw/master/img/202305211520310.png)

### A.2.6 先权操作符及其他操作符

#### 例A.9 作符优先权

![image-20230521152422183](https://gitee.com/ephtiny/image/raw/master/img/202305211524283.png)

![image-20230521152436594](https://gitee.com/ephtiny/image/raw/master/img/202305211524639.png)

减法包括了2的补码和加法运算

### A.2.7 数字

#### 例A.10 数字

用来说明常数的格式是**N'Bvalue**,这里==N是位数，B是基数，而value是它的值==。

**'b表示二进制 (基2)**,'o表示八进制(基8),**'d表示十进制 (基10)**,以及**'h表示十六进制(基16)**。如果没 有表示出基数，那么就默认基数为10

如果没有蛤出位数，那么就认为该数的位数 与使用它的表达式相同。多个零(0)将自动插入 在该数的前面，使它具有全部位数

![image-20230521153023001](https://gitee.com/ephtiny/image/raw/master/img/202305211530054.png)

### A.2.8 z与x

浮空z，无效x

#### 例A.11 三态缓冲器

```systemverilog
module tristate (input logic [3:0] a,
        		input logic 	  en,
        		output tri 	[3:0] y);
assign y= en? a: 4'bz;
endmodule
```

![image-20230521154626652](https://gitee.com/ephtiny/image/raw/master/img/202305211546742.png)

logic信号只能有一个驱动器。三态总线可以有多个驱动器，所以它们应当被说明成net(网络节点)。 SystemVerilog中的两类net称为tri和trireg。 通常met上每一时刻只能有一个驱动器有效，并且该net就取那个值。如果没有任何驱动器有效，那么tri就浮空(z),而trireg保持它原来的值。如果没有说明输入或输出的类型，那么就认为它是tri类型。

#### 例A.12 定榆入和浮空输入时的真值表

如果一个逻辑门接收一个浮空输人，那么当它不能决定什么是正确的输出值时可能产生一 个x输出。类似地，如果它接收一个无效的或未初始化的输人，那么它也产生一个x输出。 例A.12显示了SystemVerilog如何在逻辑门中合成这两种不同的信号值。

![image-20230521154829418](https://gitee.com/ephtiny/image/raw/master/img/202305211548463.png)

### A.2.9 位混合

#### 例A.13 位混合

```systemverilog
assign y = {c[2:1], {3{d[0]}}, c[0], 3'b101};
```

y得到了一个9位的值c~2~c~1~d~0~d~0~d~0~C~0~101

- {}操作符用来姓接总线
- (3{d[0]}表示将d[0]复制三次

不要将3位的二进制常数3'b101和总线b 相混淆。注意，在常教中说明长度为3位非常 重要，否则有可能在y的中间出现未知数目的前导零。 

如果y比9位还宽，那么在前几个最高有效 位上将放上零。

#### 例A.14 输出拆分(、乘法器)

```systemverilog
module mu1(input	logic [7:0] a, b,
           output	logic [7:0] upper, lower);
    
    assign {upper, lower} = a*b;
endmodule
```

![image-20230521161123900](https://gitee.com/ephtiny/image/raw/master/img/202305211611950.png)

#### 例A.15 符号扩展

```systemverilog
module signextend(input		logic [15:0] a,
                  output	logic [31:0] y);
    
    assign y = {{16{a[15]}}, a[15:0]};
endmodule
```

![image-20230521161314048](https://gitee.com/ephtiny/image/raw/master/img/202305211613100.png)

### A.2.10 延时

#### 例A.16 具有延时的逻辑门

```systemverilog
`timescale 1ns/1ps

module example(input	logic a, b, c
               output	logic y);
    
    logic, ab, bb, cb, n1, n2, n3;
    
    assign #1 {ab, bb, cb} = ~{a, b, c};
    assign #2 n1 = ab & bb & cb;
    assign #2 n2 = a  & bb & cb;
    assign #2 n3 = a  & bb & c ;
    assign #4 y  = n1 | n2 | n3;
endmodule
```

​	SystemVerilog文件可以包括一条时标(timegcale)指令来指出每个时间单位的值。这一语句 的形式为'timescale unit/step。在这一文件 中，每个时间单位为1ns;而模拟的时间分辨率为1 ps。如果文件中没有给出任何时标指令，那么就采用默认的单位和步长(通常这两个值都是1 ns)。

​	#号用来说明延时的单位教。

![image-20230521162908440](https://gitee.com/ephtiny/image/raw/master/img/202305211629502.png)

## A.4 时序逻辑

### A.4.1 寄存器

#### 例A.20 寄存器

```systemverilog
module flop(input  logic 	   clk，
            input  logic [3:0] d,
            output logic [3:0] q);
    
	always_ff @(posedge clk)
		q <= d;
endmodule
```

```verilog
//verilog的always语句：
always @(sensitivity list)
	statement;
```

​	这一语句只有当在敏感表(sensitivity list)中 说明的事件发生时才执行。在本例中，这条语句 为q<=d(读做“q获得d”)。因此，触发器在 时钟正边沿时将d复制到q中，而在其他时刻它 存储q的原来状态。

​	在always语句内部使用<=(非阻塞赋值)而不是assign

​		![image-20230521164555155](https://gitee.com/ephtiny/image/raw/master/img/202305211645231.png)

​	always语句可以用来指明触发器、锁存器或组合逻 辑，这取决于敏感表和语句。但也由于这一灵活 性，使它很容易因硫忽而生成错误的硬件，为此 SystemVerilog引入了always_ff、always_latch 和always comb来减少出现这些常见错误的风 险。always_ff的行为类似于always,但它专门 用来指明敏发器，并且能使工具在被用来指明任何其他东西时就发出警告。

![image-20230521164701800](https://gitee.com/ephtiny/image/raw/master/img/202305211647893.png)

- 在SystemVerilog的always语句中，信号一直保持它们原来的值直到 一个直接引起它们变化的事件发生。因此，这样的代码连同合适的敏感表可以用来描述带存锗器的时序电路。例如，触发器在敏感表中只包括clk,它存储着原来的q值直到clk的下一个上 升沿，即使在此中间d发生变化时也是如此。 
- 在SyatemVerilog的连续赋值语句中，当任何时候语句右边的任何输入发生变化时，它们就重新求值。因此，这样的代码必须描述组合逻辑。

### A.4.2 可复位寄存器

​	当模拟刚开始或电源首次被应用到一个电路时，触发器的输出是未知的。它在SystemVerilog 中用x表示

​	同步复位发生在时钟上升沿处，而异步复位立即发生。

#### 例A.21 可复位寄存器

​	同步复位需要较少的晶体管数目并能减少在复位的尾部边沿处出现时序问题的风险，但如 果采用时钟门控，那么必须注意使所有的触发器在启动时正确复位。

```systemverilog
module flopr(input	logic	 	clk,
             input	logic	 	reset,
             input	logic [3:0]	d,
             output	logic [3:0]	q);
    
    //同步复位
    always_ff @(posedge clk)
        if (reset) q <= 4'b0;
    	else	  q <= d;
endmodule

module flopr(input	logic	 	clk,
             input	logic	 	reset,
             input	logic [3:0]	d,
             output	logic [3:0]	q);
    
    //异步复位
    always_ff @(posedge clk, posedge reset)
        if (reset) q <= 4'b0;
    	else	  q <= d;
endmodule
```

- 在always语句教感表中的多个信号之间用**逗号**或字**or**隔开

![image-20230521213900345](https://gitee.com/ephtiny/image/raw/master/img/202305212139459.png)

### A.4.3 使能寄存器

​	使能寄存器(enahled register)只有当使能(erahle)信号有效时才对时钟做出响应

#### 例A.22 可复位使能寄存器

​	同步可复位的使能寄存器，它在reset和en信号都为假(FALSE)时将保持它原来的值。

```systemverilog
module flopenr(input  logic 	  clk. 
               input  logic 	  reset,
               input  logic 	  en, 
               input  logic [3:0] d, 
               output logic [3:0] q);
    
	//同步复位 
    always_ff @(posedge clk) 
        if 		(reset) q <= 4'b0: 
        else if  (en)    g <= d;
endmodule
```

![image-20230521214508031](https://gitee.com/ephtiny/image/raw/master/img/202305212145165.png)

### A.4.4 多个寄存器

#### 例A.23 同步器

​	由两个前后直接串联在一起的触发器构成

```systemverilog
module sync(input	logic clk,
            input	logic d,
            output	logic q);
    
    logic n1;
   
    always_ff @(posedge clk)
        begin
            n1 <= d;
            q  <= n1;
        end
endmodule
```

![image-20230521215221166](https://gitee.com/ephtiny/image/raw/master/img/202305212152214.png)

​	在clk的上升沿，d复制到n1,与此同时n1复制到q.

### A.4.5 锁存器

#### 例A.24 D锁存器

​	D锁存器在时钟为高电平(HIGH)时透明从而允许数据从输入流至输出；它在时钟为低电平(LOW)时不透明，因而保持它原来的状态。

```systemverilog
module latch(input	logic	    clk,
             input	logic [3:0] d,
             output	logic [3:0] q);
    
    always_latch
        if (clk) q <= d;
endmodule
```

​	always_latch等价于alwayse(clk,d)并且是SystemVerilog中描述锁存器的优先方式。**锁存器在每当clk或d变化时求值**。

​	==如果clk为 高电平(HIGH),d将一直流至q,因此这一代码 描述的是正电平灵敏锁存器，否则q将保持它原来的值==

![image-20230521215626680](https://gitee.com/ephtiny/image/raw/master/img/202305212156749.png)

### A.4.6 计数器

​	 有两种方式描述带同步复位的4位计数器。

#### 例A.25 计数器(行为级风格)

​	第一种方法(行为级)表示为包含一个4位寄存器和一个加法器的时序电路

```systemverilog
module counter(input	logic		clk,
               input	logic		reset,
               output	logic  [3:0] q);
    
    always_ff @(posedge clk)
        if (reset)	q <= 4'b0;
    	else	   q <= q+1
```

![image-20230521220118075](https://gitee.com/ephtiny/image/raw/master/img/202305212201135.png)

#### 例A.26 计数器(结构级风格)

​	第二种方法(结构级)直接说明寄存器和加法器模块

```systemverilog
module counter(input	logic		clk,
               input	logic		reset,
               output	logic  [3:0] q);
    
    logic  [3:0] nextq;
    
    flopr qflop(clk, reset, nextq, q);
    adder inc(q, 4'b0001, nextq);
endmodule
```

![image-20230521220401504](https://gitee.com/ephtiny/image/raw/master/img/202305212204561.png)

### A.4.7 移位寄存器

#### 例A.27 带并行装载的移位寄存器

```systemverilog
module shiftreg(input	logic		clk,
                input	logic		reset, load, 
                input 	logic		sin,
                input	logic  [3:0] d,
                output	logic  [3:0] q,
                output	logic		sout);
    
    always_ff @(posedge clk)
        if (reset)		q <= 0;
    	else if (load)	q <= d;
    	else			q <= {q[2:0], sin};	
    
    assign sout = q[3];
endmodule
```

![image-20230521220920005](https://gitee.com/ephtiny/image/raw/master/img/202305212209065.png)

# 实例

## 自动售货机

参考：[【FPGA入门八】自动售货机_补全程序实现自动投币售货机功能_机智的橙子的博客-CSDN博客](https://blog.csdn.net/qq_45659777/article/details/124516260)

只售卖2.5饮料的屑售货机

### 思路

售货机八状态：

- 1：用户投币总数为0，也是初始状态，此时数码管显示0.0
  ①当用户选择投币0.5，跳转到第2个状态
  ②当用户选择投币1，跳转到第3个状态
- 2：用户投币总数为0.5，数码管显示0.5
  ①当用户选择投币0.5，跳转到第3个状态
  ②当用户选择投币1，跳转到第4个状态
  ③当用户取消，跳转到第8个状态，同时开始计时
- 3：用户投币总数为1，数码管显示1.0
  ①当用户选择投币0.5，跳转到第4个状态
  ②当用户选择投币1，跳转到第5个状态
  ③当用户取消，跳转到第8个状态，同时开始计时
- 4：用户投币总数为1.5，数码管显示1.5
  ①当用户选择投币0.5，跳转到第5个状态
  ②当用户选择投币1，跳转到第6个状态，同时开始计时
  ③当用户取消，跳转到第8个状态，同时开始计时
- 5：用户投币总数为2.0，数码管显示2.0
  ①当用户选择投币0.5，跳转到第6个状态，同时开始计时
  ②当用户选择投币1，跳转到第7个状态，同时开始计时
  ③当用户取消，跳转到第8个状态，同时开始计时
- 6：用户投币总数为2.5，数码管显示2.5
  ①该状态保持2s后结束计时、
- 7：用户投币总数为3，数码管显示3.0
  ①该状态保持2s后结束计时
- 8：用户取消订，数码管显示0.0
  ①该状态保持2s后结束计时

### 代码部分（Verilog）

#### 按键消抖模块

​	在模块中，定义了20ms的延迟计数器，当检测到按键值发生变化时，开始计时20ms，20ms后认为按键已经稳定，输出消抖后的按键值和消抖标志信号。同时，将上一个状态的按键值保存在寄存器key_reg中，用于判断当前按键状态是否稳定。模块中包括时钟和复位信号，并且支持同步复位和异步复位。

##### 定义输入输出

```verilog
module key_debounce(
	input 	wire	clk,
	input 	wire 	rst_n,
	input 	wire 	key,
	
	output 	reg 	flag,// 0抖动, 1抖动结束
	output 	reg	key_value//key抖动结束后的值
);
 
...

endmodule
```

​	这里定义了模块名为key_debounce，输入**时钟信号clk**、**复位信号rst_n**和**按键信号key**，输出**抖动标志信号flag**和**稳定后的按键值key_value**。

- **`wire`**：Verilog中的**连线数据类型**，用于表示不带状态的信号

  wire类型的信号只能用于连接模块中的I/O端口或者连接两个模块的端口，不能直接用于存储数据

  wire类型的信号可以有多个驱动源，但是所有的驱动源必须是用assign语句来赋值的

- **`reg`**：Verilog中的**寄存器数据类型**，用于表示带状态的信号

  reg类型的信号可以用于存储数据，也可以用于连接模块中的I/O端口或者连接两个模块的端口

  reg类型的信号只能有一个驱动源，驱动源可以是一个always块或者initial块

  reg类型的信号可以使用赋值语句、always块、initial块来进行赋值

##### 定义延迟计数器和寄存器

```verilog
//定义20ms延迟计数器,0.2s,1_000_000次
reg [19:0] delay_cnt;

//寄存依次key的值用来判断按键是否消抖成功
reg key_reg;
```

​	这里定义了**20位的延迟计数器delay_cnt**和一个**用来保存上一次的按键状态的寄存器key_reg**。

##### 设置延时计数器

```verilog
//20ms延时计数器
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		begin
			key_reg <= 1'b1;                        //复位信号，设置按键无效
			delay_cnt <= 1'b0;                      //计数器设置为0
		end
	else
		begin
			key_reg <= key; 
			if(key_reg == 1 && key == 0)            //当这一次key值和上一次key值不一样，证明正在抖动
				delay_cnt <= 20'd1_000_000;          //延迟时间20ms
			else if(delay_cnt > 0)
				delay_cnt <= delay_cnt - 1;          //没有抖动，开始20ms倒计时
			else
				delay_cnt <= 1'b0;                  
		end
end
```

​	这里使用always块来实现按键消抖的功能。当复位信号rst_n为0时（按下复位键，rst_n输出0），将key_reg设置为1表示按键无效，将delay_cnt设置为0。当rst_n为1时，将key_reg设置为当前按键值key，如果当前按键状态和上一次不同，说明正在抖动，将delay_cnt计数器设置为20'd1_000_000，即20ms。如果delay_cnt大于0，说明正在倒计时，将其减1，否则将其设置为0。

- **`always@(posedge clk or negedge rst_n)`**：always块的敏感列表，==表示在时钟上升沿或者复位信号下降沿时执行always块==。其中clk为输入的时钟信号，rst_n为复位信号。
- `if(!rst_n)`：如果**复位信号为低电平**，即**rst_n等于0**，执行以下操作：
     - **`key_reg <= 1'b1;`**：==将key_reg寄存器的值设置为1，表示按键无效==。
     - **delay_cnt <= 1'b0;**：==将delay_cnt寄存器的值设置为0，表示计数器清零==。
- `else`：如果**复位信号为高电平**，即**rst_n等于1**，执行以下操作：
     - **key_reg <= key;**：==将key_reg寄存器的值设置为输入的按键信号key，表示记录当前按键的状态==。
     - `if(**key_reg == 1 && key == 0**)`：**如果这一次key值为1，上一次key值为0**，即当前按键被按下且之前未被按下，表示按键正在抖动，执行以下操作：
       - **`delay_cnt <= 20'd1_000_000;`**：==将delay_cnt寄存器的值设置为20ms的计数值，即开始20ms的延迟时间==。
     - `else if(**delay_cnt > 0**)`：如果**没有抖动**，执行以下操作：
       - **`delay_cnt <= delay_cnt - 1;`**：==将delay_cnt寄存器的值减1，即开始20ms的倒计时==。
     - `else`：如果**20ms的倒计时已经结束**，执行以下操作：
       - **`delay_cnt <= 1'b0;`**：==将delay_cnt寄存器的值设置为0，表示计数器清零==。

##### 根据延时计数器获取按键状态以及按键值

```verilog
//根据延时计数器获取按键状态以及按键值
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		begin
		   flag <= 1'b0;                               //复位信号，设置信号标志为抖动
			key_value <= 1'b1;                          //设置抽样值为1
		end
	else
		begin
			if(delay_cnt == 20'd1)                      //倒计时1_000_000到1
				begin
					flag <= 1'b1;
					key_value <= key;                     //稳定20ms后将key值给到key_value
				end
			else	
				begin
					flag <= 1'b0;
					key_value <= key_value;               //20ms内先不取样
				end
		end
end
```

​	这里也使用always块来实现按键消抖的功能。当复位信号rst_n为0时，将flag设置为0表示正在抖动，将key_value设置为1表示抽样值为1。当rst_n为1时，如果delay_cnt计数器倒计时到1时，将flag设置为1表示按键已经稳定，将key_value设置为当前按键值key，否则将flag设置为0，表示正在抖动，同时将key_value设置为上一次的值，即20ms内先不取样。

- `always@(posedge clk or negedge rst_n)`：always块的敏感列表，表示在时钟上升沿或者复位信号下降沿时执行always块。其中clk为输入的时钟信号，rst_n为复位信号。
- `if(!rst_n)`：如果**复位信号为低电平**，即**rst_n等于0**，执行以下操作：
     - **`flag <= 1'b0;`**：==将flag寄存器的值设置为0，表示抖动==。
     - **`key_value <= 1'b1;`**：==将key_value寄存器的值设置为1，表示抽样值为1==。
- `else`：如果**复位信号为高电平**，即**rst_n等于1**，执行以下操作：
     - `if(delay_cnt == 20'd1)`：**如果20ms倒计时已经结束，即delay_cnt计数器的值等于20'd1**，执行以下操作：
       - **`flag <= 1'b1;`**：==将flag寄存器的值设置为1，表示稳定==。
       - **`key_value <= key;`**：==将key值赋值给key_value寄存器的值，表示获取稳定后的按键值==。
     - `else`：**如果20ms倒计时还未结束**，执行以下操作：
       - **`flag <= 1'b0;`**：==将flag寄存器的值设置为0，表示抖动==。
       - **`key_value <= key_value;`**：==将key_value寄存器的值保持不变，表示20ms内先不取样==。

​	1'b1中前一个1代表着位宽为1；后一个1代表着数值1；中间的b代表着进制为2进制（d为10进制）

##### 总代码

key_debounce.v

```Verilog
module key_debounce(
	input  wire  clk,
	input  wire  rst_n,
	input  wire  key,
	
	output reg   flag,               //判断抖动是否消除的标志信号，0为抖动，1为抖动结束
	output reg   key_value           //消抖后稳定的按键值给到蜂鸣器模块
);

//定义20ms延迟计数器,0.2s,1_000_000次
reg [19:0] delay_cnt;

//寄存依次key的值用来判断按键是否消抖成功
reg key_reg;



//20ms延时计数器
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		begin
			key_reg <= 1'b1;                        //复位信号，设置按键无效
			delay_cnt <= 1'b0;                      //计数器设置为0
		end
	else
		begin
			key_reg <= key; 
			if(key_reg == 1 && key == 0)            //当这一次key值和上一次key值不一样，证明正在抖动
				delay_cnt <= 20'd1_000_000;          //延迟时间20ms
			else if(delay_cnt > 0)
				delay_cnt <= delay_cnt - 1;          //没有抖动，开始20ms倒计时
			else
				delay_cnt <= 1'b0;                  
		end
end


//根据延时计数器获取按键状态以及按键值
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		begin
		   flag <= 1'b0;                               //复位信号，设置信号标志为抖动
			key_value <= 1'b1;                          //设置抽样值为1
		end
	else
		begin
			if(delay_cnt == 20'd1)                      //倒计时1_000_000到1
				begin
					flag <= 1'b1;
					key_value <= key;                     //稳定20ms后将key值给到key_value
				end
			else	
				begin
					flag <= 1'b0;
					key_value <= key_value;               //20ms内先不取样
				end
		end
end

endmodule
```



#### 数码管位选驱动模块

​	该模块包括了一个20us的计时器和一个状态切换计数器，以及一个用于控制位选信号的模块。该模块的主要作用是在输入boot_flag为1时，控制输出sel_r的位选信号在6'b111_110和6'b111_101之间切换，以实现数码管的显示效果。

##### 定义输入输出

```Verilog
module sel_drive(
	input wire clk,
	input wire rst_n,
	input wire  boot_flag,
	
	output wire [5:0] sel
);
...
endmodule
```

​	这里定义了模块名为sel_drive，输入**时钟信号clk**、**复位信号rst_n**和**开机标志位boot_flag**，输出**位选信号sel**。

##### 定义一些内部变量与常量参数

```verilog
parameter MAX_NUM = 10'd999;//20us
reg [5:0] sel_r;
reg [9:0] cnt;
reg sel_flag;
```

- **`MAX_NUM`**：参数，表示计时器的最大计数值，**用于计时 20us**。
- **`sel_r`**：6 位宽度的位选信号寄存器，**用于存储位选信号**。
- **`cnt`**：10 位宽度的计时器计数器，**用于计时 20us**。
- **`sel_flag`**：状态切换计数器的标志位，**用于控制状态转换的时间**。

​	**`parameter`**用于定义常量

​	`MAX_NUM` 的值为 999，可以用于计算出每次计时 20us 所需的时钟周期数。`sel_r` 和 `cnt` 都是寄存器类型的变量，需要在模块的 always 块中进行赋值和更新。`sel_flag` 是一个单比特的标志位，需要在模块中进行逻辑运算和控制。

##### 设置20us的计时器

```verilog
//20us计时器
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		cnt <= 10'd0;
	end
	else if(cnt == MAX_NUM)begin
		cnt <= 10'd0;
	end
	else begin
		cnt <= cnt + 1'd1;
	end
end
```

- **当 `rst_n` 为低电平时**，==计时器的计数器 `cnt` 被清零==。
- **当 `cnt` 的值等于 `MAX_NUM` 时**（也就是计时器计数达到 20us），==计数器 `cnt` 被重新赋值为 0==。
- **否则**，==计数器 `cnt` 的值**每次加 1**==。

##### 状态切换计数器

```Verilog
//状态切换计数器模块 
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		sel_flag <= 1'b0;
	else if(cnt == MAX_NUM)
		sel_flag <= ~sel_flag;      
	else
		sel_flag <= sel_flag;
end 
```

- **当 `rst_n` 为低电平时**，==状态切换计数器的标志位 `sel_flag` 被赋值为 0==。
- **当计时器计数器 `cnt` 的值等于 `MAX_NUM` 时**（也就是计时器计数达到 20us），==状态切换计数器的标志位 `sel_flag` 被取反操作==。
- **否则**，==状态切换计数器的标志位 `sel_flag` **不发生变化**==。

##### 位选信号切换

```Verilog
//位选信号切换功能
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		sel_r <= 6'b111_111;
	end
	else begin
		case(boot_flag)
			1'b0:begin //关机状态
				sel_r <= 6'b111_111;
			end
			1'b1:begin //开机状态
				case(sel_flag)
					1'b0: sel_r <= 6'b111_110;
					1'b1: sel_r <= 6'b111_101;
					default:sel_r <= sel_r;
				endcase
			end
		endcase
	end
end

assign sel = sel_r;
```

- **当 `rst_n` 为低电平时**，==位选信号 `sel_r` 被赋值为全 1==。
- **当 `boot_flag` 为 0（关机状态）时**，==位选信号 `sel_r` 也被赋值为全 1==。
- **当 `boot_flag` 为 1（开机状态）时**，根据 `sel_flag` 的值来切换位选信号 `sel_r` 的值。
  - **当 `sel_flag` 为 0 时**，==`sel_r` 的第 1 位被设为 0==；
  - **当 `sel_flag` 为 1 时**，==`sel_r` 的第 2 位被设为 0==；
  - **当 `sel_flag` 为其他时**，==`sel_r` 不变==；

​	最后将输出的位选信号 `sel` 等于 `sel_r`

##### 总代码

sel_drive.v

```Verilog
module sel_drive(
	input wire clk,
	input wire rst_n,
	input wire  boot_flag,
	
	output wire [5:0] sel
);
parameter MAX_NUM = 10'd999;//20us
reg [5:0] sel_r;
reg [9:0] cnt;
reg sel_flag;

//20us计时器
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		cnt <= 10'd0;
	end
	else if(cnt == MAX_NUM)begin
		cnt <= 10'd0;
	end
	else begin
		cnt <= cnt + 1'd1;
	end
end

//状态切换计数器模块 
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		sel_flag <= 1'b0;
	else if(cnt == MAX_NUM)
		sel_flag <= ~sel_flag;      
	else
		sel_flag <= sel_flag;
end 


//位选信号切换功能
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		sel_r <= 6'b111_111;
	end
	else begin
		case(boot_flag)
			1'b0:begin //关机状态
				sel_r <= 6'b111_111;
			end
			1'b1:begin //开机状态
				case(sel_flag)
					1'b0: sel_r <= 6'b111_110;
					1'b1: sel_r <= 6'b111_101;
					default:sel_r <= sel_r;
				endcase
			end
		endcase
	end
end

assign sel = sel_r;

endmodule
```



#### 数码管显示模块

​	该模块将一个4位数字和一个1位小数点的位置作为输入，然后根据输入的数字和小数点位置，在数码管上显示相应的数字和小数点。

##### 定义输入输出

```Verilog
module seg_scan(
	input wire clk,
	input wire rst_n,
	input wire [3:0] money_flag,//用户投币标识
	input wire [5:0] sel,//位选信号
	
	output wire [7:0] seg//段选信号
);
...
endmodule
```

​	这里定义了模块名为seg_scan，输入**时钟信号clk**、**复位信号rst_n**、**用户投币标识boot_flag**和**位选信号sel**，输出**段选信号seg**。

- **`clk`**：时钟输入端口，**用于触发数码管的扫描操作**。
- **`rst_n`**：异步复位输入端口，**用于将数码管的状态复位为初始状态**。
- **`money_flag`**：用户投币标识输入端口，**用于根据不同的投币情况选择不同的显示内容**。
- **`sel`**：位选信号输入端口，**用于选择并控制需要显示的数码管**。
- **`seg`**：段选信号输出端口，**用于输出控制数码管段的信号**。

##### 定义寄存器

```Verilog
reg [3:0] number;
reg [7:0] seg_r;

reg flag;//标识当前显示的数字是否是小数点后面的值 1：是 0：不是
```

- **`number`**：一个4位二进制数，**用于存储待显示的数字**。

- **`seg_r`**：一个8位二进制数，**用于控制七段数码管的显示**。

- **`flag`**：一个1位二进制数，**用于标识当前显示的数字是否是小数点后面的值**。

  ​	如果`flag`为1，则表示当前数字是小数点后面的值，需要在数码管右上角显示小数点。如果`flag`为0，则表示当前数字不是小数点后面的值，不需要显示小数点。

##### 得到需要显示的数字

```verilog
//根据用户投币标识的不同显示不同的数字
always@(*)begin
	case(money_flag)
		4'd0:begin//显示0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;//第二个零不带小数点
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;//第一个零带小数点
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd1:begin//显示0.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd2:begin//显示1.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd1;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd3:begin//显示1.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd1;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd4:begin//显示2.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd2;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd5:begin//显示2.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd2;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd6:begin//显示3.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd3;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd7:begin//显示0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		default:begin//显示0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
	endcase
end
```

- **当 `money_flag` 为0时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为0==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为0==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为1时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为5==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为0==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为2时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为0==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为1==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为3时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为5==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为1==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为4时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为0==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为2==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为5时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为5==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为2==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为6时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为0==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为3==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为7时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为0==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为0==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==
- **当 `money_flag` 为其他时**
  - **当 `sel` 为 `6'b111_110` 时**，==number为0==，==flag为0==；即第二位数字==为0==，且==不带小数点==
  - **当 `sel` 为 `6'b111_101` 时**，==number为0==，==flag为0==；即第一位数字==为0==，且==带小数点==
  - **当 `sel` 为其他时**，==number为0==，==flag为0==；即该位数字==为0==，且==不带小数点==

##### 数码管数值显示

```Verilog
always@(*)begin
	case(number)
		4'd0   :	begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0100_0000;//数码管显示0 带小数点
						end
						else begin
							seg_r = 8'b1100_0000;//数码管显示0 不带小数点
						end
					end
		4'd1   :	begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0111_1001;//数码管显示1 带小数点
						end
						else begin
							seg_r = 8'b1111_1001;//数码管显示1 不带小数点
						end
					end
		4'd2   : begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0010_0100;//数码管显示2 带小数点
						end
						else begin
							seg_r = 8'b1010_0100;//数码管显示2 不带小数点
						end
					end
		4'd3   : begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0011_0000;//数码管显示3 带小数点
						end
						else begin
							seg_r = 8'b1011_0000;//数码管显示3 不带小数点
						end
					end
		4'd5   : begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0001_0010;//数码管显示5 带小数点
						end
						else begin
							seg_r = 8'b1001_0010;//数码管显示5 不带小数点
						end
					end
		default:	begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0100_0000;//数码管显示0 带小数点
						end
						else begin
							seg_r = 8'b1100_0000;//数码管显示0 不带小数点
						end
					end
	endcase
end


assign seg = seg_r;
```

根据输入的`number`和`flag`值，输出相应的数码管显示。

- **`number`**表示**要显示的数字**；
- **`flag`为1时** 表示要**显示小数点**，**为0时** **不显示小数点**。

将输出信号`seg_r`赋值给数码管端口`seg`，从而实现数码管的显示。

##### 总代码

seg_scan.v

```Verilog
module seg_scan(
	input wire clk,
	input wire rst_n,
	input wire [3:0] money_flag,//用户投币标识
	input wire [5:0] sel,//位选信号
	
	output wire [7:0] seg//段选信号
);

reg [3:0] number;
reg [7:0] seg_r;

reg flag;//标识当前显示的数字是否是小数点后面的值 1：是 0：不是

//根据用户投币标识的不同显示不同的数字
always@(*)begin
	case(money_flag)
		4'd0:begin//显示0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;//第二个零不带小数点
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;//第一个零带小数点
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd1:begin//显示0.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd2:begin//显示1.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd1;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd3:begin//显示1.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd1;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd4:begin//显示2.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd2;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd5:begin//显示2.5
			case(sel)
				6'b111_110: begin
									number = 4'd5;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd2;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd6:begin//显示3.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd3;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		4'd7:begin//显示0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
		default:begin//显示0.0
			case(sel)
				6'b111_110: begin
									number = 4'd0;
									flag = 1'b0;
								end
				6'b111_101: begin
									number = 4'd0;
									flag = 1'b1;
								end
				default   : begin
									number = 4'd0;
									flag = 1'b0;
								end
			endcase
		end
	endcase
end


always@(*)begin
	case(number)
		4'd0   :	begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0100_0000;//数码管显示0 带小数点
						end
						else begin
							seg_r = 8'b1100_0000;//数码管显示0 不带小数点
						end
					end
		4'd1   :	begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0111_1001;//数码管显示1 带小数点
						end
						else begin
							seg_r = 8'b1111_1001;//数码管显示1 不带小数点
						end
					end
		4'd2   : begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0010_0100;//数码管显示2 带小数点
						end
						else begin
							seg_r = 8'b1010_0100;//数码管显示2 不带小数点
						end
					end
		4'd3   : begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0011_0000;//数码管显示3 带小数点
						end
						else begin
							seg_r = 8'b1011_0000;//数码管显示3 不带小数点
						end
					end
		4'd5   : begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0001_0010;//数码管显示5 带小数点
						end
						else begin
							seg_r = 8'b1001_0010;//数码管显示5 不带小数点
						end
					end
		default:	begin 
						if(flag == 1'b1)begin//显示小数点
							seg_r = 8'b0100_0000;//数码管显示0 带小数点
						end
						else begin
							seg_r = 8'b1100_0000;//数码管显示0 不带小数点
						end
					end
	endcase
end


assign seg = seg_r;

endmodule
```



#### 售货机购物模块

##### 定义输入输出

```Verilog
module vending_machine(
	input  wire 		 clk,//时钟
	input  wire 		 rst_n,//复位
	input        [3:0] key_value,//按键值
	input        [3:0] flag,
	
	output reg        beep,
	output reg   [3:0] led,
	output wire   [3:0] money_flag_w,
	output wire  boot_flag_w
);
```

​	这里定义了模块名为vending_machine，输入**时钟信号clk**、**复位信号rst_n**、**按键值key_value**和**标志位flag**，输出**蜂鸣器信号beep**、**LED灯信号led**、**金额标志位money_flag_w**和**启动标志位boot_flag_w**。

- **`beep`**信号用于**控制售货机蜂鸣器的开关**；
- **`led`**信号用于**控制售货机LED灯的显示**；
- **`money_flag_w`**信号用于**控制金额标志位的输出**，金额标志位==用于在数码管上显示输入的金额==；
- **`boot_flag_w`**信号用于**控制启动标志位的输出**，启动标志位==用于在数码管上显示启动状态==。

##### 定义常数与状态计数器

```verilog
parameter MAX_NUM = 9_999_999;//定义最大计时0.2s  LED灯闪烁间隔
parameter MAX_NUM2 = 10;//2s计数基于0.2s

//定义状态计数器，4个灯4个状态
reg [1:0] led_flag; 

reg boot_flag;                   //标识售货机是否处于开机状态 0：关机 1：开机

reg [3:0] money_flag;//用户投币的状态有8种 分别是0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 退货的0

reg [23:0] cnt = 0;             //计时器赋初值为0

reg [26:0] cnt_1 = 0;             //计时器赋初值为0

reg time_flag;//开始计时标记 1:开始计时 0:不开始
```

- **`MAX_NUM`**：表示**计时器的最大值**；

- **`MAX_NUM2`**：表示**2秒计数基于0.2秒计数的最大值**。

- **`led_flag`**：一个2位宽的寄存器，**用于记录LED灯的状态**，共有4种状态。

- **`boot_flag`**：一个1位宽的寄存器，**用于记录售货机的状态**，0表示关机，1表示开机。

- **`money_flag`**：一个4位宽的寄存器，**用于记录用户投币的状态**，共有8种状态，分别是0元、0.5元、1元、1.5元、2元、2.5元、3元、3.5元和退货的0元。

- **`cnt`**和**`cnt_1`**是两个计时器，分别是24位宽和27位宽的寄存器。

  - **`cnt`**用于**计算0.2秒的时间**

  - **`cnt_1`**用于**计算2秒的时间**

    在模块运行时，这两个计时器会不断递增

- **`time_flag`**是一个1位宽的寄存器，**用于记录是否开始计时**。如果`time_flag`为1，则计时器开始计时，否则不计时。

##### 0.2s计数器

```Verilog
//0.2s计数器模块
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cnt <= 1'b0;               //按下复位键，清零
	else if(cnt == MAX_NUM)          //计时器达到最大值，清零重新计数
      cnt <= 1'b0;
	else
		cnt <= cnt + 1'b1;         
end
```

- 如果复位信号`rst_n`为0，表示按下了复位键，计数器的值会被清零（赋值为1'b0）；
- 如果计数器的值已经达到最大值（`MAX_NUM`），则计数器的值会被重新赋值为1'b0，从0开始重新计数；
- 如果以上两种情况均不满足，则计数器的值会加1（使用计数器本身加1'b1实现）。

##### 2s计数器

```Verilog
//2s计数器模块
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cnt_1 <= 1'b0;               //按下复位键，清零
	else if(time_flag == 1)begin//开始计时
		if(cnt == MAX_NUM)begin
			if(cnt_1 <MAX_NUM2)begin
				cnt_1 <= cnt_1 + 1'b1;
			end
			else begin
				cnt_1 <= 1'b0;//cnt_1计数达到最大就清空
			end
		end
		else begin
			cnt_1 <= cnt_1;//其余时间保持
		end
	end
	else begin
		cnt_1 <= 1'b0;//不计时，cnt_1清空
	end
end
```

​	借用0.2s计数器实现的2s计数器：每经过10次0.2秒计数，`cnt_1`的值加1，即实现了2秒计数。

- 如果复位信号`rst_n`为0，表示按下了复位键，计数器的值会被清零（赋值为1'b0）。 
- 如果`time_flag`为1，表示开始计时，计数器就会开始工作。
  - 当0.2秒的计数器（`cnt`）达到最大值（`MAX_NUM`）时，计数器`cnt_1`会加1。
  - 当`cnt_1`达到最大值（`MAX_NUM2`）时，计数器`cnt_1`会被清零。
  - 如果`cnt`未达到最大值，则`cnt_1`的值不变。

- 如果`time_flag`为0，表示不计时，计数器`cnt_1`会被清零。

##### led状态切换计数器

```Verilog
//状态切换计数器模块 led_flag的状态基于0.2s
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		led_flag <= 1'b0;
	else if(cnt == MAX_NUM)
		led_flag <= led_flag + 1'b1;      //超出宽度截取低两位
	else
		led_flag <= led_flag;
end 
```

​	由于`led_flag`是**2位宽的寄存器**，所以当其值**超过3时**，会**截取低两位**，即`led_flag`的值会**从11变为00**，==重新开始计数==。

​	借用0.2s计数器：==每经过0.2秒，`led_flag`的值加1==

##### 开关状态控制

```Verilog
//售货机开关机状态控制 key4
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin  
			boot_flag <= 1'b0;                 //初始状态关机中
			beep <= 1'b0;//关机状态，蜂鸣器响 
	end
	else if(flag[3] == 1'b1 && key_value[3] == 1'b0)begin//当按键key4按下时，售货机开关机状态取反
			boot_flag <= ~boot_flag;
			beep <= ~beep;//当开机状态时蜂鸣器停止
		end
	else begin
		boot_flag <= boot_flag;//其余情况售货机开关机状态保持
		beep <= beep;//蜂鸣器状态保持
	end
end


assign boot_flag_w = boot_flag;
```

- 如果复位信号`rst_n`为0，表示售货机初始状态为关机状态，`boot_flag`被赋值为1'b0，蜂鸣器`beep`被赋值为1'b0。
- 如果按键`key4`被按下（`flag[3]`为1'b1且`key_value[3]`为1'b0），则售货机开关机状态取反，即从关机状态变为开机状态，或从开机状态变为关机状态。同时，蜂鸣器的状态也取反（当开机状态时蜂鸣器停止）。
- 如果以上两种情况均不满足，则售货机开关机状态和蜂鸣器状态均保持不变。

##### 投币购买

```verilog
//当投入人民币购买功能
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		money_flag <= 4'd0;//初始用户投币为0
	end
	else if(boot_flag)begin//只有当售货机是开机状态才可以购买
		case(money_flag)
			4'd0:begin//用户投币为0的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd1;//记下第二个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd2;//记下第三个状态
				end
//				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
//					money_flag <= 4'd7;//记下第八个状态
//					time_flag <= 1'b1;//开始计时
//				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd1:begin//用户投币为0.5的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd2;//记下第三个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd3;//记下第四个状态
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
				money_flag <= 4'd7;//记下第八个状态
				time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd2:begin//用户投币为1的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd3;//记下第四个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd4;//记下第五个状态
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
					money_flag <= 4'd7;//记下第八个状态
					time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd3:begin//用户投币为1.5的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd4;//记下第五个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd5;//记下第六个状态
					time_flag <= 1'b1;//开始计时
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
					money_flag <= 4'd7;//记下第八个状态
					time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd4:begin//用户投币为2的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd5;//记下第六个状态
					time_flag <= 1'b1;//开始计时
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd6;//记下第七个状态
					time_flag <= 1'b1;//开始计时
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
					money_flag <= 4'd7;//记下第八个状态
					time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd5:begin//用户投币为2.5的情况下 保持2s
				if(cnt_1 == MAX_NUM2)begin
					money_flag <= 4'd0;//返回第一种状态
					time_flag <= 1'b0;//结束计时
				end
				else begin
					money_flag <= money_flag;
				end
			end
			4'd6:begin//用户投币为3的情况下 保持2s
				if(cnt_1 == MAX_NUM2)begin
					money_flag <= 4'd0;//返回第一种状态
					time_flag <= 1'b0;//结束计时
				end
				else begin
					money_flag <= money_flag;
				end
			end
			4'd7:begin//用户退货的情况下 保持2s
				if(cnt_1 == MAX_NUM2)begin
					money_flag <= 4'd0;//返回第一种状态
					time_flag <= 1'b0;//结束计时
				end
				else begin
					money_flag <= money_flag;
				end
			end
		endcase
	end
	else begin
		money_flag <= 4'd0;
	end
end
```



##### led控制

```verilog
//led控制模块
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		led <= 4'b0000;
	else if(money_flag == 4'd5)begin//2.5块购买成功不找零  闪烁
			case(led_flag)
				2'b00  :led <= 4'b1111;
				2'b01  :led <= 4'b0000;
				2'b10  :led <= 4'b1111;
				2'b11  :led <= 4'b0000;
				default:led <= 4'b1111;
			endcase
	end
	else if(money_flag == 4'd6)begin//3块购买成功找零  流水灯
			case(led_flag)
				2'b00  :led <= 4'b1000;
				2'b01  :led <= 4'b0100;
				2'b10  :led <= 4'b0010;
				2'b11  :led <= 4'b0001;
				default:led <= 4'b1000;
			endcase
	end
	else if(money_flag == 4'd7)begin//退货 跑马灯（蜂鸣器）
			case(led_flag)
				2'b00  :led <= 4'b1000;
				2'b01  :led <= 4'b1100;
				2'b10  :led <= 4'b1110;
				2'b11  :led <= 4'b1111;
				default:led <= 4'b1000;
			endcase
	end
	else
		led <= 4'b0000;//其余情况led不亮
end


assign money_flag_w = money_flag;
```

- 如果复位信号`rst_n`为0，表示LED初始状态为熄灭，`led`被赋值为4'b0000。
- 当`money_flag`的值为5时（即2.5元购买成功不找零），LED会以0.4秒为一个周期闪烁，即`led_flag`每经过两次状态切换计数器就会改变一次，LED状态也会改变一次。当`led_flag`为2'b00或2'b10时，LED亮起，为4'b1111；当`led_flag`为2'b01或2'b11时，LED熄灭，为4'b0000。
- 当`money_flag`的值为6时（即3元购买成功找零），LED会以0.8秒为一个周期进行流水灯的效果，即每0.2秒，LED的状态会向左移一位。当`led_flag`为2'b00时，LED亮起最左边的灯，为4'b1000；当`led_flag`为2'b01时，LED亮起左二的灯，为4'b0100；当`led_flag`为2'b10时，LED亮起左三的灯，为4'b0010；当`led_flag`为2'b11时，LED亮起最右边的灯，为4'b0001。
- 当`money_flag`的值为7时（即退货），LED会以0.8秒为一个周期进行跑马灯的效果，即每0.2秒，LED的状态会从右向左移动一位。当`led_flag`为2'b00时，LED亮起最左边的灯，为4'b1000；当`led_flag`为2'b01时，LED亮起左边两个灯，为4'b1100；当`led_flag`为2'b10时，LED亮起左边三个灯，为4'b1110；当`led_flag`为2'b11时，LED亮起所有的灯，为4'b1111。
- 在以上三种情况均不满足时，LED不亮，为4'b0000。

##### 总代码

vending_machine.v

```Verilog
module vending_machine(
	input  wire 		 clk,//时钟
	input  wire 		 rst_n,//复位
	input        [3:0] key_value,//按键值
	input        [3:0] flag,
	
	output reg        beep,
	output reg   [3:0] led,
	output wire   [3:0] money_flag_w,
	output wire  boot_flag_w
);

parameter MAX_NUM = 9_999_999;//定义最大计时0.2s  LED灯闪烁间隔
parameter MAX_NUM2 = 10;//2s计数基于0.2s

//定义状态计数器，4个灯4个状态
reg [1:0] led_flag; 

reg boot_flag;                   //标识售货机是否处于开机状态 0：关机 1：开机

reg [3:0] money_flag;//用户投币的状态有8种 分别是0, 0.5, 1, 1.5, 2, 2.5, 3, 3.5, 退货的0

reg [23:0] cnt = 0;             //计时器赋初值为0

reg [26:0] cnt_1 = 0;             //计时器赋初值为0

reg time_flag;//开始计时标记 1:开始计时 0:不开始



//0.2s计数器模块
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cnt <= 1'b0;               //按下复位键，清零
	else if(cnt == MAX_NUM)          //计时器达到最大值，清零重新计数
      cnt <= 1'b0;
	else
		cnt <= cnt + 1'b1;         
end

//2s计数器模块
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		cnt_1 <= 1'b0;               //按下复位键，清零
	else if(time_flag == 1)begin//开始计时
		if(cnt == MAX_NUM)begin
			if(cnt_1 <MAX_NUM2)begin
				cnt_1 <= cnt_1 + 1'b1;
			end
			else begin
				cnt_1 <= 1'b0;//cnt_1计数达到最大就清空
			end
		end
		else begin
			cnt_1 <= cnt_1;//其余时间保持
		end
	end
	else begin
		cnt_1 <= 1'b0;//不计时，cnt_1清空
	end
end


//状态切换计数器模块 led_flag的状态基于0.2s
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		led_flag <= 1'b0;
	else if(cnt == MAX_NUM)
		led_flag <= led_flag + 1'b1;      //超出宽度截取低两位
	else
		led_flag <= led_flag;
end 


//售货机开关机状态控制 key4
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin  
			boot_flag <= 1'b0;                 //初始状态关机中
			beep <= 1'b0;//关机状态，蜂鸣器响 
	end
	else if(flag[3] == 1'b1 && key_value[3] == 1'b0)begin//当按键key4按下时，售货机开关机状态取反
			boot_flag <= ~boot_flag;
			beep <= ~beep;//当开机状态时蜂鸣器停止
		end
	else begin
		boot_flag <= boot_flag;//其余情况售货机开关机状态保持
		beep <= beep;//蜂鸣器状态保持
	end
end


assign boot_flag_w = boot_flag;

//当投入人民币购买功能
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)begin
		money_flag <= 4'd0;//初始用户投币为0
	end
	else if(boot_flag)begin//只有当售货机是开机状态才可以购买
		case(money_flag)
			4'd0:begin//用户投币为0的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd1;//记下第二个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd2;//记下第三个状态
				end
//				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
//					money_flag <= 4'd7;//记下第八个状态
//					time_flag <= 1'b1;//开始计时
//				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd1:begin//用户投币为0.5的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd2;//记下第三个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd3;//记下第四个状态
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
				money_flag <= 4'd7;//记下第八个状态
				time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd2:begin//用户投币为1的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd3;//记下第四个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd4;//记下第五个状态
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
					money_flag <= 4'd7;//记下第八个状态
					time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd3:begin//用户投币为1.5的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd4;//记下第五个状态
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd5;//记下第六个状态
					time_flag <= 1'b1;//开始计时
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
					money_flag <= 4'd7;//记下第八个状态
					time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd4:begin//用户投币为2的情况下
				if(flag[1] == 1'b1 && key_value[1] == 1'b0)begin//用户投币0.5
					money_flag <= 4'd5;//记下第六个状态
					time_flag <= 1'b1;//开始计时
				end
				else if(flag[2] == 1'b1 && key_value[2] == 1'b0)begin//用户投币1
					money_flag <= 4'd6;//记下第七个状态
					time_flag <= 1'b1;//开始计时
				end
				else if(flag[0] == 1'b1 && key_value[0] == 1'b0)begin//用户退货
					money_flag <= 4'd7;//记下第八个状态
					time_flag <= 1'b1;//开始计时
				end
				else begin//用户没操作，状态保持
					money_flag <= money_flag;
				end
			end
			4'd5:begin//用户投币为2.5的情况下 保持2s
				if(cnt_1 == MAX_NUM2)begin
					money_flag <= 4'd0;//返回第一种状态
					time_flag <= 1'b0;//结束计时
				end
				else begin
					money_flag <= money_flag;
				end
			end
			4'd6:begin//用户投币为3的情况下 保持2s
				if(cnt_1 == MAX_NUM2)begin
					money_flag <= 4'd0;//返回第一种状态
					time_flag <= 1'b0;//结束计时
				end
				else begin
					money_flag <= money_flag;
				end
			end
			4'd7:begin//用户退货的情况下 保持2s
				if(cnt_1 == MAX_NUM2)begin
					money_flag <= 4'd0;//返回第一种状态
					time_flag <= 1'b0;//结束计时
				end
				else begin
					money_flag <= money_flag;
				end
			end
		endcase
	end
	else begin
		money_flag <= 4'd0;
	end
end




//led控制模块
always@(posedge clk or negedge rst_n)begin
	if(!rst_n)
		led <= 4'b0000;
	else if(money_flag == 4'd5)begin//2.5块购买成功不找零  闪烁
			case(led_flag)
				2'b00  :led <= 4'b1111;
				2'b01  :led <= 4'b0000;
				2'b10  :led <= 4'b1111;
				2'b11  :led <= 4'b0000;
				default:led <= 4'b1111;
			endcase
	end
	else if(money_flag == 4'd6)begin//3块购买成功找零  流水灯
			case(led_flag)
				2'b00  :led <= 4'b1000;
				2'b01  :led <= 4'b0100;
				2'b10  :led <= 4'b0010;
				2'b11  :led <= 4'b0001;
				default:led <= 4'b1000;
			endcase
	end
	else if(money_flag == 4'd7)begin//退货 跑马灯（蜂鸣器）
			case(led_flag)
				2'b00  :led <= 4'b1000;
				2'b01  :led <= 4'b1100;
				2'b10  :led <= 4'b1110;
				2'b11  :led <= 4'b1111;
				default:led <= 4'b1000;
			endcase
	end
	else
		led <= 4'b0000;//其余情况led不亮
end


assign money_flag_w = money_flag;

endmodule
```



#### 顶层模块

##### 定义输入输出

```verilog
module top_vending_machine(
	input wire clk,//时钟
	input wire rst_n,//复位
	input wire [3:0] key,//三个按键
	
	output wire beep,
	output wire [3:0] led,//led灯
	output wire [7:0] seg,//段选信号
	output wire [5:0] sel//位选信号
);
...
endmodule
```

​	这里定义了模块名为 `top_vending_machine`，输入**时钟信号 `clk`**、**复位信号 `rst_n`**、**三个按键信号 `key`**，输出**蜂鸣器信号 `beep`**、**LED灯信号 `led`**、**段选信号 `seg`** 和**位选信号 `sel`**。

- **`key` **：一个四位的向量，**代表三个按键**。
- **`beep` **：一个单独的线，**用于控制蜂鸣器的发声**。
- **`led` **：一个四位的向量，**用于控制四个LED灯的亮灭**。
- **`seg` **：一个八位的向量，**代表数码管的段选信号**。
- **`sel` **：一个六位的向量，**代表数码管的位选信号**。

##### 定义内部变量

```verilog
wire [3:0] money_flag;
wire [3:0] key_value;
wire [3:0] flag;
wire boot_flag;
```

- **`money_flag`** ：一个四位的向量，**用于记录投币的金额**。
- **`key_value` **：一个四位的向量，**用于记录按键的值**。
- **`flag` **：一个四位的向量，**用于记录状态机的状态**。
- **`boot_flag` **：一个单独的线，**用于表示系统是否已经启动**。

##### 例化按键消抖

```verilog
//例化按键key1消抖模块
key_debounce inst_key_debounce1(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[0]      ),
            
.flag      (flag[0]     ),              
.key_value (key_value[0])          
);
```

- **`key[0]`** 信号作为**输入**；
- **`flag[0]`** 信号作为**输出**；
- **`key_value[0]`** 信号作为另一个**输出**；
- **`clk`** 信号作为**时钟**；
-  **`rst_n`** 信号作为**复位信号**。

##### 模块例化

连接了顶层模块的输入和输出端口与其他模块的输入和输出端口

```verilog
sel_drive inst_sel_drive(
.clk    	  (clk  		 ),
.rst_n	  (rst_n		 ),
.boot_flag (boot_flag),
			
.sel  	  (sel		 )
);


seg_scan inst_seg_scan(
.clk       (clk  		 ),
.rst_n     (rst_n		 ),
.money_flag(money_flag),

.sel       (sel		 ),//位选信号
.seg       (seg		 )//段选信号
);


vending_machine inst_vending_machine(
.clk		    (clk		    ),//时钟
.rst_n		 (rst_n		 ),//复位
.key_value	 ({key_value[3],key_value[2],key_value[1],key_value[0]}),//按键值
.flag			 ({flag[3],flag[2],flag[1],flag[0]}),

.beep        (beep)	    ,									
.led			 (led			 ),
.money_flag_w(money_flag),
.boot_flag_w(boot_flag)
);
```

​	`inst_sel_drive` 模块的输出端口 `sel` 连接到数码管扫描模块 `inst_seg_scan` 的输入端口 `sel`，用于驱动数码管的位选信号。售货机状态机模块 `inst_vending_machine` 的输入端口 `key_value` 和 `flag` 分别连接到按键消抖模块和状态机模块的输出端口，用于读取按键值和状态标志。同时，输出端口 `beep` 和 `led` 分别连接到蜂鸣器和LED灯，用于发出蜂鸣声和显示售货机的状态。最后，`money_flag_w` 和 `boot_flag_w` 分别连接到售货机状态机模块的输入端口 `money_flag` 和 `boot_flag`，用于向状态机模块传递投币金额和系统启动状态。

##### 总代码

top_vending_machine.v

```verilog
module top_vending_machine(
	input wire clk,//时钟
	input wire rst_n,//复位
	input wire [3:0] key,//三个按键
	
	output wire beep,
	output wire [3:0] led,//led灯
	output wire [7:0] seg,//段选信号
	output wire [5:0] sel//位选信号
);

wire [3:0] money_flag;
wire [3:0] key_value;
wire [3:0] flag;
wire boot_flag;

//例化按键key1消抖模块
key_debounce inst_key_debounce1(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[0]      ),
            
.flag      (flag[0]     ),              
.key_value (key_value[0])          
);


//例化按键key2消抖模块
key_debounce inst_key_debounce2(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[1]      ),
            
.flag      (flag[1]     ),              
.key_value (key_value[1])          
);


//例化按键key3消抖模块
key_debounce inst_key_debounce3(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[2]      ),
            
.flag      (flag[2]     ),              
.key_value (key_value[2])          
);


//例化按键key4消抖模块
key_debounce inst_key_debounce4(
.clk       (clk      ),
.rst_n     (rst_n    ),
.key       (key[3]      ),
            
.flag      (flag[3]     ),              
.key_value (key_value[3])          
);


sel_drive inst_sel_drive(
.clk    	  (clk  		 ),
.rst_n	  (rst_n		 ),
.boot_flag (boot_flag),
			
.sel  	  (sel		 )
);


seg_scan inst_seg_scan(
.clk       (clk  		 ),
.rst_n     (rst_n		 ),
.money_flag(money_flag),

.sel       (sel		 ),//位选信号
.seg       (seg		 )//段选信号
);


vending_machine inst_vending_machine(
.clk		    (clk		    ),//时钟
.rst_n		 (rst_n		 ),//复位
.key_value	 ({key_value[3],key_value[2],key_value[1],key_value[0]}),//按键值
.flag			 ({flag[3],flag[2],flag[1],flag[0]}),

.beep        (beep)	    ,									
.led			 (led			 ),
.money_flag_w(money_flag),
.boot_flag_w(boot_flag)
);
endmodule
```

