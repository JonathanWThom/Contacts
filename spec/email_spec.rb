require('rspec')
require('email')

describe(Email) do
  before do
    Email.clear()
    @test_email = Email.new({:email_address => "zuckerberg@gmail.com", :email_type => "Work"})
  end

  describe('#email_address') do
    it('will return the email address') do
      expect(@test_email.email_address()).to(eq("zuckerberg@gmail.com"))
    end
  end

  describe('#email_type') do
    it('will return the email type') do
      expect(@test_email.email_type()).to(eq("Work"))
    end
  end

  describe('.all') do
    it('will be empty at first') do
      expect(Email.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('it will save an email') do
      @test_email.save()
      expect(Email.all()).to(eq([@test_email]))
    end
  end

  describe('.clear') do
    it('it will clear out the emails') do
      @test_email.save()
      Email.clear()
      expect(Email.all()).to(eq([]))
    end
  end
end
