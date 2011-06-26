# Magnetism

Magnetism is a website content management system written by Dane
Harrigan. It is under heavy development and major changes may occur.

Those watching the Magnetism project please review the CHANGELOG to see
if any changes will impact your sites.

## Running Magnetism

### As an application

    $ git clone git://github.com/daneharrigan/magnetism.git
    $ cd magnetism
    $ rake db:migrate db:seed

### As a Rails engine

Create a new rails instance and add the following to your Gemfile

    gem 'magnetism', git: 'git://github.com/daneharrigan/magnetism.git'

## Testing Magnetism

Magnetism is a standard Rails application. It's tested with RSpec and
Cucumber. The following commands will run the test suites:

  bundle exec rspec spec
  bundle exec cucumber features
