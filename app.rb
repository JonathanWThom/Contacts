require('sinatra')
require('sinatra/reloader')
require('./lib/contact')
require('./lib/address')
require('./lib/phone_number')
require('./lib/email')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/contacts/add') do
  erb(:new_contact_form)
end

post('/contacts') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  job_title = params.fetch('job_title')
  company_name = params.fetch('company')
  Contact.new(:first_name => first_name, :last_name => last_name, :job_title => job_title, :company_name => company_name ).save()
  @contacts = Contact.all()
  erb(:success)
end

get('/contacts') do
  @contacts = Contact.all()
  erb(:contacts)
end

get('/contacts/:id') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:individual_contact)
end

get('/contacts/:id/address/add') do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:new_address_form)
end

post('/address') do
  street_address = params.fetch('street_address')
  city = params.fetch('city')
  state = params.fetch('state')
  zip = params.fetch('zip')
  type = params.fetch('type')
  @new_address = Address.new(:street_address => street_address, :city => city, :state => state, :zip => zip, :type => type)
  @new_address.save()
  @contact = Contact.find(params.fetch('contact_id').to_i())
  @contact.add_address(@new_address)
  erb(:success)
end

get("/contacts/:id/phone_number/add") do
  @contact = Contact.find(params.fetch('id').to_i())
  erb(:phone_form)
end

post("/phone_number") do
  area_code = params.fetch('area_code')
  phone_number = params.fetch('phone_number')
  type = params.fetch('type')
  @new_phone_number = Phone_number.new(:area => area_code, :number => phone_number, :type => type)
  @new_phone_number.save()
  @contact = Contact.find(params.fetch('contact_id').to_i())
  @contact.add_phone_number(@new_phone_number)
  erb(:success)
end
