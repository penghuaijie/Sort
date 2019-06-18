//
//  main.m
//  QuikSort
//
//  Created by beijiXinOg on 2019/4/8.
//  Copyright © 2019年 beijiXinOg. All rights reserved.
//

#import <Foundation/Foundation.h>

void swap(int arr[], int low, int high) {
    if (low == high) {
        return;
    }
    int temp;
    temp = arr[low];
    arr[low] = arr[high];
    arr[high] = temp;
}

int findPartition(int arr[], int low, int high){
    int base = arr[low];
    while (low<high) {
        while (low<high && arr[high]>=base) {
            high--;
        }
        swap(arr, low, high);
        while (low<high && arr[low]<=base) {
            low++;
        }
        swap(arr, low, high);
    }
    return low;
}

void QS(int arr[], int low, int high) {
    if (low<high) {
        int base = findPartition(arr,low,high);
        QS(arr, low, base-1);
        QS(arr, base+1, high);
    }
}
//
//void Swap(int arr[], int low, int high)
//{
//    int temp;
//    temp = arr[low];
//    arr[low] = arr[high];
//    arr[high] = temp;
//}

//int Partition(int arr[], int low, int high)
//{
//    int base = arr[low];
//    while(low < high)
//    {
//        while(low < high && arr[high] >= base)
//        {
//            high --;
//        }
//        Swap(arr, low, high);
//        while(low < high && arr[low] <= base)
//        {
//            low ++;
//        }
//        Swap(arr, low, high);
//    }
//    return low;
//}

//void QuickSort(int arr[], int low, int high)
//{
//    if(low < high)
//    {
//        int base = Partition(arr, low, high);
//        QuickSort(arr, low, base - 1);
//        QuickSort(arr, base + 1, high);
//    }
//}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a[] = {2,1,3,5,4,6,8,9,5,0,2,1,7};
        int count = sizeof(a)/sizeof(int);
        QS(a, 0, count-1);
        for (int i=0; i<count; ++i)
        {
            printf("%d\x20", a[i]);
        }
        printf("\n");
    }
    return 0;
}


