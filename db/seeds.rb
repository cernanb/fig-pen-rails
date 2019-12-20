# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

require 'csv'
require 'open-uri'

pins = File.new(open('figpin2.csv', read_timeout: 360))
CSV.foreach(pins.path, headers: true) do |row|
    if row["Name"] != "TBD" 
        line = Line.find_or_create_by(name: row["Reference"])
        pin = Pin.create(name: row["Name"], figpin_id: row["#"], line: line)
    end
end
pins2 = File.new(open('figpin3.csv', read_timeout: 360))
CSV.foreach(pins2.path, headers: true) do |row|
    if row["Name"] != "TBD" 
        line = Line.find_or_create_by(name: row["Reference"])
        pin = Pin.create(name: row["Name"], figpin_id: row["#"], line: line)
    end
end
pins3 = File.new(open('figpin4.csv', read_timeout: 360))
CSV.foreach(pins3.path, headers: true) do |row|
    if row["Name"] != "TBD" 
        line = Line.find_or_create_by(name: row["Reference"])
        pin = Pin.create(name: row["Name"], figpin_id: row["#"], line: line)
    end
end