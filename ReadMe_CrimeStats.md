# Data visualization with Python and SQL, emphasis on functions
### by Josh Murray
### 9/24/2024

## Summary

For this project, data was downloaded from the source, converted into a valid CSV, then brought into a MySQL database. In SQL, I used a window function ("LAG()" + "over") to capture the rate of change over time for each crime stat.

In some other portfolio projects, I have worked with a relatively small set of plots and have contented myself to copy and paste as needed. Here, I wanted to demonstrate the ability to use loops and functions to efficiently perform the same task on multiple columns.

## Source 

https://cde.ucr.cjis.gov/LATEST/webapp/#/pages/home. Accessed 9/24/24, at which point it was last updated April 9, 2024.

## Notes

Some notes from the sourcefile on the data:

* Units = "Volume and Rate per 100,000 Inhabitants, 2004–2023". The crime figures have been "adjusted".
* Populations are U.S. Census Bureau provisional estimates as of July 1 for each year except 2000 and 2010, which are decennial census counts.
* The violent crime figures include the offenses of murder, rape (legacy definition), robbery, and aggravated assault.
* The figures shown in this column for the offense of rape were estimated using the revised UCR definition of rape. See data declaration for further explanation.
* The figures shown in this column for the offense of rape were estimated using the legacy UCR definition of rape. See data declaration for further explanation.
* Although arson data are included in the trend and clearance tables, sufficient data are not available to estimate totals for this offense. Therefore, no arson data are published in this table.

## Technology

I read the initial files with MS Excel. SQL changes were performed in a MySQL database. Python analysis performed in a Jupyter notebook. 

