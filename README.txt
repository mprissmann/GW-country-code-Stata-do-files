Use the "GW ccodes.do" Stata do-file to read out country name strings from a variable called "country" and create a variable called "ccode" with the respective Gledditsch and Ward country codes. 
Afterwards, use "COUNTRY value label.do" to assign value labels to the country codes.


## Motivation
For cross-sectional or cross-sectional-time-series studies with countries as the level of analysis, researchers usually need to merge several data sets in order to have all required variables in one data set for analysis. Most data sets come with their own country identifiers which makes merging sch data sets difficult

## What It Does
The Stata do-file reads out country name strings and assigns the Gledditsch and Ward country codes. For some Islands and small territories which come up in many data sets I have also added my own, arbitrary, country codes in the 2000s and 3000s.
Simply rename your variable which contains the country name strings to "country" and run the do-files to assign country codes (ccodes) and value labels.

## Inspiration
Clayton Thyne (http://www.uky.edu/~clthyn2/replace_ccode_country.do) has a similar do-file. Also, kountry, a user-written Stata command does similar conversions and more. However, last I checked, it requires heavy updating and writing my own code ended up to be faster.

