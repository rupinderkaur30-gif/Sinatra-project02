## Sinatra Project
# Installation
I installed the corneal gem that a former Flatiron School Student built as a Sinatra Application generator, corneal provides all the necessary documentation to start building a simple Sinatra web application.
 * Install the gem with gem install corneal
 * Generate your app with corneal new APP-NAME
 * Run bundle
With the corneal gem, you can run commands to generate a model or scaffold the entire MVC structure including a migration file.
 * Generate a model: corneal model NAME
 * Generate a controller: corneal controller NAME
With the help of corneal gem , i created my migration tables for users , workouts and exercises. I created my migrations files inheriting from Active Record to manipulate the database.

Clone this repoistory and bundle to install the required gems. Run rake db:migrate and then rake db:seed to add a database. Run shotgun to preview in your browser.

# Description
This app was built for a Flatiron School project. This web app uses an MVC framework including multiple models, validations for logins & signups and CRUD functionality.
