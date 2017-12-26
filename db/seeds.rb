mario = Cook.create(name:"Mario Mario",username: "mario123", password:"iluvpeach", email:"mario@pasta.com")
luigi = Cook.create(name:"Luigi Mario", username: "luigi456", password: "yoshi", email: "luigi@pasta.com")
pasta = Recipe.create(name:"pasta latte", ingredients:"milk, pasta, salt, pepper")
pasta.cook = mario
eggplant_parm = Recipe.create(name:"eggplant parmesan",cook: luigi)
sorissos = Restaurant.create(name:"Sorissos")
sorissos.cooks << mario
bob = Cook.create(name:"Bob",username:"bobsburgers",password:"lynne",email:"bob@burgers.com")
burger = Recipe.create(name:"A Leek Of Their Own Burger", cook:bob)
