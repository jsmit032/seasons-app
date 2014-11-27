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
# clothing categories
tops = Category.create(name: 'tops')
bottoms = Category.create(name: 'bottoms')
shoes = Category.create(name: 'shoes')
accessories = Category.create(name: 'accessories')
outerwear = Category.create(name: 'outerwear')
# weather categories
chanceflurries = Category.create(name: 'Chance of Flurries')
chancerain = Category.create(name: 'Chance of Rain')
chanceOfrain = Category.create(name: 'Chance Rain')
chancefreezingrain = Category.create(name: 'Chance of Freezing Rain')
chancesleet = Category.create(name: 'Chance of Sleet')
chancesnow = Category.create(name: 'Chance of Snow')
chancetstroms = Category.create(name: 'Chance of Thunderstorms')
chancetstrom = Category.create(name: 'Chance of a Thunderstorm')
clear = Category.create(name: 'Clear')
cloudy = Category.create(name: 'Cloudy')
flurries = Category.create(name: 'Flurries')
fog = Category.create(name: 'Fog')
haze = Category.create(name: 'Haze')
mostlycloudy = Category.create(name: 'Mostly Cloudy')
mostlysunny = Category.create(name: 'Mostly Sunny')
partlycloudy = Category.create(name: 'Partly Cloudy')
partlysunny = Category.create(name: 'Partly Sunny')
freezingrain = Category.create(name: 'Freezing Rain')
rain = Category.create(name: 'Rain')
sleet = Category.create(name: 'Sleet')
snow = Category.create(name: 'Snow')
sunny = Category.create(name: 'Sunny')
thunderstroms = Category.create(name: 'Thunderstorms')
thunderstrom = Category.create(name: 'Thunderstorm')
unknown = Category.create(name: 'Unknown')
overcast = Category.create(name: 'Overcast')
scatterdclouds = Category.create(name: 'Scattered Clouds')
# temperature categories
freezing = Category.create(name: 'freezing')
shivering = Category.create(name: 'shivering')
cold = Category.create(name: 'cold')
chilly = Category.create(name: 'chilly')
average = Category.create(name: 'average')
warm = Category.create(name: 'warm')
hot = Category.create(name: 'hot')
dying = Category.create(name: 'dying')

#clothing types
clothing = Clothing.create([{clothing_type: 'tshirt', category: [tops, average]}, {clothing_type: 'shorts', category: [bottoms, warm]}, {clothing_type: 'jeans', category: [bottoms, chilly]}, {clothing_type: 'tank top', category: [tops, warm]}, {clothing_type: 'sweater', category: [outerwear, chilly]}, {clothing_type: 'scarf', category: [accessories, cold]}, {clothing_type: 'boots', category: [shoes, chilly]}, {clothing_type: 'sandals', category: [shoes, hot]}, {clothing_type: 'long-sleeve', category: [tops, cold]}, {clothing_type: 'turtleneck', category: [tops, shivering]}, {clothing_type: 'long johns', category: [tops, freezing]}, {clothing_type: 'three-forths sleeve', category: [tops, average]}, {clothing_type: 'undershirt', category: [tops, freezing]}, {clothing_type: 'sweat pants', category: [bottoms, chilly]}])

