mario = User.create(name:"Mario Mario",username: "mario123", password:"iluvpeach")
luigi = User.create(name:"Luigi Mario", username: "luigi456", password: "yoshi")
pasta = Recipe.create(name:"pasta latte", ingredients: "pasta, milk, salt, pepper")
pasta.user = mario
pasta.save


eggplant_parm = Recipe.create(name:"eggplant parmesan", ingredients: "eggplant, tomato sauce, parmesan")
eggplant_parm.user = luigi
eggplant_parm.save

bob = User.create(name:"Bob",username:"bobsburgers",password:"lynne")
burger = Recipe.create(name:"A Leek Of Their Own Burger", ingredients: "ground beef, leeks, onion, lettuce bun")
burger.user = bob
burger.save

italian = Category.create(name:"Italian")
dairy = Category.create(name:"Dairy")
american = Category.create(name:"American")
paleo = Category.create(name:"Paleo")
