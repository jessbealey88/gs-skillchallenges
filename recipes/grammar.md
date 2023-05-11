# grammar checker method design recipe


## 1. Describe the Problem

>As a user
>So that I can improve my grammar
>I want to verify that a text starts with a >capital letter and ends with a suitable >sentence-ending punctuation mark.


## 2. Design the Method Signature


```ruby
result = grammar_checker(text)


# Text is a string with words in it. 

# result is a message confirming whether or not the grammar of the text is correct.

```

## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
#1
grammar_checker("")
# => fail "Not a sentence."
# 2
grammar_checker("Hello, my name is Jess.")
# => "This text has good grammar."

# 3
grammar_checker("hello,my name is Jess.")
# => "This text has poor grammar."


# 4
grammar_checker("Hello, my name is Jess")
# => "This text has poor grammar."

# 5
grammar_checker("Hello, my name is Jess!")
# => "This text has good grammar."

#6
grammar_chceker("Hello, my name is Jess,")
# => "This text has poor grammar."







```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._

