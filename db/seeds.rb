# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# t.string   "first_name"
# t.string   "last_name"
# t.string   "eye_color"
# t.date     "date_of_birth"
# t.integer  "height_in_inches"
# t.boolean  "awesome"
# t.datetime "created_at"
# t.datetime "updated_at"

# Technique #1, Using new, setting attributes with .save
  3.times do
    person=Person.new
    person.first_name = 6.times.map{(97 + rand(26)).chr }.join.capitalize
    person.last_name = 8.times.map{ [*'a'..'z'].sample }.join.capitalize
    person.eye_color = [:hazel, :gray, :green, :brown, :blue].sample
    person.date_of_birth = Date.today-rand(10000)
    person.height_in_inches = [*58..69].sample
    person.awesome = [true, false].sample
    person.save
  end

# Technique #2, Using new with a hash, then calling .save
  3.times do
     person=Person.new(
       first_name: 6.times.map { (97 + rand(26)).chr }.join.capitalize,
       last_name: 8.times.map { [ *'a'..'z'].sample }.join.capitalize,
       eye_color: [:hazel, :gray, :green, :brown, :blue].sample,
       date_of_birth: Date.today-rand(10000),
       #  date_of_birth = Date.new(rand(1950...2013), rand(12), rand(30))
       height_in_inches: [*58..69].sample,
       awesome: [true, false].sample
      )
     person.save
  end

# Technique 3 using .create. Could modify this to use data structures above...
  Person.create([{
           first_name: 'Mary',
            last_name: 'McInerny',
            eye_color: 'green',
        date_of_birth: '02/03/78',
     height_in_inches: '66',
              awesome: true,
  }])
  Person.create([{
            first_name: 'Clarissa',
             last_name: 'Rowe',
             eye_color: 'blue',
         date_of_birth: '04/10/65',
      height_in_inches: '78',
               awesome: false,
  }])

  Person.create([{
           first_name: 'Joe',
            last_name: 'Example',
            eye_color: 'green',
        date_of_birth: '02/12/88',
     height_in_inches: 63,
              awesome: false,
  }])
