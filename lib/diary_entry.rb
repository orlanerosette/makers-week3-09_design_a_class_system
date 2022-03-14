class DiaryEntry
  def initialize(title, contents)
    # initialise with a diary entry containing the title and the contents
    @title = title
    @contents = contents
  end

  def title
    # returns title
    return @title
  end

  def contents
    # returns contents
    return @contents
  end

  def count_words
    return 0 if @contents.empty?
    return @contents.count(" ") + 1
  end

  def reading_time(wpm)
    fail "Error! Words per minute must be greater than zero!" unless wpm.positive?
    return (count_words / wpm.to_f).ceil
  end

end