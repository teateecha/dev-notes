# Rules for a consistant C programming style
## Makros
i always use these Macros:
for if statements
```C
# define TRUE 1
# define FALSE 0
```
for function returns:
```C
# define FAIL 1
# define SUCCESS 0 
```

## if-statements
```C
	if (question == TRUE)
		do that;
	else if (funciont_return() == FALSE))
		do the other thing;
```
