class Address
  attr_reader(:street_address)

  define_method(:initialize) do |attributes|
    @street_address = attributes.fetch(:street_address)
  end
end
