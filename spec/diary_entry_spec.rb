require 'diary_entry'

RSpec.describe DiaryEntry do
  it "returns title" do
    entry_1 = DiaryEntry.new("First entry", "This is the first entry.")
    expect(entry_1.title).to eq "First entry"
  end

  it "returns contents" do
    entry_1 = DiaryEntry.new("First entry", "This is the first entry.")
    expect(entry_1.contents).to eq "This is the first entry."
  end

  it "returns word count" do
    entry_1 = DiaryEntry.new("First entry", "This is the first entry.")
    expect(entry_1.count_words).to eq 5
  end

  context "reading time" do
    it "returns the reading time when given words per minute" do
      entry_1 = DiaryEntry.new("First entry", "This is the first entry.")
      expect(entry_1.reading_time(5)).to eq 1
    end
    it "fails when words per minute is zero" do
      entry_1 = DiaryEntry.new("First entry", "This is the first entry.")
      expect {entry_1.reading_time(0)}.to raise_error "Error! Words per minute must be greater than zero!"
    end
  end


end