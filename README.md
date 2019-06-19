# Sort

冒泡排序

算法分析
最佳情况：T(n) = O(n2)   最差情况：T(n) = O(n2)   平均情况：T(n) = O(n2)

#算法思想：  
比较相邻的元素。如果第一个比第二个大，就交换它们两个；  
对每一对相邻元素作同样的工作，从开始第一对到结尾的最后一对，这样在最后的元素应该会是最大的数；  
针对所有的元素重复以上的步骤，除了最后一个；  
重复步骤1~3，直到排序完成  

动图演示：  
![Image text](https://github.com/penghuaijie/Sort/blob/master/GifAndImage/140153i7562exzjrnagaja%20(1).gif)






选择排序

算法分析
最佳情况：T(n) = O(n)   最差情况：T(n) = O(n2)   平均情况：T(n) = O(n2)

算法思想
n个记录的直接选择排序可经过n-1趟直接选择排序得到有序结果。  
具体算法描述如下：  
初始状态：无序区为R[1..n]，有序区为空；  
第i趟排序(i=1,2,3…n-1)开始时，当前有序区和无序区分别为R[1..i-1]和R(i..n）。该趟排序从当前无序区中-选出关键字最小的记录 R[k]，将它与无序区的第1个记录R交换，使R[1..i]和R[i+1..n)分别变为记录个数增加1个的新有序区和记录个数减少1个的新无序区；
n-1趟结束，数组有序化了。

动图演示：  
![Image text](https://github.com/penghuaijie/Sort/blob/master/GifAndImage/140154j0ci8n9nvvn353n0.gif)



快速排序 

算法分析 
最佳情况：T(n) = O(n)  最差情况：T(n) = O(nlogn)  平均情况：T(n) = O(nlogn)  


算法思想
快速排序使用分治法来把一个串（list）分为两个子串（sub-lists）。  
具体算法描述如下：  
从数列中挑出一个元素，称为 “基准”（pivot）；
重新排序数列，所有元素比基准值小的摆放在基准前面，所有元素比基准值大的摆在基准的后面（相同的数可以到任一边）。在这个分区退出之后，该基准就处于数列的中间位置。这个称为分区（partition）操作；  
递归地（recursive）把小于基准值元素的子数列和大于基准值元素的子数列排序。  


动图演示：  
![Image text](https://github.com/penghuaijie/Sort/blob/master/GifAndImage/140159bsq685wqc58h7zha.gif)

