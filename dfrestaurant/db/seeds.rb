# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#4 seaters
10.times do
    Table.create({capacity: 4})
end

#6 seaters
5.times do
    Table.create({capacity: 6})
end

#10 seaters
3.times do
    Table.create({capacity: 10})
end