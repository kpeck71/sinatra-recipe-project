# Specifications for the Sinatra Assessment

Specs:
- [x] Use Sinatra to build the app
- [x] Use ActiveRecord for storing information in a database
Four migrations, four tables: categories_recipes, categories, recipes, users
- [x] Include more than one model class (list of model class names e.g. User, Post, Category)
User, Recipe, Category
- [x] Include at least one has_many relationship (x has_many y e.g. User has_many Posts)
A user has many recipes, a category has_and_belongs_to_many recipes, a recipe has_and_belongs_to_many categories
- [x] Include user accounts
- [x] Ensure that users can't modify content created by other users
- [x] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
Recipes routes for Creating (new.erb), Reading (show.erb), Updating (edit.erb), and Destroying (funtionality included in show.erb)
- [x] Include user input validations
if @recipe.user_id == current_user.id
- [x] Display validation failures to user with error message (example form URL e.g. /posts/new)
error=You cannot edit a recipe that is not your own
error=Not logged in
error=Please log in to see recipe details
- [x] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code

Confirm
- [x] You have a large number of small Git commits - Some are not so small!
- [x] Your commit messages are meaningful
- [x] You made the changes in a commit that relate to the commit message
- [x] You don't include changes in a commit that aren't related to the commit message
