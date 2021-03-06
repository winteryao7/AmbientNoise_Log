# AmbientNoise_Log
A log for calculating ANCC using NoisePy

I am using the package NoisePy (https://github.com/mdenolle/NoisePy)

1. I am finishing running the tutorial (download data/running cc/stacking, etc.)

2. Pre-process my own data (http://ds.iris.edu/gmap/#network=7D&starttime=2018-09-01&endtime=2021-08-01&planet=earth)
   This would result in tons of messy data. Hopefully it would not cost too much time to arrange the dataset
   
3. Updates (Dec 13, 2021) 

Since rt2ms was used to convert data to mseed format, it would automatically convert to daily mseed file. 
Hence, the data is more organized than expected. All mseed files (vertical channels only for now) are stored under
CLEAN_DATA/; we then organize the local data to ASDF format using S0B_to_ASDF.py (a few parameters changed: freq_min; 
freq_max; inc_hours; start_date and end_date). 

After organizing data to ASDF format, I ran the CC (it's great to see that the script would deal with changing recording
length). 

To do next: to read the paper and understand better the stacking, etc. 

4. Updates (Dec 16, 2021)

Requesting Data for nearby permanent stations as well
(http://ds.iris.edu/gmap/#channel=?HZ&starttime=2018-10-14&endtime=2021-05-17&maxlat=42.8&maxlon=-81.5&minlat=40.8&minlon=-84.5&network=*&drawingmode=box&planet=earth)

5. Updates (Dec 19, 2021)

Think about removing instrument response for permanent stations nearby (a change in the sensor 
for some stations, including N49A, M50A, N51A, K50A); changing the data length to 8 hours instead
of daily (might be helpful to get of void or data gaps)

S0B_to_ASDF.py would be terminated while data gap exists. How about modifying the script so it could handle this 
instead of terminating the program? 

6. Updates (Dec 20, 2021)

Fixed a bug when plotting out cross-correlation function: it would automatically search for pairs with the same channel code 
as indicated in the first pair, which would not be able to produce pairs with different channel codes (L156). 

7. Updates (Dec 25, 2021)

Merry Christmas! I tested the application modules of NoisePy today (dispersion analysis, it seems to be working...). 
One thing I should consider is to remove instrument response since the different sensors. I turned on the RESP for both 
S0A and S0B (with RESP downloaded via FetchData, -rd or -sd option). Make sure the path directory is correct. 
(resp/RESP.network.station.location.channel).  

8. Updates (Jan 3, 2022)

Inconsistency between the network codes. (IRIS already assigns 7D, while in the MSEED file it was XX). Hence, when I 
added own data to the original data files, it includes both 7D and XX networks (while the stations coded as 7D.????
contain no waveform data). 

I need to sort out how to clean up empty waveforms. 


9. Updates (Jan 17, 2022)

Two periods: 

2018/10/15 - 2019/03/15 (or something), stations: N4.M50A, N4.N51A, N4.K50A, N4.N49A, N4.L48A,& US.AAM (all BHZ)

2019/03/20 - 2021/07/01, stations: N4.M50A, N4.K50A, N4.N51A, N4.N49A, LM.L48A, US.AAM, OH.BCOH, OH.BGOH, and 6O.OHIO

Freqmin: 0.02, and Freqmax: 4 (Hz); Sampling Freq (10 Hz)

Prefer using S0B (after dowloading data)
