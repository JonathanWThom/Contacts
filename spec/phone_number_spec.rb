require('rspec')
require('phone_number')

describe(Phone_number)do
    describe("#number") do
      it('return the digits for the phone number') do
        test_number = Phone_number.new({:number => "1231234", :area => "503", :type => "home"})
        expect(test_number.number()).to(eq("1231234"))
      end
    end

    describe("#area") do
      it('return the area code for the phone number') do
        test_number = Phone_number.new({:number => "1231234", :area => "503", :type => "home"})
        expect(test_number.area()).to(eq("503"))
      end
    end

    describe("#type") do
      it('return the type of phone number') do
        test_number = Phone_number.new({:number => "1231234", :area => "503", :type => "home"})
        expect(test_number.type()).to(eq("home"))
      end
    end
end
