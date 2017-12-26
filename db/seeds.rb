mario = Cook.create(name:"Mario Mario")
luigi = Cook.create(name:"Luigi Mario")
pasta = Recipe.create(name:"pasta latte", ingredients:"milk, pasta, salt, pepper")
pasta.cook = mario
eggplant_parm = Recipe.create(name:"eggplant parmesan",cook: luigi)
sorissos = Restaurant.create(name:"Sorissos")
sorissos.cooks << mario
