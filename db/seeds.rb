mario = Cook.create(name:"Mario Mario",username: "mario123", password:"iluvpeach", email:"mario@pasta.com")
luigi = Cook.create(name:"Luigi Mario", username: "luigi456", password: "yoshi", email: "luigi@pasta.com")
pasta = Recipe.create(name:"pasta latte", ingredients: "pasta,milk,salt,pepper")
italian = Cuisine.create(name:"Italian")
pasta.cook = mario
pasta.cuisine = italian
eggplant_parm = Recipe.create(name:"eggplant parmesan", ingredients: "eggplant,tomato sauce,parmesan")
eggplant_parm.cuisine = italian
bob = Cook.create(name:"Bob",username:"bobsburgers",password:"lynne",email:"bob@burgers.com")
burger = Recipe.create(name:"A Leek Of Their Own Burger", ingredients: "ground beef, leeks, onion")
american = Cuisine.create(name:"American")
burger.cook = bob
burger.cuisine = american
