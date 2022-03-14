require 'task_list'
require 'task'

RSpec.describe "integration" do
  it "adds tasks and lists them" do
    tasks = TaskList.new
    task_1 = Task.new("Buy yarn")
    task_2 = Task.new("Buy a knitting pattern")
    tasks.add(task_1)
    tasks.add(task_2)
    expect(tasks.all).to eq [task_1, task_2]
  end

  context "some tasks are completed" do
    it "removes completed tasks from the list of todos" do
      tasks = TaskList.new
      task_1 = Task.new("Buy yarn")
      task_2 = Task.new("Buy a knitting pattern")
      tasks.add(task_1)
      tasks.add(task_2)
      task_2.mark_complete
      expect(tasks.all).to eq [task_1]
    end

    it "lists completed tasks" do
      tasks = TaskList.new
      task_1 = Task.new("Buy yarn")
      task_2 = Task.new("Buy a knitting pattern")
      tasks.add(task_1)
      tasks.add(task_2)
      task_2.mark_complete
      expect(tasks.completed).to eq [task_2]
    end
  end

end