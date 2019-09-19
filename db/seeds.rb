# count = 1

# # Contact.destroy_all 

# 10.times do
#   generated_first_name = Faker::Name.first_name
#   generated_last_name = Faker::Name.last_name



#   contact = Contact.new(
#                         first_name: Faker::Name.first_name,
#                         last_name: Faker::Name.last_name,
#                         email: Faker::Internet.free_email(name: "#{generated_first_name}.#{generated_last_name}"),
#                         phone_number: Faker::PhoneNumber.phone_number
#                         )

#   contact.save
#   puts "#{count} - #{generated_last_name} #{generated_last_name}"
#   count += 1
# end 

group_names = ["friends", "family", "business", "New York, San Francisco, Chicago, speed dial"]

group_names.each do |group_name|
  Group.create(name:group_name)
end 

group_ids = Group.pluck(:id)

Contact.all.each do |contact|
  selected_group_ids = group_ids.sample(rand(2..5))
  selected_group_ids.each do |selected_group_id|
    GroupContact.create(contact_id: contact.id, group_id: selected_group_id)
    puts "Contact: #{contact.id}. Group: #{selected_group_id}"
  end 
end 