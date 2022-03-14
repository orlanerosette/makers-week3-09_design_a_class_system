class Diary
  def initialize
    @entries = []
    @contacts = []
  end

  def add_entry(entry)
    # adds a diary entry to the diary object
    @entries << entry
  end

  def add_contact(contact)
    # adds a contact to the diary object
    @contacts << contact
  end

  def entry
    # returns a given entry
    # return @entries.select { |element| element == entry }
  end

  def all_entries
    # returns all entries
    return @entries

  end

  def contact
    # returns a given contact
    return @contacts
  end

  def count_words
    return @entries.sum(&:count_words)
  end

  def reading_time(wpm)
    fail "Error! Words per minute must be greater than zero!" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    fail "Error! Words per minute must be greater than zero!" unless wpm.positive?
    # returns the best entry that can be read within the time frame
    # and suitable with the given reading speed
    readable_entries(wpm, minutes).max_by(&:count_words)
  end

  private 

  def readable_entries(wpm, minutes)
    return @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
  end

end
