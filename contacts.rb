def display_contacts(contacts)
  for contact in contacts
    puts "----------"
    puts "#{contact[:name]} #{contact[:phone]}"
    puts contact[:work]
    puts contact[:work_address]
    puts "----------"
  end 
end 

def add_contact(contacts)
  puts "whats the new contacts name"
  print "> "
  name = gets.strip
  puts "whats the new contacts number"
  print "> "
  phone = gets.strip
  puts "whats the new contacts workplace and title"
  print "> "
  work = gets.strip
  puts "whats the new contacts work address"
  print "> "
  work_address = gets.strip
  new_contact = {
    name: name,
    phone: phone,
    work: work,
    work_address: work_address
  }
  contacts << new_contact
end 

def edit_contact(contacts)
  puts "which user would you like to remove? (type full name including capitals)"
  for contact in contacts
    puts "----------"
    puts "#{contact[:name]}"
    puts "----------"
  end 
  print "> "
  contact_to_delete = gets.chomp
  index = 0
  for contact in contacts 
    if contact[:name] == contact_to_delete
      contacts.delete_at(index)
    end 
    index += 1
  end 
end 

def menu 
  puts "Contact App!"
  puts "1. View contacts"
  puts "2. Add contact"
  puts "3. Remove contact"
  puts "4. Exit"
  print "> "
  selection = gets.chomp.to_i
end 

def run(contacts)
  running = true
  while running 
    selection = menu  
    if selection == 4
      running = false
    elsif selection == 1
      display_contacts(contacts)
    elsif selection == 2 
      add_contact(contacts)
    elsif selection == 3
      edit_contact(contacts)
    end 
  end 
end 