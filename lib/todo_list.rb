class TodoList
  def initialize
    # initalise empty todo list array
    @todo_list = []
  end

  def add(todo)
    # adds a todo to the todo list array
    @todo_list << todo
  end

  def todo_list
    # returns todo list
    return @todo_list
  end
end