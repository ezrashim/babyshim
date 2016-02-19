# BabyShim

BabyShim is an announcement app with a messaging functionality that allows users to check how many days are left until their baby is due. The site is created using Ruby on Rails with PostgreSQL database, Foundation front end with custom CSS, and Customized Javascript timer.

My first client, my wife, asked me if I could build a simple web app to announce her pregnancy to her friends with a countdown function. BabyShim was created so that users can not only learn about the news, but also leave comments for us as a couple to celebrate together with our dear friends and family. Please visit the [website](https://shimnews.herokuapp.com/).

##Development##
- Ruby (version 2.0.0)
- Rails (version 4.2.5)
- PostgreSQL (version 9.4.5.0)
- Foundation 5

##How to Set Up on a Local Machine

- Verify that you have the correct version of Ruby installed (version 2.0.0) by running the command in the command line:
```
$ ruby -v
ruby 2.0.0p576
```
- If you don't have Ruby installed have a look at [ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/) for possible ways to install Ruby on your platform.

- Mac users can find installation instructions for PostgreSQL at the [Postgres website](http://postgresapp.com/).

- To install Rails, use the gem `install` command provided by RubyGems:
```
$ gem install rails
```
To verify that you have everything installed correctly, you should be able to run the following:
```
$ rails --version
```
If it says something like "Rails 4.2.1", you are ready to continue.

- To access to app, you need to clone the repository and install bundle. All required gems are listed in the Gemfile.
- Install [bundle](http://bundler.io/).
```
git clone github.com/ezrashim/mycademy.git
cd mycademy
bundle install
```
- To prepare the database, run:
```
rake db:create
```
```
rake db:migrate
```
- To run the local server, run:
```
rails s
```
- To open the app in a browser, type URL:
```
localhost:3000
```
