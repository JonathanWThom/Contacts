require('rspec')
require('contact')

describe(Contact) do

  describe("#first_name")do
    it("return the first name of the contact object") do
      test_contact = Contact.new({:first_name => "bob", :last_name => "Lablah"})
      expect(test_contact.first_name()).to(eq("bob"))
    end
  end

  describe("#last_name")do
    it("return the last name of the contact object") do
      test_contact = Contact.new({:first_name => "bob", :last_name => "Lablah"})
      expect(test_contact.last_name()).to(eq("Lablah"))
    end
  end
end
