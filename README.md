# I&E Statement

# Instructions
After downloading or cloning the project navigate to the root folder in your terminal and run: bundle install
When installation finishes to start the server type the command: rails server
and navigate to https://localhost:3000/ to access the application. A login screen will appear which requires to register before accessing the application.


# Thought process
I&E Statement was developed using Rails 7, sqlite3 and the Bootstrap for styling. For user authentication, I used the devise gem. I have added an IAndEStatement model that belongs to a user and an IAndEStatements controller to add create all the pages routes. Each IAndEStatement will belong to a user and will have a has_many association with the Income and Expenditure model. The controller includes all actions (except destroy) with their views respectively. A user can view all the I&E Statements he created, can only view one I&E Statement with more details (Disposable income, Rating) and update an I&E Statement.


# Todos and Improvements
* Add validations to the models
* Add dynamic functionality for adding and deleting fields for income and expenditure to the I&E Statement form.
* Code Refactoring: reduce duplicate code, leverage more the use of helpers, add more testing
* Export I&E Statement to a pdf or csv
