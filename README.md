README

This app is going to be a mix of Raleigh trivia, maybe some observations as a newcomer to the area, ect. Eventually I would like to have the facts randomized in an array so that the user types their name and based on something (like the first letter) they get a randomized raleigh fact. 

I am eventually going to add oAuth so that only I can edit the facts, and so that users won't see the facts/index page with options to edit, add, delete. The welcome page will instead display the outside password and then allow them to input their name. 

This project was inspired by my newly adopted town of residence, Raleigh NC. 

** INSTALLATION

To install this app first fork a local copy to your Github account then clone it to your computer. Then follow the following steps:

1. Run `bundle install` to install the required gems in the Gemfile
2. Run `rake db:migrate` to create the database.
2a. NOTE: If you get an error that "raleigh_newcomer_development" database does not exist, then first run `createdb raleigh_newcomer_development` then run `rake db:migrate`.
3. Run `rails s` to start a local server on http://localhost:3000
4. Navigate to http://localhost:3000 in your web browser

