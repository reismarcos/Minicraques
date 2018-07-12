# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
csv_text = File.read(Rails.root.join('lib', 'seeds', 'all.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-3166-2')
num = 0
csv.each do |row|
  t = Country.new
  t.name = row['name']
  t.flag = row['alpha-2'].downcase + ".png"
  t.id = num
  t.save
  num = num + 1
  puts "#{t.name} / #{t.flag} saved"
end

