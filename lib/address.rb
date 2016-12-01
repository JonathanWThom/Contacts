class Address
  attr_reader(:street_address, :city)

  define_method(:initialize) do |attributes|
    @street_address = attributes.fetch(:street_address)
    @city = attributes.fetch(:city)
  end
end
