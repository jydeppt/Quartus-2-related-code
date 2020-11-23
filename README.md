# Quartus-2-related-code
数字逻辑（quartus 2）（vhdl等等）  
在用modelsim进行仿真时出现了一个小问题（可能是软件的问题？）  
![image](https://github.com/jydeppt/Quartus-2-related-code/blob/main/images/3.png)  
在此给出一种解决方法  
只需先将位于modelsim_ase文件夹下的modelsim.ini文件取消只读属性  
![image](https://github.com/jydeppt/Quartus-2-related-code/blob/main/images/1.PNG)  
然后在大致这个位置添加一行“max3000a_ver = $MODEL_TECH/../altera/verilog/max"  
![image](https://github.com/jydeppt/Quartus-2-related-code/blob/main/images/2.PNG)  
这样问题就解决了
