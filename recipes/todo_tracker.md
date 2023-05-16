
# Describe the Problem
>As a user
>So that I can keep track of my tasks
>I want a program that I can add todo tasks to and see a list of them.

>As a user
>So that I can focus on tasks to complete
>I want to mark tasks as complete and have them disappear from the list.

# Design Class
class TodoList
  def initialize 
   # Initializes empty array for the list
  end

  def add(task) # task is a string
  # returns nothing
  end

  def list
  # Returns a list of the strings of tasks added
  # Does not include the completed tasks
  end

  def complete(task) # task is a string respresenting the task to mark as complete
  # Fails if the task doesn't exist
  end
end


# Examples as tests

# 1
todo_list = TodoList.new
todo_list.list # => []

# 2
todo_list = TodoList.new
todo_list.add("Do the laundry") 
todo_list.list # => ["Do the laundry"]

# 3
todo_list = TodoList.new
todo_list.add("Do the laundry") 
todo_list.add("Go to the gym")
todo_list.list # => ["Do the laundry", "Go to the gym"]

# 4
todo_list = TodoList.new
todo_list.add("Do the laundry") 
todo_list.add("Go to the gym")
todo_list.complete("Do the laundry") 
todo_list.list # => ["Do the laundry", "Go to the gym"]

# 5
todo_list = TodoList.new
todo_list.add("Do the laundry") 
todo_list.complete("Go to the gym")
todo_list.list # => fails "No such task."