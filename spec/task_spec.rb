require 'task'

RSpec.describe Task do
  it "returns the task" do
    task = Task.new("Buy yarn")
    expect(task.title).to eq "Buy yarn"
  end

  it "returns false if task is not completed" do
    task = Task.new("Buy yarn")
    expect(task.completed?).to eq false
  end

  it "returns true if task is completed" do
    task = Task.new("Buy yarn")
    task.mark_complete
    expect(task.completed?).to eq true
  end

end