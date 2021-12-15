#!/bin/bash

#### STEP ONE ####
# prepare mseed file

#### STEP TWO ####
# arrange mseed file 
# copy data to directory CLEAN_DATA
python S0B_to_ASDF.py
# modifications to S0B_to_ASDF.py:
# 1. L40: changed to my own direcotry
# 2. L43: update file station.txt
# 3. L51–L52: freqmin and freqmax 
# 4. L62–L63: start_date and end_date

#### STEP THREE ####
python S1_fft_cc_MPI.py
# modifications to S1_fft_cc_MPI.py:
# 1. L49: changed to my own path 

#### PLOTTING ####
# modified based on https://noisepy.readthedocs.io/en/latest/tutorial.html
python test_plot_dyao.py
