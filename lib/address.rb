class Address
  attr_reader(:street_name)

  define_method(:initialize) do |attributes|
    @street_name = attributes.fetch(:street_name)
  end
end
