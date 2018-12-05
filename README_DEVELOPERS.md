*** Guides and hints ****

First thing after cloning this project is to run:

**$ bundle install**

If you Ruby version is already >= 2.5, jump this.
To install ruby version 2.5 you'll need to:

Add the repository:

**$ sudo apt-add-repository ppa:brightbox/ruby-ng**
**$ sudo apt update**

Install the packages:

**$ sudo apt-get install ruby2.5 ruby2.5-dev**
And you’re up and running:

**$ ruby -v**

After that if you have problems with your bundler ruby version being different from the one your installed, just reinstall your bundler using:

**$ sudo gem install bundler**


After that to install cucumber run:
 **rails generate cucumber:install capybara**
 **rails generate cucumber_rails_training_wheels:install**

 Then you must update your database. 
 **rails db:migrate**
 **rails db:test:prepare**