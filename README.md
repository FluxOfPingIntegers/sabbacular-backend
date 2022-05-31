# Sabbacular Back-end
This is a RESTful API backend for the vacation planning app Sabbacular.  It employs Rails to serve JSON to the Sabbacular front end.  This section of the app will utilize the YELP API to collect information on local businesses, and Google Oauth for user authentication.  The App will allow Users to plan a vacation using a budget, range of dates, and planned events.

## Getting Started
* Step 1: within your terminal inside the main branch for this project within VS code type the following and hit enter:
```
bundle update
```
This updates all the dependencies required to run your ruby application, to apply these updates type:
```
bundle install
```
and hit enter again
* Step 2: Again inside VS codes termain within the root of this project enter
```
rails db:seed
```
this populates your database, then enter the following to start the server on your local machine
```
rails s
```
If you wish to stop the server at any type press CTRL+C on your keyboard within terminal.
* Step 3: Go to the instructions found here to start utilizing this app.
## Installation
• First You will need developer software, I used Visual Studio Code. Depending on your operating system you should follow these instructions: [Windows](https://code.visualstudio.com/docs/setup/windows) -OR- [macOS](https://code.visualstudio.com/docs/setup/mac) -OR- [Linux](https://code.visualstudio.com/docs/setup/linux)

• Second You will need a Ruby library on your machine. Within terminal please follow the instructions found [here](https://stackify.com/install-ruby-on-ubuntu-everything-you-need-to-get-going/)

• Third You will need to clone the repo for this software and pull it up in VS Code. In your terminal please navigate to the folder you would like the files for this software to be and type
```
git clone git@github.com:FluxOfPingIntegers/sabbacular-backend.git
```
then navigate to the folder you just created by typing
```
cd sabbacular-backend
```
then fire up VS code by entering
```
code .
```
• Finally you are ready to proceed to the Getting Started section of this README
## Contribute
This is a personal project I am building for fun and practice.  As such I am not looking for contributions at this time.  This may change in the future.
## Author
Ryan Schleck - Full Stack Developer - [LinkedIn](https://www.linkedin.com/in/ryan-schleck/) | [Blog](https://ryan-m-schleck.medium.com/)
## License
[MIT](https://choosealicense.com/licenses/mit/)