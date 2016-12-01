require('rspec')
require('contact')

describe(Contact) do

  describe("#first_name")do
    it("return the first name of the contact object") do
      test_contact = Contact.new({:first_name => "bob"})
      expect(test_contact.first_name()).to(eq("bob"))
    end
  end

  describe("#")
end
