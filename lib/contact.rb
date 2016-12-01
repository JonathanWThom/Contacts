class Contact
  attr_reader (:first_name)
  define_method(:initialize) do |attribute|
    @first_name = attribute.fetch(:first_name)
  end

end
