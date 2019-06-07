#include<stdio.h>
#include<string.h>

void fun1() {
    int m = 0;
    char num[4];
    strcpy(num, "bbbbbbbbbbbb\x0F\x10\x40\x00");
}

void func2() {
    printf("You were attacked!!\n");
}

int main() {
    fun1();
    return 0;
}