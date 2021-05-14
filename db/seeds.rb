# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
status = ["new hire", "junior", "senior", "trainee"]
departments = ["Sales", "Marketing", "Hospitality", "Accounting", "Safety"]
departments_code=["SLS", "MKT", "HOS", "ACT", "SFT"]
reviews = ["Decent", "The best in town", "Disappointed", "Average!"]
statuses = ["Asian", "European", "Latin", "African"]
8.times do |i|
    store_name = Faker::Company.name
  Store.create(name: "#{store_name} Grocery Store", description: "", status: statuses.sample, code: Faker::Code.npi, url: Faker::Internet.domain_name(domain: store_name), address: Faker::Address.street_address, city: Faker::Address.city,  state: Faker::Address.state, zip: Faker::Address.zip, country: Faker::Address.country)
end
puts "creating Store"
Store.all.each do |s|
    pointer = 0
    #Department
    5.times do |i|
        
        s.departments.create!(name: departments[pointer], description: "", code: departments_code[pointer])
        pointer += 1
    end
    puts "creating Department"
    
end

#Employee
Department.all.each do |d|
    10.times do |i|
        first_name = Faker::Name.first_name
        last_name = Faker::Name.last_name
        d.employees.create!(first_name: first_name, last_name: last_name, description: "", role: Faker::Company.profession, status: status.sample)
    end
end
#Review
200.times do |i|
    s = Store.all.sample
    d = Department.where("store_id = " + s.id.to_s).sample
    e = Employee.where("department_id = " + d.id.to_s).sample
    Review.create(store_id: s.id, employee_id: e.id, note: reviews.sample)
end
        