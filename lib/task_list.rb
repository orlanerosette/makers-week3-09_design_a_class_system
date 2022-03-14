class TaskList
  def initialize
    @tasks = []
  end
  def add(todo_task)
    @tasks << todo_task

  end

  def all
    # returns a list of TodoTask instances
    # but only the non-completed ones
    return @tasks.select do |task|
      task.completed? == false
    end
    return @tasks
  end

  def completed
    # returns a list of TodoTask instances
    # But only the completed ones
    return @tasks.select { |task| task.completed? }
  end
end
