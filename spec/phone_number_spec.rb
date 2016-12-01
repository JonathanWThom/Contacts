require('rspec')
require('phone_number')

describe(Phone_number)do
    describe("#number") do
      it('return the digits for the phone number') do
        test_number = Phone_number.new({:number => "1231234"})
        expect(test_number.number()).to(eq("1231234"))
      end
    end
end
