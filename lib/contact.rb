class Contact
  @@contacts = []

  attr_reader(:first_name, :last_name, :job_title, :company_name, :addresses, :id, :phone_numbers, :emails)
  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @job_title = attributes.fetch(:job_title)
    @company_name = attributes.fetch(:company_name)
    @id = @@contacts.length + 1
    @addresses = []
    @phone_numbers =[]
    @emails = []
  end

  define_singleton_method(:all) do
    @@contacts
  end

  define_method(:save) do
    @@contacts.push(self)
  end

  define_singleton_method(:clear) do
    @@contacts = []
  end

  define_singleton_method(:find) do |id_number|
    found_contact = nil
    @@contacts.each() do |contact|
      if contact.id() == id_number
        found_contact = contact
      end
    end
    found_contact
  end

  define_method(:add_address) do |address|
    @addresses.push(address)
  end

  define_method(:add_phone_number) do |phone_number|
    @phone_numbers.push(phone_number)
  end

  define_method(:add_email) do |email|
    @emails.push(email)
  end
end
