class Contacts
  def initialize
    # initialise empty contacts array
    @contacts = []
  end

  def add(contact)
    # adds a contact to the contacts array
    @contacts << contact
  end

  def contacts
    # returns contacts array
    return @contacts
  end
end