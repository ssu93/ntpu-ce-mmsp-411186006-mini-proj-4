#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define PI 3.1415926

int main(int argc, char *argv[]) {
    //檢查輸入格式是否正確，不正確就列印提示訊息並跳出程式
    //spectrogram <w_size> <w_type> <dft_size> <f_itv> <wav_in> <spec_out>
    if (argc != 7) {
        printf("Usage: spectrogram.exe <w_size> <w_type> <dft_size> <f_itv> <wav_in> <spec_out>\n");
        printf("Usage: <w_size=*ms> <w_type=hamming/rectangular> <dft_size=*ms> <f_itv=*ms> \n");
        printf("Usage: <wav_in=input WAVE file> <spec_out=output spectrigram data> \n");
        return -1;
    }

    int wavesize=atoi(argv[1]);
    char *wavetype=argv[2];
    int dftsize=atoi(argv[3]);
    int fitv=atoi(argv[4]);

    //開啟輸入檔案
    FILE *finput=fopen(argv[5],"r");

    //開啟輸出檔案
    FILE *foutput=fopen(argv[6],"w");

    fseek(finput, 44, SEEK_SET);  // 跳過前面44 bytes，直接讀取wav data部分

    double data[10000];
    double real[10000];
    double img[10000];

    // 讀出wav資料與window相乘，然後找出其實數及虛數
    while (fread(data,sizeof(double),dftsize,finput)==dftsize) {
        if(strcmp(wavetype,"hamming")==0) {
            for(int i=0;i<wavesize;i++) {data[i]=data[i]*(0.54-0.46*cos(2*PI*i/(wavesize-1)));}
        }else{
            for(int i=0;i<wavesize;i++) {data[i]=data[i];}
        }
        for (int j=0;j<wavesize;j++) {
            real[j]=0;
            img[j]=0;
            for (int k=0;k<wavesize;k++) {
                real[j]+=data[k]*cos(2*PI*j*k/wavesize);
                img[j]-=data[k]*sin(2*PI*j*k/wavesize);
            }
        }

        // 將實數及虛數寫入檔案
        for (int i=0;i<dftsize;i++) {
            fprintf(foutput,"%f %f\n",real[i],img[i]);
        }

        fseek(finput,fitv*sizeof(float),SEEK_CUR);
    }

    fclose(finput);
    fclose(foutput);

    return 0;
}

