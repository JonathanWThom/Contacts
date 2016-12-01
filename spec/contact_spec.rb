require('rspec')
require('contact')
require('address')

describe(Contact) do
  before() do
    Contact.clear()
    @test_contact = Contact.new({:first_name => "bob", :last_name => "Lablah", :job_title => "programmer", :company_name => "epicodus"})
  end

  describe("#first_name")do
    it("return the first name of the contact object") do
      expect(@test_contact.first_name()).to(eq("bob"))
    end
  end

  describe("#last_name")do
    it("return the last name of the contact object") do
      expect(@test_contact.last_name()).to(eq("Lablah"))
    end
  end

  describe("#job_title")do
    it("return the job title of the contact object") do
      expect(@test_contact.job_title()).to(eq("programmer"))
    end
  end
  describe("#company_name")do
    it("return the name of the company the object works for") do
      expect(@test_contact.company_name()).to(eq("epicodus"))
    end
  end

  describe(".all") do
    it('will be empty at first') do
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('will save a new contact to the contacts list') do
      @test_contact.save()
      expect(Contact.all()).to(eq([@test_contact]))
    end
  end

  describe(".clear") do
    it('will clear contacts list') do
      @test_contact.save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe("#id") do
    it('will return the id of a contact') do
      @test_contact.save()
      expect(@test_contact.id()).to(eq(1))
    end
  end

  describe(".find") do
    it('will return the correct contact based on id number') do
      @test_contact.save()
      other_contact = Contact.new({:first_name => "billy", :last_name => "blah", :job_title => "not a programmer", :company_name => "!epicodus"})
      other_contact.save()
      expect(Contact.find(@test_contact.id())).to(eq(@test_contact))
    end
  end

  describe("#add_address") do
    it('will add an adress to a speciffic contact') do
      new_address = Address.new(:street_address => "Waffle")
      @test_contact.add_address(new_address)
      expect(@test_contact.addresses()).to(eq([new_address]))

    end
  end
end
