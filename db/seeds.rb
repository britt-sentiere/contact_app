count = 1

1000.times do
  generated_first_name = Faker::Name.first_name
  generated_last_name = Faker::Name.last_name



  contact = Contact.new(
                        first_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        email: Faker::Internet.free_email(name: "#{generated_first_name}.#{generated_last_name}"),
                        phone_number: Faker::PhoneNumber.phone_number
                        )

  contact.save
  puts "#{count} - #{generated_last_name} #{generated_last_name}"
  count += 1
end 