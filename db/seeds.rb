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

#Condition 6 Categories
rain = Category.create(name: 'rain')
snow = Category.create(name: 'snow')
windy = Category.create(name: 'windy')
sunny = Category.create(name: 'sunny')
cloudy = Category.create(name: 'cloudy')
unknown = Category.create(name: 'unknown')

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
snowgloves = Clothing.create(clothing_type: 'snow gloves')
leathergloves = Clothing.create(clothing_type: 'leather gloves')
fabricgloves = Clothing.create(clothing_type: 'fabric gloves')
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
#shorts 
ClothingCategory.create(clothing: shorts, category: bottoms)
ClothingCategory.create(clothing: shorts, category: warm)
ClothingCategory.create(clothing: shorts, category: sunny)
#jeans 
ClothingCategory.create(clothing: jeans, category: bottoms)
ClothingCategory.create(clothing: jeans, category: chilly)
#tank
ClothingCategory.create(clothing: tank, category: tops)
ClothingCategory.create(clothing: tank, category: warm)
ClothingCategory.create(clothing: tank, category: sunny)
#sweater
ClothingCategory.create(clothing: sweater, category: outerwear)
ClothingCategory.create(clothing: sweater, category: chilly)
#scarf
ClothingCategory.create(clothing: scarf, category: accessories)
ClothingCategory.create(clothing: scarf, category: cold)
ClothingCategory.create(clothing: scarf, category: snow)
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
#longjohnspants
ClothingCategory.create(clothing: longsleeve, category: bottoms)
ClothingCategory.create(clothing: longsleeve, category: freezing)
#skipants
ClothingCategory.create(clothing: skipants, category: bottoms)
ClothingCategory.create(clothing: skipants, category: freezing)
#cargo
ClothingCategory.create(clothing: cargo, category: bottoms)
ClothingCategory.create(clothing: cargo, category: average)
#capris
ClothingCategory.create(clothing: capris, category: bottoms)
ClothingCategory.create(clothing: capris, category: warm)
#umbrella
ClothingCategory.create(clothing: umbrella, category: accessories)
ClothingCategory.create(clothing: umbrella, category: rain)
#leathergloves
ClothingCategory.create(clothing: leathergloves, category: accessories)
ClothingCategory.create(clothing: leathergloves, category: cold)
#fabricgloves
ClothingCategory.create(clothing: fabricgloves, category: accessories)
#snowgloves
ClothingCategory.create(clothing: snowgloves, category: accessories)
ClothingCategory.create(clothing: snowgloves, category: snow)
#beanie
ClothingCategory.create(clothing: beanie, category: accessories)
ClothingCategory.create(clothing: beanie, category: chilly)
#skihat
ClothingCategory.create(clothing: skihat, category: accessories)
ClothingCategory.create(clothing: skihat, category: shivering)
#cossak
ClothingCategory.create(clothing: cossak, category: accessories)
ClothingCategory.create(clothing: cossak, category: freezing)
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
ClothingCategory.create(clothing: raincoat, category: rain)
#jacket
ClothingCategory.create(clothing: jacket, category: outerwear)
ClothingCategory.create(clothing: jacket, category: cold)
#sports coat
ClothingCategory.create(clothing: sportscoat, category: outerwear)
#windbreaker
ClothingCategory.create(clothing: windbreaker, category: outerwear)
ClothingCategory.create(clothing: windbreaker, category: windy)
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
#dress shoes
ClothingCategory.create(clothing: dressshoes, category: shoes)
#rain boots
ClothingCategory.create(clothing: rainboots, category: shoes)
ClothingCategory.create(clothing: rainboots, category: rain)
#barefoot
ClothingCategory.create(clothing: barefoot, category: shoes)
ClothingCategory.create(clothing: barefoot, category: dying)
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