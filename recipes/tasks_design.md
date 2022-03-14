# Multi-class Planned Design Recipe

## 1. Describe the problem

> As a user
> So that I can keep track of my tasks
> I want a program that I can add todo tasks to and see a list of them.

> As a user
> So that I can focus on tasks to complete
> I want to mark tasks as complete and have them disappear from the list.

## 2. Design the class system


```
┌─────────────────────────────────┐
│ TodoList                        │
│ ---------                       │
│ - add                           │
│ - all                           │
│ - completed                     │
└─────────────┬───────────────────┘
              │
              │ TodoList has zero or more
              │ Todos
              │
 ┌────────────▼───────────────────┐
 │ Todo                       │
 │ ------                         │
 │ - mark_complete                │
 │ - title                        │
 │ - completed?                   │
 └────────────────────────────────┘

```

```ruby

class TodoList
  def add(todo_task)
  end

  def all
    # returns a list of TodoTask instances
    # but only the non-completed ones
  end

  def completed
    # returns a list of TodoTask instances
    # But only the completed ones
  end
end

class Todo
  def initialize(task) # task is a string
    # by default the task is not completed
  end

  def title
    # returns the title as a string
  end

  def mark_complete
    # marks the task as completed
    # returns nothing
  end

  def completed?
    # returns true if task is completed
    # else returns false
  end

end

```

## 3. Create examples as integration tests

```ruby
# 1. Can add todos
tasks = TodoList.new
task_1 = Todo.new("Buy yarn")
task_2 = Todo.new("Buy a knitting pattern")
tasks.add(task_1)
tasks.add(task_2)
tasks.all # => [task_1, task_2]

# 2. When a task is completed it is removed from the list of todos
tasks = TodoList.new
task_1 = Todo.new("Buy yarn")
task_2 = Todo.new("Buy a knitting pattern")
tasks.add(task_1)
tasks.add(task_2)
task_2.mark_complete
tasks.all # => [task_1]

# 3. Can view a list of completed tasks
tasks = TodoList.new
task_1 = Todo.new("Buy yarn")
task_2 = Todo.new("Buy a knitting pattern")
tasks.add(task_1)
tasks.add(task_2)
task_2.mark_complete
tasks.completed # => [task_2]

```

## 4. Create examples as unit tests

```ruby

# TodoList

# 1. with no tasks added
tasks = TodoList.new
tasks.all # => []

# 2. with no tasks added, list of completed should also be blank
tasks = TodoList.new
tasks.completed # => []

# Todo

# 1.
task = Task.new("Buy yarn")
task.title # => "Buy yarn"

# 2.
task = Task.new("Buy yarn")
task.completed? # => false

# 3.
task = Task.new("Buy yarn")
task.mark_complete
task.complete? # => true






```