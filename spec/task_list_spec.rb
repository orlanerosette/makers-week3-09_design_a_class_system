require 'task_list'

RSpec.describe TaskList do
  context "no tasks are added" do
    it "returns an empty list" do
      tasks = TaskList.new
      expect(tasks.all).to eq  []
    end

    it "returns an empty completed list" do
      tasks = TaskList.new
      expect(tasks.completed).to eq  []
    end
  end

end