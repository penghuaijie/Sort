//
//  main.m
//  Sort
//
//  Created by beijiXinOg on 2019/4/8.
//  Copyright © 2019年 beijiXinOg. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        int a[] = {1,3,2,6,5,4};
        int count = sizeof(a)/sizeof(int);
        int temp ;
        for (NSInteger i = 0; i < count-1; i++) {//比较n-1轮
            for (NSInteger j = 0; j < count-1-i; j++) {
                if (a[j]<a[j+1]) {
                    temp = a[j+1];
                    a[j+1] = a[j];
                    a[j] = temp;
                }
            }
        }
        for (int i=0; i<count; ++i)
        {
            printf("%d\x20", a[i]);
        }
        printf("\n");
    }
    return 0;
}
