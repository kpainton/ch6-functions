# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(str1, str2) {
  distance <- abs(nchar(str1) - nchar(str2))
  small <- min(nchar(str1), nchar(str2))
  distance >= small * 2
}  

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!
is_twice_as_long("cat","pig")
is_twice_as_long("hello", "i")
is_twice_as_long("hi","hi")
is_twice_as_long("helllllllo", "hello")
is_twice_as_long("one","oneoneone")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(one,two) {
  difference <- nchar(one) - nchar(two)
  if (difference > 0) {
      sentence <- paste("Your first string is longer by", difference, "characters")
  } else if (difference < 0) {
      sentence <- paste("Your second string is longer by", -difference, "characters")
  } else {
    sentence <- "Your strings are the same length"
  }
  sentence
  }

# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("cat","hat")
describe_difference("he", "didca")
describe_difference("yesve","p")
