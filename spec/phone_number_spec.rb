require('rspec')
require('phone_number')

describe(Phone_number) do
    before() do
      Phone_number.clear()
      @test_number = Phone_number.new({:number => "1231234", :area => "503", :type => "home"})
    end

    describe("#number") do
      it('return the digits for the phone number') do
        expect(@test_number.number()).to(eq("1231234"))
      end
    end

    describe("#area") do
      it('return the area code for the phone number') do
        expect(@test_number.area()).to(eq("503"))
      end
    end

    describe("#type") do
      it('return the type of phone number') do
        expect(@test_number.type()).to(eq("home"))
      end
    end

    describe(".all") do
      it('will be empty at first') do
        expect(Phone_number.all()).to(eq([]))
      end
    end

    describe("#save") do
      it('will save a new phone number') do
        @test_number.save()
        expect(Phone_number.all()).to(eq([@test_number]))
      end
    end

    describe(".clear") do
      it('will clear all phone numbers') do
        @test_number.save()
        Phone_number.clear()
        expect(Phone_number.all()).to(eq([]))
      end
    end

end
