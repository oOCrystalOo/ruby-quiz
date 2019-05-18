# Ruby-quiz

A simple web application created for the University of Toronto Quiz submission. The user can submit some text and the web application will list all submitted texts.
Functional project can be viewed on http://quiz-crystal-ng.herokuapp.com

## Setup
1. Clone the repository:
``` 
git clone https://github.com/oOCrystalOo/ruby-quiz.git
cd ruby-quiz
```
	
2. Install bundle, create a database, and run migration
``` 
bundle install
rake db:create
rake db:migrate
```
	
### Notes
This project uses postresql, and was created with ruby 2.5.3 and Rails 5.2.3.
Original project was deployed on Heroku.