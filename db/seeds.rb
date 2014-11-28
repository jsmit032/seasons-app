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
tshirt = Clothing.create(clothing_type: 'tshirt')
shorts = Clothing.create(clothing_type: 'shorts')
jeans = Clothing.create(clothing_type: 'jeans')
tank = Clothing.create(clothing_type: 'tank top')
sweater = Clothing.create(clothing_type: 'sweater')
scarf = Clothing.create(clothing_type: 'scarf')
boots = Clothing.create(clothing_type: 'boots')
sandals = Clothing.create(clothing_type: 'sandals')
longsleeve = Clothing.create(clothing_type: 'long-sleeve') 
turtleneck = Clothing.create(clothing_type: 'turtleneck')
longjohns = Clothing.create(clothing_type: 'long johns')
threeforths = Clothing.create(clothing_type: 'three-forths sleeve')
undershirt = Clothing.create(clothing_type: 'undershirt') 
sweatpants = Clothing.create(clothing_type: 'sweat pants')

## add clothing to join table ##
#tshirt 
ClothingCategory.create(clothing: tshirt, category: tops)
ClothingCategory.create(clothing: tshirt, category: average)
#shorts 
ClothingCategory.create(clothing: shorts, category: bottoms)
ClothingCategory.create(clothing: shorts, category: warm)
#jeans 
ClothingCategory.create(clothing: jeans, category: bottoms)
ClothingCategory.create(clothing: jeans, category: chilly)
#tank
ClothingCategory.create(clothing: tank, category: tops)
ClothingCategory.create(clothing: tank, category: warm)
#sweater
ClothingCategory.create(clothing: sweater, category: outerwear)
ClothingCategory.create(clothing: sweater, category: chilly)
#scarf
ClothingCategory.create(clothing: scarf, category: accessories)
ClothingCategory.create(clothing: scarf, category: cold)
#boots
ClothingCategory.create(clothing: boots, category: shoes)
ClothingCategory.create(clothing: boots, category: chilly)
#sandals
ClothingCategory.create(clothing: sandals, category: shoes)
ClothingCategory.create(clothing: sandals, category: hot)
#long-sleeve
ClothingCategory.create(clothing: longsleeve, category: tops)
ClothingCategory.create(clothing: longsleeve, category: cold)
#turtleneck
ClothingCategory.create(clothing: turtleneck, category: tops)
ClothingCategory.create(clothing: turtleneck, category: shivering)
#longjohns
ClothingCategory.create(clothing: longjohns, category: tops)
ClothingCategory.create(clothing: longjohns, category: freezing)
#threeforths
ClothingCategory.create(clothing: threeforths, category: tops)
ClothingCategory.create(clothing: threeforths, category: average)
#undershirt
ClothingCategory.create(clothing: undershirt, category: tops)
ClothingCategory.create(clothing: undershirt, category: freezing)
#sweatpants
ClothingCategory.create(clothing: longsleeve, category: bottoms)
ClothingCategory.create(clothing: longsleeve, category: chilly)
