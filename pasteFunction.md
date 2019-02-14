http://www.datasciencemadesimple.com/paste-function-in-r/

# Paste Function in R
Paste function in R is used to concatenate Vectors by converting them into character. paste0 function in R simply concatenates the vector with space separator. lets see an example of paste() Function in R and Paste0() Function in R

Syntax for Paste Function in R
paste (…, sep = ” “, collapse = NULL)
Arguments
…	one or more R objects, to be concatenated together.
sep	a character string to separate the terms.
collapse	an optional character string to separate the results.
Simple Paste Function in R:
In its simplest usage, paste function in R will accept an unlimited number of scalars, and join them together, separating each scalar with a space by default

1
2
3
# paste function in R
 
paste('one',2,'three',4,'five')
  output:
[1] “one 2 three 4 five”
When multiple arguments are passed to paste, it will vectorize the operation, recycling shorter elements when necessary. This makes it easy to generate variable names with a common prefix

1
2
3
# paste function in R with sep argument
 
paste('X',1:5,sep='')
output:
[1] “X1” “X2” “X3” “X4” “X5”
 

Paste() function in R with collapse Argument:
When a vector is passed, collapse argument should be used as a separator

1
2
3
# paste function in R with collapse argument
 
paste(c('one','two','three','four'),collapse=' and ')
output:
“one and two and three and four
Paste() function in R with Sep & collapse Argument:
The sep= argument controls what is placed between each set of values that are combined, and the collapse= argument can be used to specify a value to use, when joining those individual values to create a single string.

1
2
3
# paste function in R with separator and collapse Argument
 
paste(c('X','Y'),1:5,sep='_',collapse=' and ')
output:
[1] “X_1 and Y_2 and X_3 and Y_4 and X_5”
 

Paste0() Function in R
Paste0()  is a simple paste() function with default separator “ ”. paste0() Function will take only two arguments as shown below

paste0(…, collapse = NULL)
Arguments
…	one or more R objects, to be concatenated together.
collapse	an optional character string to separate the results.
 

1
2
3
# paste0() function in R
 
paste0('X',1:5)
output:
[1] “X1” “X2” “X3” “X4” “X5”
 

Paste0() function in R with collapse Argument:

1
2
3
# paste0() function in R with collapse agrument
 
paste0('X',1:5,collapse=",")
output:
[1] “X1,X2,X3,X4,X5”
