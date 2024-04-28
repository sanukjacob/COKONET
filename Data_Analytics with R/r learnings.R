# setting working directory
setwd('D:/Sanu/Rstudio') 

# to get the path
getwd()

#printing function
print('HELLO WORLD')

var_c <- 'GOOD MORNING'
var_c

'GOOD MORNING' -> var_d
var_d

# to delete the variable
rm(var_c)

# initializing an array
array_c <- c('Home','Office')
array_c

# creating a dataframe
data.frame(array_c)

# creating logical vector

var_boolian <- FALSE

var_boolian_true <- T

print(class(var_boolian))

print(class(var_boolian_true))

var_num <- 20

class(var_num)

# creating an integer vector

var_int <- 10L

class(var_int)

# creating a complex vector

var_com <- 10+10i
 class(var_com)
 
# creating a character vector
var_character <- 'MORNING' 
class(var_character)

#list

list_a <- list(c(1,2,3),5,'MORNING')
list_a
class(list_a)

list_b <- list(c(5,8),3,4,5,'history')
list_b
class(list_b)

list_c <- list(c(2,3),5)
list_c
class(list_c)

list_d <- list(c('morning'),('evening'),('afternoon'))
list_d
class(list_d)

list_e <- list(c(2,6),c(5,7),c(4,5))
list_e
class(list_e)

#matrix

matrix_c <- matrix(c(2,4,6,8),nrow = 2, ncol = 2)
matrix_c
class(matrix_c)

#Array
array_A <-array(c(1,2,3,4,5,6), dim = (2))
array_A
class(array_A)

# Factor

color<- factor(c('violet','indigo','blue','green'))
color
class(color)

# dataframe

column_data <- c('two','four','six')
row_data <- c(2,4,6)
sample_dataframe <- data.frame(column_data,row_data)
sample_dataframe

#TYPE CASTING

as.numeric('123') # to numeric

as.character(123) # to character

as.character(TRUE)

as.logical(123)

as.logical(0)

as.logical('NAME')

var_char <- '123'
class(var_char)
var_char <- as.numeric(var_char)
class(var_char)

var_num <- 567
class(var_num)
var_num <- as.character(var_num)
class(var_num)

var_num <- 123
class(var_num)
var_num <- as.logical(var_num)
class(var_num)

var_char <- 'NAME'
class(var_char)
var_char <-as.logical(var_char)
class(var_char)

# CREATING VECTOR ELEMENTS

#vector with single element

vector_A <- 'abc'
vector_A

vector_A_1 <- 100
vector_A_1

#vector with multiple elements

1:100

vector_B <- 1:7
vector_B

vector_B_1 <- 10:20
vector_B_1

#sequence

vector_c <- seq(1,10,by= 0.5)
vector_c

vector_c_1 <- seq(0,25,by = 5)
vector_c_1

vector_c_2 <- seq(0,100,by = 10)
vector_c_2

# giving names to list elements

list_A <- list('color',2,3,c(5,6))
list_A

names(list_A)<- c('first','second','third','fourth')
list_A

list_A[c('first')]

list_A[c('second')]

list_A[c('third')]

list_A[c('fourth')]

list_A[1]

list_A[4]

# list merging

list_1 <- list(1,2,3)
list_2 <- list(5,6,7)
merged_list <- merge(list_1,list_2)
merged_list

list_1_1 <- list(2,4,6)
list_1_2 <- list(2,6,10)
merged_list_1 <- merge(list_1_1,list_1_2)
merged_list_1

list_3 <- list('color','birds',5,7,c(2,4))
list_3
list_3_1 <- list('color','animals',3,7,c(2,4))
merged_list_3 <- merge(list_3,list_3_1)
merged_list_3

#accessing the matrix elements
matrix_1 <- matrix(c(1,2,3,4),nrow = 2, ncol = 2)
matrix_1

matrix_1[1,1]
matrix_1[1,2]
matrix_1[2,1]
matrix_1[2,2]

matrix_1[1,2]+matrix_1[2,1]

#Arrays

vector_1 <- 1:3
vector_2 <- 4:6

array_1 <- array(c(vector_1,vector_2),dim =c(2,3,2))
array_1

array_1[1,2,1]

array_1[2,2,2]

array_1[1,2,1]+array_1[2,2,2]

array_1[1,2,1]-array_1[2,2,2]

# FOR LOOP

a <-0
for (i in 1:10)
{
  a<- a+1
  print(a)
}

a <-1
for (i in 1:20)
{
  a<- a+2
  print(a)
}
# in built function

sum(1:10)

# user defined function

sample_function <- function(i)
{
  result <- i+5
  print(result)
}
sample_function(5)
sample_function(1000)
sample_function(-10)

sample_function2<-function(j)
{
  result <- j+20
  print(result)
}
sample_function2(20)

sample_function3 <- function(j)
{
  result <- (j-10)
  print(result)
}
sample_function3(30)

# function with default argument

sample_function_default_argument <- function(i=10)
{
  result <- i+5
  print(result)
}
sample_function_default_argument()
sample_function_default_argument(20)

# MANIPULATING STRINGS

string_1 <- 'Hello'
string_2 <- 'World'
 # concatenation
   paste(string_1,string_2)
   paste('Hello','World')

 # lower case
   tolower('Hello')
   tolower(string_2)
   tolower('HAI')
   
 # upper case
   toupper(string_1)
   toupper('World')

 # length 
   nchar('Hello')
   nchar('Hello World')
   nchar(string_2)

 # substring
   substr('Hello World',1,5)
   substr(string_1,4,5)
 
# CREATING DATAFRAME
   
   names <- c('car','jeep','bus')
   values <- factor(c('black','red','white'))
   names
   values
   class(values)
   data_frame <- data.frame(names,values)
   data_frame
   
  names <- c('cycle','car','van')
  values <- factor(c('green','yellow','orange')) 
  data_frame1 <- data.frame(names,values)
  data_frame1
  
#R BIND(combing dataframes with common columns)
  rbind(data_frame,data_frame1)

#C BIND(when column names are different)
  names_1 <- c('cycle','car','van')
  data_frame2 <-data.frame(names_1,values)
  data_frame2
cbind(data_frame,data_frame2)  
