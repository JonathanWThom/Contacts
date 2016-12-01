require('rspec')
require('address')

describe(Address) do
  before() do
    @test_address = Address.new({:street_address => "100 NE Waffle St."})
  end
  describe("#street_address") do
    it("return the street address") do
      expect(@test_address.street_address()).to(eq("100 NE Waffle St."))
    end
  end
end
