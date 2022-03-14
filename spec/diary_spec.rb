require 'diary'

RSpec.describe Diary do
  context "it is empty" do
    it "returns an empty diary" do
      diary = Diary.new
      expect(diary.all_entries).to eq []
    end
  end

end