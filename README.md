# littleBigDataFunctions
R script that contains 3 functions that I like to use when I am working with very large datasets:
1) 'count(vector,element)' - counts the number of elements in vector - similar to the count function in Stata
2) 'show(object,row=10,col=10)' - displays a number of rows and columns of a data.frame or matrix defined by the user. Similar to the the 'head()' function but much more useful when using datasets with a huge amount of columns
3)'ordering(mat=c(),obj)' - Orders the elements of a data.frame or matrix. If mat specified, orders according to that vector. This is a wrapper for the 'order()' function.
