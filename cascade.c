#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(int argc, char** argv)
{

    // 檢查輸入格式是否正確，不正確就列印提示訊息並跳出程式
    // cascade <scp> <output file>
    if (argc!=3) {
        printf("Usage: cascade <scp> <output>\n");
        return -1;
    }

    char p[100];
    int num=0;
    int eightk=0;

    // 開啟輸入檔案，計算wav檔案數目
    // 擷取檔名資訊以知道sample rate
    FILE *fscp1=fopen(argv[1],"r");
    while(fgets(p,sizeof(p),fscp1)){
        num++;
        if(strstr(p,"16k")==NULL) {eightk=1;}
    }
    fclose(fscp1);

    //開啟輸入檔案
    FILE *fscp=fopen(argv[1],"r");

    //開啟輸出檔案
    FILE *foutput=fopen(argv[2], "w");

    char buf8k[800];
    char buf16k[1600];
    char scp_wavename[100];
    char *wavename;
    char waveheader[44];
    int firstwave=1;
    int int_waveheader;
    int int_buf;
  
    // 定義wav檔案的header
    unsigned int samplesize=16;
    unsigned int chunksize;
    unsigned int subchunk1size=16;
    unsigned short audioformat=1;
    unsigned int numchannels=1;
    unsigned int samplerate;
    if(eightk){samplerate=8000;} // 依據檔名得知sample rate
    else{samplerate=16000;}
    unsigned int byterate=samplerate*numchannels*(samplesize/8);
    unsigned short blockalign=numchannels*(samplesize/8);
    unsigned short bitspersample=samplesize;

    float time_float=0.1*(float)num;
    unsigned int time=(int)(time_float*10);
    int total_sample=(samplerate*time)/10; // 全部的取樣點數

    unsigned int subchunk2size=total_sample*numchannels*(samplesize/8);
    chunksize=4+(8+subchunk1size)+(8+subchunk2size);

    while (fgets(scp_wavename,sizeof(scp_wavename),fscp)) {
 
        wavename=strtok(scp_wavename,"\n");

        //開啟輸入檔案
        FILE *finput = fopen(wavename,"r");

        if(firstwave){
            // 產生cascade wav檔案的header
            fwrite("RIFF",1,4,foutput);
            fwrite(&chunksize,4,1,foutput);
            fwrite("WAVE",1,4,foutput);
            fwrite("fmt ",1,4,foutput);
            fwrite(&subchunk1size,4,1,foutput);
            fwrite(&audioformat,2,1,foutput);
            fwrite(&numchannels,2,1,foutput);
            fwrite(&samplerate,4,1,foutput);
            fwrite(&byterate,4,1,foutput);
            fwrite(&blockalign,2,1,foutput);
            fwrite(&bitspersample,2,1,foutput);
            fwrite("data",1,4,foutput);
            fwrite(&subchunk2size,4,1,foutput);
            firstwave=0;
            fseek(finput,44,SEEK_SET); // 跳過前面44 bytes，直接讀取wav data部分
        }else{
            fseek(finput,44,SEEK_SET); // 跳過前面44 bytes，直接讀取wav data部分
        }
        // 讀取wav檔案資料，並寫到cascade起來的檔案
        if(eightk){
            while(fread(buf8k,sizeof(buf8k),1,finput)){fwrite(buf8k,sizeof(buf8k),1,foutput);}
        }else{
            while(fread(buf16k,sizeof(buf16k),1,finput)){fwrite(buf16k,sizeof(buf16k),1,foutput);}
        }
        fclose(finput);
    }
    fclose(foutput);
    fclose(fscp);

    return 0;
}




