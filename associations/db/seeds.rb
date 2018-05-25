# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


[
	"Power",
	"Space",
	"Reality",
	"Mind",
	"Time",
	"Soul"].each_with_index do |v,i|
		Category.create!(id:(i+1),name:v)
	end