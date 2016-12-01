class Email
  attr_reader(:email_address, :email_type)
  define_method(:initialize) do |attributes|
    @email_address = attributes.fetch(:email_address)
    @email_type = attributes.fetch(:email_type)
  end
end
