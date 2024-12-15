import sys
import wave
import numpy as np
import matplotlib.pyplot as plt
from matplotlib.backends.backend_pdf import PdfPages

if len(sys.argv)!=4:
	print("Usage: python3 spectshow.py in_wav in_txt out_pdf")
	sys.exit(1)

wavefile=sys.argv[1]
txtfile=sys.argv[2]
pdfout=sys.argv[3]

with wave.open(wavefile,'rb') as wave:
	framerate=wave.getframerate()
	nframes=wave.getnframes()
	waveform=wave.readframes(nframes)
	waveform=np.frombuffer(waveform, dtype=np.int16)

with open(txtfile,'rb') as f:
	spectrogram=[]
	for line in f:
		spectrogram.append([float(x) for x in line.strip().split()])
	spectrogram=np.array(spectrogram)

with PdfPages(pdfout) as pdf:
	fig,axs=plt.subplots(2,1,figsize=(20, 16),gridspec_kw={'hspace':0.01})
	fig.patch.set_facecolor('black')
	axs[0].set_facecolor('darkslategray')
	time=np.linspace(0,len(waveform)/framerate,num=len(waveform))
	axs[0].plot(time, waveform, color='teal')
	axs[0].yaxis.tick_right()
	axs[0].yaxis.set_label_position("right")
	axs[0].yaxis.set_major_locator(plt.MaxNLocator(nbins=20))
	axs[0].xaxis.set_major_locator(plt.MaxNLocator(nbins=20))
	axs[0].grid(True,which='both',linestyle='--',linewidth=0.5,color='darkgreen')
	axs[0].tick_params(axis='y',colors='white')
	axs[0].yaxis.label.set_color('white')
	axs[1].specgram(waveform,Fs=framerate,cmap='gray')
	axs[1].yaxis.tick_right()
	axs[1].yaxis.set_label_position("right")
	axs[1].yaxis.set_major_locator(plt.MaxNLocator(nbins=20))
	axs[1].xaxis.set_major_locator(plt.MaxNLocator(nbins=20))
	axs[1].tick_params(axis='x',colors='white')
	axs[1].tick_params(axis='y',colors='white')
	axs[1].xaxis.label.set_color('white')
	axs[1].yaxis.label.set_color('white')
	pdf.savefig(fig)
	plt.close(fig)
