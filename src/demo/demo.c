//
// Created by ubuntu on 19-4-11.
//

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void test()
{
    char* str = (char*)malloc(100);
    strcpy(str,"hello");
    free(str);
    if(str != NULL)
    {
        strcpy(str, "world");
    }
    printf("%s",str);
}


int main(int argc, char *argv[])
{
    test();
    return 0;
}
