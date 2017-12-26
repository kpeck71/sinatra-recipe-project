mario = Cook.create(name:"Mario Mario",username: "mario123", password:"iluvpeach", email:"mario@pasta.com")
mario.save
luigi = Cook.create(name:"Luigi Mario", username: "luigi456", password: "yoshi", email: "luigi@pasta.com")
pasta = Recipe.create(name:"pasta latte", ingredients: "pasta, milk, salt, pepper")
italian = Category.create(name:"Italian")
dairy = Category.create(name:"Dairy")
pasta.cook = mario
pasta.categories << italian
eggplant_parm = Recipe.create(name:"eggplant parmesan", ingredients: "eggplant, tomato sauce, parmesan")
eggplant_parm.categories << italian
bob = Cook.create(name:"Bob",username:"bobsburgers",password:"lynne",email:"bob@burgers.com")
burger = Recipe.create(name:"A Leek Of Their Own Burger", ingredients: "ground beef, leeks, onion, lettuce bun")
american = Category.create(name:"American")
paleo = Category.create(name:"Paleo")
burger.cook = bob
burger.categories << american
burger.categories << paleo
