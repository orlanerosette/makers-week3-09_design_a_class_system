require 'contact'

RSpec.describe Contact do
  it "returns name" do
    contact_1 = Contact.new("Thomas Shelby", 07000000000)
    expect(contact_1.name).to eq "Thomas Shelby"
  end
  it "returns number" do
    contact_1 = Contact.new("Thomas Shelby", 07000000000)
    expect(contact_1.number).to eq 07000000000
  end
end