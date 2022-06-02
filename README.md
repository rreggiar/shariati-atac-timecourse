## Data

 - [Google Drive](https://drive.google.com/drive/u/0/folders/0AHbuz0M9_RpNUk9PVA)  
 	- This holds all of the processed (?) data -- no BAMs, no FASTQ, but this analysis should focus on the [DiffPeaks](https://drive.google.com/drive/folders/1-EQuJ2Fxb358VAY2kXj4Bev60ix52zae?usp=sharing) data.  

## Notes  

 - 06/1/2022:  
 	- Downloaded data to `plaza` and dumped [here](data/)  
	- I'm thinking there is an approach using `bash` to make a matrix that works...but it ultimately might make more sense to go straight into `R` so I can use some smart naming when generating the combined dataset.  
	- Can match the peakID to the annotated peaks data set -- will need to do for each sub dir, iterate, and glue together -- definitely an `R` problem  
	- Filtering will be interesting -- I think the AvA comparisons are duds and the AvB, BvA situation are exact inverse but a quick glance suggests i may be wrong on the latter point
