require 'diary'
require 'diary_entry'
require 'todo_list'
require 'todo'
require 'contacts'
require 'contact'

RSpec.describe "integration" do
  it "can add entries" do
    diary = Diary.new
    entry_1 = DiaryEntry.new("First entry", "This is the first entry.")
    entry_2 = DiaryEntry.new("Second entry", "This is the second entry.")
    diary.add_entry(entry_1)
    diary.add_entry(entry_2)
    expect(diary.all_entries).to eq [entry_1, entry_2]
  end

  it "can add todos" do
    tasks = TodoList.new
    task_1 = Todo.new("Buy yarn")
    task_2 = Todo.new("Buy crochet pattern")
    tasks.add(task_1)
    tasks.add(task_2)
    expect(tasks.todo_list).to eq [task_1, task_2]

  end

  it "can add contacts" do
    contacts = Contacts.new
    contact_1 = Contact.new("Thomas Shelby", 07000000000)
    contact_2 = Contact.new("Cilian Murphy", 07000000000)
    contacts.add(contact_1)
    contacts.add(contact_2)
    expect(contacts.contacts).to eq [contact_1, contact_2]
  end

  it "can add contacts to the diary" do
    contact_1 = Contact.new("Thomas Shelby", 07000000000)
    contact_2 = Contact.new("Cilian Murphy", 07000000000)
    diary = Diary.new
    diary.add_contact(contact_1)
    diary.add_contact(contact_2)
    expect(diary.contact).to eq [contact_1, contact_2]
  end

  describe "best entry for reading time behaviour" do
    it "fails when wpm is zero" do
      diary = Diary.new
      entry_1 = DiaryEntry.new("my_title_1", "one")
      diary.add_entry(entry_1)
      expect { diary.find_best_entry_for_reading_time(0, 2)}.to raise_error "Error! Words per minute must be greater than zero!"
    end

    context "where we just have one entry and it is readable in the time" do
      it "returns that entry" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my_title_1", "one two")
        diary.add_entry(entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq entry_1
      end
    end

    context "where we just have one entry and it is unreadable in the time" do
      it "returns nil" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my_title_1", "one two three")
        diary.add_entry(entry_1)
        result = diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq nil
      end
    end

    context "where we have multiple entries" do
      it "returns the longest readable entry" do
        diary = Diary.new
        entry_1 = DiaryEntry.new("my_title_1", "one")
        entry_2 = DiaryEntry.new("my_title_2", "two three")
        entry_3 = DiaryEntry.new("my_title_3", "four five six")
        entry_4 = DiaryEntry.new("my_title_4", "seven eight nine ten")
        diary.add_entry(entry_1)
        diary.add_entry(entry_2)
        diary.add_entry(entry_3)
        diary.add_entry(entry_4)
        expect(diary.find_best_entry_for_reading_time(1, 3)).to eq entry_3
      end
    end

  end

end