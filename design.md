# Multi-class Planned Design Recipe

## 1. Describe the problem

> As a user
> So that I can record my experiences
> I want to keep a regular diary

> As a user
> So that I can reflect on my experiences
> I want to read my past diary entries

> As a user
> So that I can reflect on my experiences in my busy day
> I want to select diary entries to read based on how much time I have and my reading speed

> As a user
> So that I can keep track of my tasks
> I want to keep a todo list along with my diary

> As a user
> So that I can keep track of my contacts
> I want to see a list of all of the mobile phone numbers in all my diary entries

## 2. Design the class system

```ruby

class Diary
  def add_entry(entry)
    # adds a diary entry to the diary object
  end

  def add_contact(contact)
    # adds a contact to the diary object
  end

  def entry(entry)
    # returns a given entry
  end

  def contact(contact)
    # returns a given contact
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    # returns the best entry that can be read within the time frame
    # and suitable with the given reading speed
  end
end

class DiaryEntry
  def initialize(title, contents)
    # initialise with a diary entry containing the title and the contents
  end

  def title
    # returns title
  end

  def contents
    # returns contents
  end
end

class TodoList
  def initalize
    # initalise empty todo list array
  end

  def add(todo)
    # adds a todo to the todo list array
  end

  def todo_list
    # returns todo list
  end
end

class Todo
  def initialize(task)
    # initialises the task
  end

  def task
    # returns the task
  end
end

class Contacts
  def initialize
    # initialise empty contacts array
  end

  def add(contact)
    # adds a contact to the contacts array
  end

  def contacts
    # returns contacts array
  end
end

class Contact
  def initialize(name, number)
    # initialise with name and number
  end

  def name
    # returns the name
  end

  def number
    # returns the number
  end
end
```