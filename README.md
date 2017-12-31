<h1>Recipe Collection</h1>
Create a user account then browse other user recipes, and create/edit your own recipe. Recipes include a recipe name, ingredients, and optional categories (e.g. Vegetarian, Dessert, Potluck). A user can browse all recipes from all users and view/edit their own recipes. Only a recipe's creator can edit the recipe, and only logged-in users can view the details of other user's recipes.

Installation Instructions
Install homebrew, follow instructions from this link https://docs.brew.sh/Installation.html

To install sqlite3:
brew install sqlite

And then execute:
bundle install

Run your migrations:
rake db:migrate

Seed data:
rake db:seed

Then, run shotgun

Contributing
The app is available as open source under the terms of the <a href="https://opensource.org/licenses/MIT">MIT License</a>.

Bug reports and pull requests are welcome on GitHub at https://github.com/kpeck71/sinatra-recipe-project
