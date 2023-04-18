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