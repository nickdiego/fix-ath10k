#!/bin/bash

outdir="/lib/firmware/ath10k/QCA6174/hw3.0"
baseurl="https://github.com/kvalo/ath10k-firmware/blob/master/QCA6174/hw3.0"

mkdir -p ${outdir}
rm ${outdir}/* 2> /dev/null
wget -O ${outdir}/board.bin ${baseurl}/board.bin?raw=true
wget -O ${outdir}/board-2.bin ${baseurl}/board-2.bin?raw=true
wget -O ${outdir}/firmware-4.bin ${baseurl}/firmware-4.bin_WLAN.RM.2.0-00180-QCARMSWPZ-1?raw=true

chmod +x ${outdir}/*
