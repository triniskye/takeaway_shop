# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



burger_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/285/hamburger_1f354.png"
sandwich_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/325/sandwich_1f96a.png"
salad_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/emojipedia/132/green-salad_1f957.png"
roll_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/325/hot-dog_1f32d.png"
chicken_logo = "https://www.emoji.com/wp-content/uploads/filebase/thumbnails/icons/emoji-icons-glossy-icons-food-drink-icons-food-drink-prepared-food-roasted%20chicken-72dpi-forPersonalUseOnly.png"
chips_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/whatsapp/314/french-fries_1f35f.png"
fish_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/softbank/145/fish_1f41f.png"
child_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/apple/325/child_1f9d2.png"
meal_deal_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/softbank/145/money-bag_1f4b0.png"
hot_box_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/120/openmoji/292/oden_1f362.png"
milkshake_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/apple/325/cup-with-straw_1f964.png"
thickshake_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/emojidex/112/cup-with-straw_1f964.png"
frappe_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/joypixels/291/cup-with-straw_1f964.png"
smoothie_logo = "https://emojipedia-us.s3.dualstack.us-west-1.amazonaws.com/thumbs/240/microsoft/310/cup-with-straw_1f964.png"


def newItem(title, price, food_type, ingredients, img_source)
    food = MenuItem.new
    food.title = title.upcase
    food.price = price
    food.food_type = food_type
    food.ingredients = ingredients
    food.img_source = img_source
    food.available = true
    food.save
end
##Burgers:
# newItem("Hamburger", "7.50", "burger", "BEEF PATTY, ONION, TOMATO, LETTUCE, BEETROOT, CHEESE & SAUCE", burger_logo)
# newItem("Hamburger W/ The Lot", "9.00", "burger", "BEEF PATTY, BACON, EGG, PINEAPPLE, CHEESE, ONION, TOMATO, LETTUCE, BEETROOT & SAUCE", burger_logo)
# newItem("Chicken Burger", "7.50", "burger", "CHICKEN BREAST FILLET, TOMATO, LETUCE, BEETROOT, CHEESE & AIOLI ", burger_logo)
# newItem("Steak Burger", "9.00", "burger", "STEAK, ONION, TOMATO, BEETROOT, LETTUCE, CHEESE & SAUCE", burger_logo)
# newItem("Steak Burger W/ The Lott", "10.50", "burger", "STEAK, BACON, EGG, ONION, PINEAPPLE, TOMATO, LETTUCE, BEETROOT, CHEESE & SAUCE", burger_logo)
# newItem("Bacon & Egg Burger", "5.50", "burger", "BACON, EGG, CHEESE, ONION & SAUCE", burger_logo)
# newItem("Bacon & Egg Burger W/ Salad", "7.50", "burger", "BACON, EGG, ONION, LETTUCE, TOMATO, BEETROOT, CHEESE & SAUCE", burger_logo)
# newItem("Fish Burger", "7.50", "burger", " FILLET CRUMBED FISH, LETTUCE, TOMATO, SALAD ONION, CHEESE & MAYO", burger_logo)
# ##Rolls:
# newItem("Hot Dog", "4.00", "roll", "HOT DOG SAUSAGE w/ TOMATO SAUCE & MUSTARD", roll_logo)
# newItem("Hot Dog W/ The Lot", "5.50", "roll", "HOT DOG SAUSAGE, BACON, ONION, CHEESE, TOMATO SAUCE & MUSTARD", roll_logo)
# newItem("Pork Riblet", "6.00", "roll", "PORK RIBLET, CHEESE, HASH BROWN W/SMOKEY BBQ SAUCE", roll_logo)
# newItem("Smokey Chicken & Bacon", "6.00", "roll", "CHICKEN BREAST TENDERS, BACON, CHEESE & SMOKEY BBQ SAUCE", roll_logo)
# newItem("Chicken & Gravy ", "5.50", "roll", "CHICKEN & CHICKEN GRAVY", roll_logo)
# newItem("Chicken, Mayo & Aioli ", "5.50", "roll", "CHICKEN, MAYONNAISE & AILOI", roll_logo)
# newItem("Savoury Mince", "6.00", "roll", "SAVOURY MINCE & CHEESE", roll_logo)
# ##Chicken:
# newItem("Whole Chicken", "12.50", "chicken", "ONE WHOLE ROTISSERIE CHICKEN", chicken_logo)
# newItem("1/2 Chicken", "6.50", "chicken", "ONE HALF CHICKEN", chicken_logo)
# newItem("1/4 Chicken & Chips", "6.50", "chicken", "ONE QUARTER ROTISSERIE CHICKEN WITH CHIPS", chicken_logo)
# newItem("1/2 Chicken & Chips", "9.50", "chicken", "ONE HALF CHICKEN WITH CHIPS", chicken_logo)     
# ##Chips:
# newItem("$3 Chips", "3.00", "chips", nil, chips_logo)
# newItem("$5 Chips", "5.00", "chips", nil, chips_logo)
# newItem("$7 Chips", "7.00", "chips", nil, chips_logo)
# newItem("$10 Chips", "10.00", "chips", nil, chips_logo)
# ##Fish:
# newItem("1 x Cod Fillet", "6.00", "fish", "ONE COD FILLET (CRUMBED OR BATTERED)", fish_logo)
# newItem("4 Piece Pack", "30.00", "fish", "4 PIECE CRUMBED COD & FAMILY CHIPS", fish_logo)
# ##Kids Meals:
# newItem("Pluto Pup & Chips", "6.00", "kids_meal", nil, child_logo)
# newItem("3 Chicken Nuggets & Chips", "5.50", "kids_meal", nil, child_logo)
# newItem("Fish & Chips", "6.00", "kids_meal", nil, child_logo)
# ##Meal Deals:
# newItem("WHOLE CHICKEN, FAMILY CHIPS, LG GRAVY, 1.25LT SOFTDRINK", "23.00", "meal_deal", nil, meal_deal_logo)
# newItem("4 HAMBURGERS, FAMILY CHIPS, 1.25LT SOFTDRINK", "36.00", "meal_deal", nil, meal_deal_logo)
# ##Hot Box:
# newItem("GARLIC CHICKEN BALL", "1.50", "hot_box", nil, hot_box_logo)
# newItem("battered sav", "3.50", "hot_box", nil, hot_box_logo)
# newItem("pluto pup", "3.50", "hot_box", nil, hot_box_logo)
# newItem("beef croquette", "1.70", "hot_box", nil, hot_box_logo)
# newItem("chiko", "3.00", "hot_box", nil, hot_box_logo)
# newItem("cheese kransky", "3.50", "hot_box", nil, hot_box_logo)
# newItem("topper", "3.50", "hot_box", nil, hot_box_logo)
# newItem("crumbed drumstick", "3.00", "hot_box", nil, hot_box_logo)
# newItem("4 x chicken tenders", "5.00", "hot_box", nil, hot_box_logo)
# newItem("kabana", "3.00", "hot_box", nil, hot_box_logo)
# newItem("10 X CHICken CHEESEBURGER BITES", "5.00", "hot_box", nil, hot_box_logo)
# newItem("chicken kebab", "4.50", "hot_box", nil, hot_box_logo)
# newItem("chicken chippies", "5.00", "hot_box", nil, hot_box_logo)
# newItem("potato scallop", "1.50", "hot_box", nil, hot_box_logo)
# newItem("calamari ring", "1.00", "hot_box", nil, hot_box_logo)
# newItem("onion ring", "1.00", "hot_box", nil, hot_box_logo)
# newItem("pie", "4.80", "hot_box", nil, hot_box_logo)
# newItem("sausage roll", "3.70", "hot_box", nil, hot_box_logo)
# newItem("mega sausage roll", "4.50", "hot_box", nil, hot_box_logo)

