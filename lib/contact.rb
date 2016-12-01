class Contact
  attr_reader(:first_name, :last_name, :job_title)
  define_method(:initialize) do |attribute|
    @first_name = attribute.fetch(:first_name)
    @last_name = attribute.fetch(:last_name)
    @job_title = attribute.fetch(:job_title)
  end

end
