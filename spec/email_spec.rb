require('rspec')
require('email')

describe(Email) do
  before do
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
end
