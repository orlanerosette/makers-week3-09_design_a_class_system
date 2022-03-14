class Task
  def initialize(title) # task is a string
    # by default the task is not completed
    @task = title
    @done = false
  end

  def title
    # returns the title as a string
    return @task
  end

  def mark_complete
    # marks the task as completed
    # returns nothing
    @done = true
  end

  def completed?
    # returns true if task is completed
    # else returns false
    return @done
  end

end