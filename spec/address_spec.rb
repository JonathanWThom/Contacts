require('rspec')
require('address')

describe(Address) do
  before() do
    @test_address = Address.new({:street_address => "100 NE Waffle St.", :city => 'Springfield', :state => 'Oregon'})
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
end
