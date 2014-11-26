# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# 	Weather.create([{destination_id: 1, hourly_forecast: 'Rainy with chance of meatballs'}, {destination_id: 2, hourly_forecast:'Sunny'}])
Clothing.destroy_all
Category.destroy_all

tops = Category.create(name: 'tops')
bottoms = Category.create(name: 'bottoms')
shoes = Category.create(name: 'shoes')
accessories = Category.create(name: 'accessories')
outerwear = Category.create(name: 'outerwear')

clothing = Clothing.create([{clothing_type: 'tshirt', category: tops}, {clothing_type: 'shorts', category: bottoms}, {clothing_type: 'jeans', category: bottoms}, {clothing_type: 'tank top', category: tops}, {clothing_type: 'sweater', category: outerwear}, {clothing_type: 'scarf', category: accessories}, {clothing_type: 'boots', category: shoes}])

