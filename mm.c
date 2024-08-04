#include <stdio.h>
#include <immintrin.h>
int main(void)
{
    __m256 vea = _mm256_set_ps(7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0, 0.0);
    __m256 veb = _mm256_set_ps(7.0, 6.0, 5.0, 4.0, 3.0, 2.0, 1.0, 0.0);
    float *fin = aligned_alloc(32, sizeof(float)*8);
    __m256 res = _mm256_mul_ps(vea, veb);
    _mm256_store_ps(fin, res);
    float summ=0;
    for(int i=0;i<8;i++)
        summ+=fin[i];
        //printf("%f ", fin[i]);
    printf("%f\n", summ);
    free(fin);
    return 0;
}
