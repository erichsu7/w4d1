require 'addressable/uri'
require 'rest-client'

def create_user

  all_users_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users.json'
  ).to_s

  my_user_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/users/8/contacts.json'
  ).to_s

  all_contacts_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts.json'
  ).to_s

  my_contact_url = Addressable::URI.new(
  scheme: 'http',
  host: 'localhost',
  port: 3000,
  path: '/contacts/1.json'
  ).to_s

  #index
  # puts RestClient.get(all_users_url)
  # puts RestClient.get(all_contacts_url)

  #create
  # puts RestClient.post(all_users_url, {user: {username: "newuser"}})
  # puts RestClient.post(all_contacts_url, {contact: {name: "New Guy", email: 'newguy@guy.com', user_id: 1}})

  #show
  # puts RestClient.get(user_url)
  # puts RestClient.get(my_contact_url)

  #update
  # puts RestClient.put(my_user_url, {user: {username: "F"}})
  # puts RestClient.put(my_contact_url, {contact: {email: "e@2.com"}})

  #destroy
  # puts RestClient.delete(my_user_url)
  # puts RestClient.delete(my_contact_url)

  puts RestClient.get(my_user_url)



end

create_user
