class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :job_title, :company_name)
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company_name = attributes.fetch(:company_name)
  end

  define_singleton_method(:all) do
    @@contacts
  end

end
