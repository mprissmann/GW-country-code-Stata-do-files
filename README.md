Use the "GW ccodes.do" Stata do-file to read out country name strings from a variable called "country" and create a variable called "ccode" with the respective Gledditsch and Ward country codes. 
Afterwards, use "COUNTRY value label.do" to assign value labels to the country codes.


## Motivation
For cross-sectional or cross-sectional-time-series studies with countries as the level of analysis, researchers usually need to merge several data sets in order to have all required variables in one data set for analysis. Most data sets come with their own country identifiers which makes merging sch data sets difficult

## What It Does
The Stata do-file reads out country name strings and assigns the Gledditsch and Ward country codes. For some Islands and small territories which come up in many data sets I have also added my own, arbitrary, country codes in the 2000s and 3000s.
Simply rename your variable which contains the country name strings to "country" and run the do-files to assign country codes (ccodes) and value labels.

Some of the data sets I have merged with these do-files: Penn World Tables, IMF Financial Statistics, World Bank's World Development Indicators, Quality of Government data, and various energy and election statistics.

## Requirements
You will need to install user-written Stata commands `sproper', `groups' and `duplicates' once before using my files. For example, type `ssc install sproper' or `findit sproper' in the Stata command window.

## Bugs & Missing Country Names
Feel free to fork the files and request pulls for improvements you made to the code!

### Known issues
The various Yemen and Serbia countries might need revisions on a data set by data set basis due to secessions and mergers. I prefer to err on the safe side and assign country codes for these countries manually. For example, many cross-country-time-series applications consider Yugoslavia, Serbia/Montenegro, and Serbia to be continuations of the same country in order to preserve the time-series. However, assigning the same country code to all of those will result in non-unique country or country-year identifiers inmost data sets.

## Inspiration
Clayton Thyne (http://www.uky.edu/~clthyn2/replace_ccode_country.do) has a similar do-file. Also, kountry, a user-written Stata command does similar conversions and more. However, last I checked, it requires heavy updating and writing my own code ended up to be faster.

## Keywords
how to assign Gledditsch and Ward country codes, merge data sets on country codes

## FAQ
Q: Why is there so much white space in the code?
A: I try to make the code nice and efficient. The extra white space in the do-files is because I actually create the code in MS Excel because of its nice repetitive features.