//
// Created by ubuntu on 19-4-11.
//

#include "aux_functions.h"
#include <stdlib.h>
#include <iostream>

#define  N 64

int main(){
    float  *in = (float*)calloc(N, sizeof(float));
    float  *out = (float*)calloc(N, sizeof(float));
    const float  ref = 0.5f;

    for (int i = 0; i < N; ++i){
        in[i] = scale(i, N);
    }

    distanceArray(out, in, ref, N);

    for (int i = 0; i < N; ++i){
        printf("%f", out[i]);
    }

    free(in);
    free(out);
    return 0;
}
