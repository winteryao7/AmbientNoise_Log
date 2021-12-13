# AmbientNoise_Log
A log for calculating ANCC using NoisePy

I am using the package NoisePy (https://github.com/mdenolle/NoisePy)

1. I am finishing running the tutorial (download data/running cc/stacking, etc.)
2. Pre-process my own data (http://ds.iris.edu/gmap/#network=7D&starttime=2018-09-01&endtime=2021-08-01&planet=earth)
   This would result in tons of messy data. Hopefully it would not cost too much time to arrange the dataset
3. Updates
Dec 13, 2021: since rt2ms was used to convert data to mseed format, it would automatically convert to daily mseed file. 
Hence, the data is more organized than expected. All mseed files (vertical channels only for now) are stored under
CLEAN_DATA/; we then organize the local data to ASDF format using S0B_to_ASDF.py (a few parameters changed: freq_min; 
freq_max; inc_hours; start_date and end_date). 

After organizing data to ASDF format, I ran the CC (it's great to see that the script would deal with changing recording
length). 

To do next: to read the paper and understand better the stacking, etc. 
