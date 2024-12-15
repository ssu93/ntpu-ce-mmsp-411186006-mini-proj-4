#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define PI 3.1415926

int main(int argc, char *argv[])
{
   
    //檢查輸入格式是否正確，不正確就列印提示訊息並跳出程式
    //sinegen fs m c wavetype f A T 1> fn.wav
    if (argc != 8) {
        printf("Usage: sinegen.exe <fs=8000/16000/22050/44100> <m> <c> <wavetype> <f> <A> <T> 1> fn.wav\n");
        printf("Usage: <fs=8000/16000/22050/44100> <m=8/16/32> <c=1/2> <wavetype=sine> \n");
        printf("Usage: <f=frequency> <A=0.0/1.0> <T=second> \n");
        return -1;
    }
 
    // 定義輸入的參數
    unsigned int sample_rate=atoi(argv[1]);
    unsigned int samplesize=atoi(argv[2]);
    unsigned int ch_num=atoi(argv[3]);
    char *wavetype=argv[4];
    double freq=atoi(argv[5]);
    double amp=atof(argv[6]);
    float time_float=atof(argv[7]);
    unsigned int time=(int)(time_float*10);
    
    // 定義可用的4種波形
    char sine[] = "sine";
    char sawtooth[] = "sawtooth";
    char square[] = "square";
    char triangle[] = "triangle";

    double result;
    double result_n;

    double amplitude=(double) (pow(2,samplesize-1)-1); // 計算波形的峰值
    int total_sample=(sample_rate*time)/10; // 全部的取樣點數
    
    // 定義wav檔案的header
    unsigned int chunksize;
    unsigned int subchunk1size=16;
    unsigned short audioformat=1;
    unsigned int numchannels=ch_num;
    unsigned int samplerate=sample_rate;
    unsigned int byterate=sample_rate*ch_num*(samplesize/8);
    unsigned short blockalign=ch_num*(samplesize/8);
    unsigned short bitspersample=samplesize;
    unsigned int subchunk2size=total_sample*ch_num*(samplesize/8);
    chunksize=4+(8+subchunk1size)+(8+subchunk2size);

    // 產生wav檔案的header
    fwrite("RIFF",1,4,stdout);
    fwrite(&chunksize,4,1,stdout);
    fwrite("WAVE",1,4,stdout);
    fwrite("fmt ",1,4,stdout);
    fwrite(&subchunk1size,4,1,stdout);
    fwrite(&audioformat,2,1,stdout);
    fwrite(&ch_num,2,1,stdout);
    fwrite(&sample_rate,4,1,stdout);
    fwrite(&byterate,4,1,stdout);
    fwrite(&blockalign,2,1,stdout);
    fwrite(&bitspersample,2,1,stdout);
    fwrite("data",1,4,stdout);
    fwrite(&subchunk2size,4,1,stdout);

    int int_result;

    double t=(double) (1/(double)sample_rate);
    double sample=0;
    if(strcmp(wavetype,sine)==0) {
        for(int i=0;i<total_sample;i++){
            sample=sample+t;
            result=amplitude*sin(2*PI*freq*sample); // 計算sine波形數值
            int_result = (int)result;
            fwrite(&int_result,samplesize/8,1,stdout); // 輸出波形數值到wav檔
        }
    }else if(strcmp(wavetype,sawtooth)==0) {
        for(int i=0;i<total_sample;i++){
            sample=sample+t;
            result=2*amplitude*(sample*freq-floor(sample*freq+0.5));  // 計算sawtooth波形數值
            int_result = (int)result;
            fwrite(&int_result,samplesize/8,1,stdout); // 輸出波形數值到wav檔
        }
    }else if(strcmp(wavetype,square)==0) {
        for(int i=0;i<total_sample;i++){
            sample=sample+t;
            result=amplitude*sin(2*PI*freq*sample); // 計算sine波形數值
            int_result = (int)result;
            // 計算square波形數值
            if(int_result>=0){
                int_result=(int)amplitude;
            }else{
                int_result=-(int)amplitude;
            }
            fwrite(&int_result,samplesize/8,1,stdout); // 輸出波形數值到wav檔
       }    
    }else if(strcmp(wavetype,triangle)==0) {
        for(int i=0;i<total_sample;i++){
            sample=sample+t;
            result=(4*amplitude)*fabs(sample*freq-floor(sample*freq+0.75)+0.25)-amplitude;  // 計算triangle波形數值
            int int_result = (int)result;
            fwrite(&int_result,samplesize/8,1,stdout); // 輸出波形數值到wav檔
        }
    } else {
        printf("Usage: <wavetype=sine/sawtooth/square/triangle> \n");
    }   
    
    return 0;
}

