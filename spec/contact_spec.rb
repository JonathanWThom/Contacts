require('rspec')
require('contact')

describe(Contact) do
  describe("#name")do
    it("return the name of the contact object") do
      test_contact = Contact.new({:name => "bob"})
      expect(test_contact.name()).to(eq("bob"))
    end
  end
end
