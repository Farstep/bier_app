# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require "csv"

# CSV.foreach('db/bier_id.csv', headers: true) do |row|
#   Bier.create(
#     deutsch_name: row['deutsch_name'],
#     name: row['name'],
#     percentage: row['percentage'],
#     area: row['area'],
#     style: row['style'],
#     explanation: row['explanation'],
#   )
# end

CSV.foreach('db/region_id.csv', headers: true) do |row|
  Region.create(
    name: row['name'],
    deutsch_name: row['deutsch_name'],
    region: row['region'],
  )
end

# CSV.foreach('db/land_id.csv', headers: true) do |row|
#   Land.create(
#     land: row['land'],
#     deutsch_name: row['deutsch_name'],
#     richtung: row['richtung'],
#   )
# end

