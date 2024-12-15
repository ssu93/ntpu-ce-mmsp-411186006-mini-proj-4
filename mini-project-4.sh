#!/bin/bash

gcc sinegen.c -o sinegen.exe -lm
./sinegen.exe 8000 16 1 sine 0     100  0.1 1> s-8k_sin_0_100.wav
./sinegen.exe 8000 16 1 sine 31.25 2000 0.1 1> s-8k_sin_31p25_2000.wav
./sinegen.exe 8000 16 1 sine 500   1000 0.1 1> s-8k_sin_500_1000.wav
./sinegen.exe 8000 16 1 sine 2000  500  0.1 1> s-8k_sin_2000_500.wav
./sinegen.exe 8000 16 1 sine 4000  250  0.1 1> s-8k_sin_4000_250.wav
./sinegen.exe 8000 16 1 sine 44    100  0.1 1> s-8k_sin_44_100.wav
./sinegen.exe 8000 16 1 sine 220   2000 0.1 1> s-8k_sin_220_2000.wav
./sinegen.exe 8000 16 1 sine 440   1000 0.1 1> s-8k_sin_440_1000.wav
./sinegen.exe 8000 16 1 sine 1760  500  0.1 1> s-8k_sin_1760_500.wav
./sinegen.exe 8000 16 1 sine 3960  250  0.1 1> s-8k_sin_3960_250.wav

./sinegen.exe 8000 16 1 sawtooth 0     100  0.1 1> s-8k_sawtooth_0_100.wav
./sinegen.exe 8000 16 1 sawtooth 31.25 2000 0.1 1> s-8k_sawtooth_31p25_2000.wav
./sinegen.exe 8000 16 1 sawtooth 500   1000 0.1 1> s-8k_sawtooth_500_1000.wav
./sinegen.exe 8000 16 1 sawtooth 2000  500  0.1 1> s-8k_sawtooth_2000_500.wav
./sinegen.exe 8000 16 1 sawtooth 4000  250  0.1 1> s-8k_sawtooth_4000_250.wav
./sinegen.exe 8000 16 1 sawtooth 44    100  0.1 1> s-8k_sawtooth_44_100.wav
./sinegen.exe 8000 16 1 sawtooth 220   2000 0.1 1> s-8k_sawtooth_220_2000.wav
./sinegen.exe 8000 16 1 sawtooth 440   1000 0.1 1> s-8k_sawtooth_440_1000.wav
./sinegen.exe 8000 16 1 sawtooth 1760  500  0.1 1> s-8k_sawtooth_1760_500.wav
./sinegen.exe 8000 16 1 sawtooth 3960  250  0.1 1> s-8k_sawtooth_3960_250.wav

./sinegen.exe 8000 16 1 square 0     100  0.1 1> s-8k_square_0_100.wav
./sinegen.exe 8000 16 1 square 31.25 2000 0.1 1> s-8k_square_31p25_2000.wav
./sinegen.exe 8000 16 1 square 500   1000 0.1 1> s-8k_square_500_1000.wav
./sinegen.exe 8000 16 1 square 2000  500  0.1 1> s-8k_square_2000_500.wav
./sinegen.exe 8000 16 1 square 4000  250  0.1 1> s-8k_square_4000_250.wav
./sinegen.exe 8000 16 1 square 44    100  0.1 1> s-8k_square_44_100.wav
./sinegen.exe 8000 16 1 square 220   2000 0.1 1> s-8k_square_220_2000.wav
./sinegen.exe 8000 16 1 square 440   1000 0.1 1> s-8k_square_440_1000.wav
./sinegen.exe 8000 16 1 square 1760  500  0.1 1> s-8k_square_1760_500.wav
./sinegen.exe 8000 16 1 square 3960  250  0.1 1> s-8k_square_3960_250.wav

./sinegen.exe 8000 16 1 triangle 0     100  0.1 1> s-8k_triangle_0_100.wav
./sinegen.exe 8000 16 1 triangle 31.25 2000 0.1 1> s-8k_triangle_31p25_2000.wav
./sinegen.exe 8000 16 1 triangle 500   1000 0.1 1> s-8k_triangle_500_1000.wav
./sinegen.exe 8000 16 1 triangle 2000  500  0.1 1> s-8k_triangle_2000_500.wav
./sinegen.exe 8000 16 1 triangle 4000  250  0.1 1> s-8k_triangle_4000_250.wav
./sinegen.exe 8000 16 1 triangle 44    100  0.1 1> s-8k_triangle_44_100.wav
./sinegen.exe 8000 16 1 triangle 220   2000 0.1 1> s-8k_triangle_220_2000.wav
./sinegen.exe 8000 16 1 triangle 440   1000 0.1 1> s-8k_triangle_440_1000.wav
./sinegen.exe 8000 16 1 triangle 1760  500  0.1 1> s-8k_triangle_1760_500.wav
./sinegen.exe 8000 16 1 triangle 3960  250  0.1 1> s-8k_triangle_3960_250.wav

./sinegen.exe 16000 16 1 sine 0     100  0.1 1> s-16k_sin_0_100.wav
./sinegen.exe 16000 16 1 sine 31.25 2000 0.1 1> s-16k_sin_31p25_2000.wav
./sinegen.exe 16000 16 1 sine 500   1000 0.1 1> s-16k_sin_500_1000.wav
./sinegen.exe 16000 16 1 sine 2000  500  0.1 1> s-16k_sin_2000_500.wav
./sinegen.exe 16000 16 1 sine 4000  250  0.1 1> s-16k_sin_4000_250.wav
./sinegen.exe 16000 16 1 sine 44    100  0.1 1> s-16k_sin_44_100.wav
./sinegen.exe 16000 16 1 sine 220   2000 0.1 1> s-16k_sin_220_2000.wav
./sinegen.exe 16000 16 1 sine 440   1000 0.1 1> s-16k_sin_440_1000.wav
./sinegen.exe 16000 16 1 sine 1760  500  0.1 1> s-16k_sin_1760_500.wav
./sinegen.exe 16000 16 1 sine 3960  250  0.1 1> s-16k_sin_3960_250.wav

./sinegen.exe 16000 16 1 sawtooth 0     100  0.1 1> s-16k_sawtooth_0_100.wav
./sinegen.exe 16000 16 1 sawtooth 31.25 2000 0.1 1> s-16k_sawtooth_31p25_2000.wav
./sinegen.exe 16000 16 1 sawtooth 500   1000 0.1 1> s-16k_sawtooth_500_1000.wav
./sinegen.exe 16000 16 1 sawtooth 2000  500  0.1 1> s-16k_sawtooth_2000_500.wav
./sinegen.exe 16000 16 1 sawtooth 4000  250  0.1 1> s-16k_sawtooth_4000_250.wav
./sinegen.exe 16000 16 1 sawtooth 44    100  0.1 1> s-16k_sawtooth_44_100.wav
./sinegen.exe 16000 16 1 sawtooth 220   2000 0.1 1> s-16k_sawtooth_220_2000.wav
./sinegen.exe 16000 16 1 sawtooth 440   1000 0.1 1> s-16k_sawtooth_440_1000.wav
./sinegen.exe 16000 16 1 sawtooth 1760  500  0.1 1> s-16k_sawtooth_1760_500.wav
./sinegen.exe 16000 16 1 sawtooth 3960  250  0.1 1> s-16k_sawtooth_3960_250.wav

./sinegen.exe 16000 16 1 square 0     100  0.1 1> s-16k_square_0_100.wav
./sinegen.exe 16000 16 1 square 31.25 2000 0.1 1> s-16k_square_31p25_2000.wav
./sinegen.exe 16000 16 1 square 500   1000 0.1 1> s-16k_square_500_1000.wav
./sinegen.exe 16000 16 1 square 2000  500  0.1 1> s-16k_square_2000_500.wav
./sinegen.exe 16000 16 1 square 4000  250  0.1 1> s-16k_square_4000_250.wav
./sinegen.exe 16000 16 1 square 44    100  0.1 1> s-16k_square_44_100.wav
./sinegen.exe 16000 16 1 square 220   2000 0.1 1> s-16k_square_220_2000.wav
./sinegen.exe 16000 16 1 square 440   1000 0.1 1> s-16k_square_440_1000.wav
./sinegen.exe 16000 16 1 square 1760  500  0.1 1> s-16k_square_1760_500.wav
./sinegen.exe 16000 16 1 square 3960  250  0.1 1> s-16k_square_3960_250.wav

./sinegen.exe 16000 16 1 triangle 0     100  0.1 1> s-16k_triangle_0_100.wav
./sinegen.exe 16000 16 1 triangle 31.25 2000 0.1 1> s-16k_triangle_31p25_2000.wav
./sinegen.exe 16000 16 1 triangle 500   1000 0.1 1> s-16k_triangle_500_1000.wav
./sinegen.exe 16000 16 1 triangle 2000  500  0.1 1> s-16k_triangle_2000_500.wav
./sinegen.exe 16000 16 1 triangle 4000  250  0.1 1> s-16k_triangle_4000_250.wav
./sinegen.exe 16000 16 1 triangle 44    100  0.1 1> s-16k_triangle_44_100.wav
./sinegen.exe 16000 16 1 triangle 220   2000 0.1 1> s-16k_triangle_220_2000.wav
./sinegen.exe 16000 16 1 triangle 440   1000 0.1 1> s-16k_triangle_440_1000.wav
./sinegen.exe 16000 16 1 triangle 1760  500  0.1 1> s-16k_triangle_1760_500.wav
./sinegen.exe 16000 16 1 triangle 3960  250  0.1 1> s-16k_triangle_3960_250.wav

gcc ./cascade.c -o cascade.exe
./cascade.exe 8k_scp.txt s-8k.wav
./cascade.exe 16k_scp.txt s-16k.wav

gcc spectrogram.c -o spectrogram.exe -lm
./spectrogram.exe 512 rectangular 512 160 s-16k.wav s-16k.Set1.txt
./spectrogram.exe 512 hamming     512 160 s-16k.wav s-16k.Set2.txt
./spectrogram.exe 480 rectangular 512 160 s-16k.wav s-16k.Set3.txt
./spectrogram.exe 480 hamming     512 160 s-16k.wav s-16k.Set4.txt
./spectrogram.exe 256 rectangular 256  80 s-8k.wav s-8k.Set1.txt
./spectrogram.exe 256 hamming     256  80 s-8k.wav s-8k.Set2.txt
./spectrogram.exe 240 rectangular 256  80 s-8k.wav s-8k.Set3.txt
./spectrogram.exe 240 hamming     256  80 s-8k.wav s-8k.Set4.txt
./spectrogram.exe 512 rectangular 512 160 aeueo-16kHz.wav aeueo-16kHz.Set1.txt
./spectrogram.exe 512 hamming     512 160 aeueo-16kHz.wav aeueo-16kHz.Set2.txt
./spectrogram.exe 480 rectangular 512 160 aeueo-16kHz.wav aeueo-16kHz.Set3.txt
./spectrogram.exe 480 hamming     512 160 aeueo-16kHz.wav aeueo-16kHz.Set4.txt
./spectrogram.exe 256 rectangular 256  80 aeueo-8kHz.wav aeueo-8kHz.Set1.txt
./spectrogram.exe 256 hamming     256  80 aeueo-8kHz.wav aeueo-8kHz.Set2.txt
./spectrogram.exe 240 rectangular 256  80 aeueo-8kHz.wav aeueo-8kHz.Set3.txt
./spectrogram.exe 240 hamming     256  80 aeueo-8kHz.wav aeueo-8kHz.Set4.txt

python3 spectshow.py s-16k.wav s-16k.Set1.txt s-16k.Set1.pdf
python3 spectshow.py s-16k.wav s-16k.Set1.txt s-16k.Set2.pdf
python3 spectshow.py s-16k.wav s-16k.Set1.txt s-16k.Set3.pdf
python3 spectshow.py s-16k.wav s-16k.Set1.txt s-16k.Set4.pdf
python3 spectshow.py s-8k.wav s-8k.Set1.txt s-8k.Set1.pdf
python3 spectshow.py s-8k.wav s-8k.Set1.txt s-8k.Set2.pdf
python3 spectshow.py s-8k.wav s-8k.Set1.txt s-8k.Set3.pdf
python3 spectshow.py s-8k.wav s-8k.Set1.txt s-8k.Set4.pdf
python3 spectshow.py aeueo-16kHz.wav aeueo-16kHz.Set1.txt aeueo-16kHz.Set1.pdf
python3 spectshow.py aeueo-16kHz.wav aeueo-16kHz.Set2.txt aeueo-16kHz.Set2.pdf
python3 spectshow.py aeueo-16kHz.wav aeueo-16kHz.Set3.txt aeueo-16kHz.Set3.pdf
python3 spectshow.py aeueo-16kHz.wav aeueo-16kHz.Set4.txt aeueo-16kHz.Set4.pdf
python3 spectshow.py aeueo-8kHz.wav aeueo-8kHz.Set1.txt aeueo-8kHz.Set1.pdf
python3 spectshow.py aeueo-8kHz.wav aeueo-8kHz.Set2.txt aeueo-8kHz.Set2.pdf
python3 spectshow.py aeueo-8kHz.wav aeueo-8kHz.Set3.txt aeueo-8kHz.Set3.pdf
python3 spectshow.py aeueo-8kHz.wav aeueo-8kHz.Set4.txt aeueo-8kHz.Set4.pdf

