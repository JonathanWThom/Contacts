require('rspec')
require('address')

describe(Address) do
  before() do
    @test_address = Address.new({:street_name => "Waffle"})
  end
  describe("#street_name") do
    it("return the street name of the address") do
      expect(@test_address.street_name()).to(eq("Waffle"))
    end
  end
end
