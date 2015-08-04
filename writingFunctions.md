*How to write functions in R

Functions allow you to simplify complex tasks, which is especially useful if you need to run a task multiple times. R has many, many functions built in. R packages (or libraries) are collections of functions that help further simplify tasks. As tasks become more complex, however, it is inevitable that you will have to customize your own or existing functions to suit your needs.
**Running a built-in function
Consider a vector, x, that contains 6 numbers: 1, 1, 2, 3, 5, and 8. If you wanted to add up all of the elements in x, you could either add elements individually, as you could on a calculator, or simply use the built-in “sum” function. To run a function, you type the name of the function and then parentheses enclosing the object that you wish to run the function on.
```
1+1+2+3+5+8
sum(x)
```
**Writing simple functions
Writing your own functions is easy, as long as you follow the correct syntax. The basic structure is:

```
theNameOfMyFunction <- function(objectToComputeFunctionFor) {
What you would like to happen when you run your function
}
```
Note: The curly brackets above are only necessary if your function is more  than one line. If your function is one line you do not need to include them.
Let’s write a function that adds 1 to every number in our vector x above.

```
addOneFun <- function (x) x + 1
```

Which could also be written as

```
addOneFun <- function(x){
	x+1
}
```
Both function can be run as:

```
addOneFun(x)
```
Writing and running your own functions is really as simple as that. A couple of tricks along the way though:

If you assign a name to function output, it is necessary to tell R to return that value. For example, the following function will not return any data:

```
addOneFun <- function(x){
	xPlusOne <- x+1
}
```
To get the output, you need to add “return”:

```
addOneFun <- function(x){
	xPlusOne <- x+1
	return(xPlusOne)
}
```
Additionally, R will not automatically store intermediate results. Let’s consider a function that multiplies the “plus one” by two:
```
addOneFun <- function(x){
	xPlusOne <- x+1
	xPlusOneTimesTwo <- xPlusOne*2
	return(xPlusOneTimesTwo)
}
```


xPlusOne will be nowhere to be found in your environment! This may seem like a hiccup, but it’s actually very useful when you are running big datasets and need to conserve your systems memory. If you do want to see the intermediate results (for example while debugging a formula), you could assign with the symbol “<<-“ to store the object on your workspace:

```
addOneFun <- function(x){
	xPlusOne <<- x+1
	xPlusOneTimesTwo <- xPlusOne*2
	return(xPlusOneTimesTwo)
}
```

Some software carpentry best management practices. It’s highly unlikely that you will get hit in the head with a meteorite, but it is a non-zero probability. As this is the case, you’ll undoubtedly want to leave your code behind as your legacy. Make sure to either name variables in such a way that future generations can understand what you’ve done, or provided comments (“#”) to your script to explain each step. I feel I’ve done well with my naming, but if I wanted to be sure, I could write the function as:

```
addOneFun <- function(x){
	# Add one to x:
		xPlusOne <<- x+1
	# Multiple the new x+1 vector by two:
		xPlusOneTimesTwo <- xPlusOne*2
	# Provide output:
		return(xPlusOneTimesTwo)
}
```

