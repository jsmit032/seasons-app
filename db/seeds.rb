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
# cloudy = Category.create(name: 'Cloudy') redone below
flurries = Category.create(name: 'Flurries')
fog = Category.create(name: 'Fog')
haze = Category.create(name: 'Haze')
mostlycloudy = Category.create(name: 'Mostly Cloudy')
mostlysunny = Category.create(name: 'Mostly Sunny')
partlycloudy = Category.create(name: 'Partly Cloudy')
partlysunny = Category.create(name: 'Partly Sunny')
freezingrain = Category.create(name: 'Freezing Rain')
# rain = Category.create(name: 'Rain') redone below
sleet = Category.create(name: 'Sleet')
# snow = Category.create(name: 'Snow') redone below
# sunny = Category.create(name: 'Sunny') redone below
thunderstroms = Category.create(name: 'Thunderstorms')
thunderstrom = Category.create(name: 'Thunderstorm')
#unknown = Category.create(name: 'Unknown') redone below
overcast = Category.create(name: 'Overcast')
scatterdclouds = Category.create(name: 'Scattered Clouds')
#windy = Category.create(name: 'Windy') redone below

#Condition 6 Categories
rain = Category.create(name: 'Rain')
snow = Category.create(name: 'Snow')
windy = Category.create(name: 'Windy')
sunny = Category.create(name: 'Sunny')
cloudy = Category.create(name: 'Cloudy')
unknown = Category.create(name: 'Unknown')

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
boots = Clothing.create(clothing_type: 'boots')
sandals = Clothing.create(clothing_type: 'sandals')
longsleeve = Clothing.create(clothing_type: 'long-sleeve') 
turtleneck = Clothing.create(clothing_type: 'turtleneck')
longjohns = Clothing.create(clothing_type: 'long johns')
threeforths = Clothing.create(clothing_type: 'three-forths sleeve')
undershirt = Clothing.create(clothing_type: 'undershirt') 
sweatpants = Clothing.create(clothing_type: 'sweat pants')
longjohnspants = Clothing.create(clothing_type: 'long john pants')
skipants = Clothing.create(clothing_type: 'skipants')
cargo = Clothing.create(clothing_type: 'cargo pants')
capris = Clothing.create(clothing_type: 'capris')
umbrella = Clothing.create(clothing_type: 'umbrella')
scarf = Clothing.create(clothing_type: 'scarf')
gloves = Clothing.create(clothing_type: 'gloves')
beanie = Clothing.create(clothing_type: 'beanie')
skihat = Clothing.create(clothing_type: 'skihat')
cossak = Clothing.create(clothing_type: 'cossak')
bomberhat = Clothing.create(clothing_type: 'bomber hat')
ballcap = Clothing.create(clothing_type: 'ball cap')
leatherjacket = Clothing.create(clothing_type: 'leather jacket')
raincoat = Clothing.create(clothing_type: 'rain coat')
jacket = Clothing.create(clothing_type: 'jacket')
sportscoat = Clothing.create(clothing_type: 'sports coat')
windbreaker = Clothing.create(clothing_type: 'windbreaker')
blazer = Clothing.create(clothing_type: 'blazer')
skijacket = Clothing.create(clothing_type: 'ski jacket')
pancho = Clothing.create(clothing_type: 'pancho')
hoodie = Clothing.create(clothing_type: 'hoodie')
tennisshoes = Clothing.create(clothing_type: 'tennis shoes')
boatshoes = Clothing.create(clothing_type: 'boat shoe')
dressshoes = Clothing.create(clothing_type: 'dress shoes')
rainboots = Clothing.create(clothing_type: 'rain boots')
barefoot = Clothing.create(clothing_type: 'barefoot')
slippers = Clothing.create(clothing_type: 'slippers')
loafers = Clothing.create(clothing_type: 'loafers')
swimsuit = Clothing.create(clothing_type: 'swimsuit')
sunglasses = Clothing.create(clothing_type: 'sunglasses')

## add clothing to join table ##
#tshirt 
ClothingCategory.create(clothing: tshirt, category: tops)
ClothingCategory.create(clothing: tshirt, category: average)
ClothingCategory.create(clothing: tshirt, category: cloudy)
#shorts 
ClothingCategory.create(clothing: shorts, category: bottoms)
ClothingCategory.create(clothing: shorts, category: warm)
ClothingCategory.create(clothing: shorts, category: sunny)
#jeans 
ClothingCategory.create(clothing: jeans, category: bottoms)
ClothingCategory.create(clothing: jeans, category: chilly)
ClothingCategory.create(clothing: jeans, category: cloudy)
#tank
ClothingCategory.create(clothing: tank, category: tops)
ClothingCategory.create(clothing: tank, category: warm)
ClothingCategory.create(clothing: tank, category: sunny)
#sweater
ClothingCategory.create(clothing: sweater, category: outerwear)
ClothingCategory.create(clothing: sweater, category: chilly)
ClothingCategory.create(clothing: sweater, category: cloudy)
#scarf
ClothingCategory.create(clothing: scarf, category: accessories)
ClothingCategory.create(clothing: scarf, category: cold)
ClothingCategory.create(clothing: scarf, category: snow)
#boots
ClothingCategory.create(clothing: boots, category: shoes)
ClothingCategory.create(clothing: boots, category: chilly)
ClothingCategory.create(clothing: boots, category: cloudy)
#sandals
ClothingCategory.create(clothing: sandals, category: shoes)
ClothingCategory.create(clothing: sandals, category: hot)
ClothingCategory.create(clothing: sandals, category: sunny)
#long-sleeve
ClothingCategory.create(clothing: longsleeve, category: tops)
ClothingCategory.create(clothing: longsleeve, category: cold)
ClothingCategory.create(clothing: longsleeve, category: windy)
#turtleneck
ClothingCategory.create(clothing: turtleneck, category: tops)
ClothingCategory.create(clothing: turtleneck, category: shivering)
ClothingCategory.create(clothing: turtleneck, category: snow)
#longjohns
ClothingCategory.create(clothing: longjohns, category: tops)
ClothingCategory.create(clothing: longjohns, category: freezing)
ClothingCategory.create(clothing: longjohns, category: snow)
#threeforths
ClothingCategory.create(clothing: threeforths, category: tops)
ClothingCategory.create(clothing: threeforths, category: average)
ClothingCategory.create(clothing: threeforths, category: cloudy)
#undershirt
ClothingCategory.create(clothing: undershirt, category: tops)
ClothingCategory.create(clothing: undershirt, category: freezing)
#sweatpants
ClothingCategory.create(clothing: longsleeve, category: bottoms)
ClothingCategory.create(clothing: longsleeve, category: chilly)
#longjohnspants
ClothingCategory.create(clothing: longsleeve, category: bottoms)
ClothingCategory.create(clothing: longsleeve, category: freezing)
#skipants
ClothingCategory.create(clothing: skipants, category: bottoms)
ClothingCategory.create(clothing: skipants, category: freezing)
ClothingCategory.create(clothing: skipants, category: snow)
#cargo
ClothingCategory.create(clothing: cargo, category: bottoms)
ClothingCategory.create(clothing: cargo, category: average)
#capris
ClothingCategory.create(clothing: capris, category: bottoms)
ClothingCategory.create(clothing: capris, category: warm)
#umbrella
ClothingCategory.create(clothing: umbrella, category: rain)
#gloves
ClothingCategory.create(clothing: gloves, category: accessories)
ClothingCategory.create(clothing: gloves, category: cold)
ClothingCategory.create(clothing: gloves, category: snow)
#beanie
ClothingCategory.create(clothing: beanie, category: accessories)
ClothingCategory.create(clothing: beanie, category: chilly)
#skihat
ClothingCategory.create(clothing: skihat, category: accessories)
ClothingCategory.create(clothing: skihat, category: shivering)
ClothingCategory.create(clothing: skihat, category: windy)
#cossak
ClothingCategory.create(clothing: cossak, category: accessories)
ClothingCategory.create(clothing: cossak, category: freezing)
ClothingCategory.create(clothing: cossak, category: snow)
#bomberhat
ClothingCategory.create(clothing: bomberhat, category: accessories)
ClothingCategory.create(clothing: bomberhat, category: freezing)
#ballcap
ClothingCategory.create(clothing: ballcap, category: accessories)
ClothingCategory.create(clothing: ballcap, category: sunny)
#leather jacket
ClothingCategory.create(clothing: leatherjacket, category: outerwear)
ClothingCategory.create(clothing: leatherjacket, category: cold)
#rain coat
ClothingCategory.create(clothing: raincoat, category: outerwear)
ClothingCategory.create(clothing: raincoat, category: chilly)
ClothingCategory.create(clothing: raincoat, category: rain)
#jacket
ClothingCategory.create(clothing: jacket, category: outerwear)
ClothingCategory.create(clothing: jacket, category: cold)
#sports coat
ClothingCategory.create(clothing: sportscoat, category: outerwear)
#windbreaker
ClothingCategory.create(clothing: windbreaker, category: outerwear)
ClothingCategory.create(clothing: windbreaker, category: windy)
ClothingCategory.create(clothing: windbreaker, category: cold)
#blazer
ClothingCategory.create(clothing: blazer, category: outerwear)
#skijacket
ClothingCategory.create(clothing: skijacket, category: outerwear)
#pancho
ClothingCategory.create(clothing: pancho, category: outerwear)
#hoodie
ClothingCategory.create(clothing: hoodie, category: outerwear)
#tennis shoes
ClothingCategory.create(clothing: tennisshoes, category: shoes)
#boat shoes
ClothingCategory.create(clothing: boatshoes, category: shoes)
ClothingCategory.create(clothing: boatshoes, category: warm)
ClothingCategory.create(clothing: boatshoes, category: sunny)
#dress shoes
ClothingCategory.create(clothing: dressshoes, category: shoes)
#rain boots
ClothingCategory.create(clothing: rainboots, category: shoes)
ClothingCategory.create(clothing: rainboots, category: rain)
#barefoot
ClothingCategory.create(clothing: barefoot, category: shoes)
ClothingCategory.create(clothing: barefoot, category: dying)
ClothingCategory.create(clothing: barefoot, category: sunny)
#slippers
ClothingCategory.create(clothing: slippers, category: shoes)
ClothingCategory.create(clothing: slippers, category: snow)
#loafers
ClothingCategory.create(clothing: loafers, category: shoes)
ClothingCategory.create(clothing: loafers, category: windy)
#swimsuit
ClothingCategory.create(clothing: swimsuit, category: bottoms)
ClothingCategory.create(clothing: swimsuit, category: tops)
ClothingCategory.create(clothing: swimsuit, category: dying)
#sunglasses
ClothingCategory.create(clothing: sunglasses, category: accessories)
ClothingCategory.create(clothing: sunglasses, category: sunny)