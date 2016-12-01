class Contact
  attr_reader (:name)
  define_method(:initialize) do |attribute|
    @name = attribute.fetch(:name)
  end

end
