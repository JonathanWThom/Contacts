require('rspec')
require('address')

describe(Address) do
  before() do
    Address.clear()
    @test_address = Address.new({:street_address => "100 NE Waffle St.", :city => 'Springfield', :state => 'Oregon', :zip => '12345', :type => 'Home'})
  end

  describe("#street_address") do
    it("return the street address") do
      expect(@test_address.street_address()).to(eq("100 NE Waffle St."))
    end
  end

  describe("#city") do
    it('return the city') do
      expect(@test_address.city()).to(eq('Springfield'))
    end
  end

  describe("#state") do
    it('return the state') do
      expect(@test_address.state()).to(eq('Oregon'))
    end
  end

  describe("#zip") do
    it('return the zip') do
      expect(@test_address.zip()).to(eq('12345'))
    end
  end

  describe("#type") do
    it('return the type') do
      expect(@test_address.type()).to(eq('Home'))
    end
  end

  describe(".all") do
    it('will be empty at first') do
      expect(Address.all()).to(eq([]))
    end
  end

  describe("#save") do
    it('will save a new address') do
      @test_address.save()
      expect(Address.all()).to(eq([@test_address]))
    end
  end

  describe(".clear") do
    it('will clear all addresses') do
      @test_address.save()
      Address.clear()
      expect(Address.all()).to(eq([]))
    end
  end
end
