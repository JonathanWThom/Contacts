class Contact
  attr_reader(:first_name, :last_name)
  define_method(:initialize) do |attribute|
    @first_name = attribute.fetch(:first_name)
    @last_name = attribute.fetch(:last_name)
  end

end
