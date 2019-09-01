require_relative 'contacts'
require 'colorize'

def test_add_contact_one
  # setup
  contacts = [
    {
      name: "Harrison Malone",
      phone: "+617748932",
      work: "Educator at Coder Academy",
      work_address: "120 Spencer Street"
    }
  ]
  # method calls
  original_length = contacts.length
  result = add_contact(contacts)
  result_length = result.length
  if original_length < result_length
    return "Test passes!".colorize(:green)
  else 
    return "Test fails".colorize(:red)
  end  
end 

def test_add_contact_two
  contacts = [
    {
      name: "Harrison Malone",
      phone: "+617748932",
      work: "Educator at Coder Academy",
      work_address: "120 Spencer Street"
    }
  ]
  result = add_contact(contacts)
  if result.class == String
    return "Test passes!".colorize(:green)
  else 
    return "Test fails 😭".colorize(:red)
  end  
end 

# test one
puts test_add_contact_one

# test_two
puts test_add_contact_two