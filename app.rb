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
