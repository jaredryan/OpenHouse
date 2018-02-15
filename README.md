# Freshwater Feed
Freshwater Feed is a webpage for users and ecologists to view conditions of waterways (lakes and rivers). Users of the app can search for a specific lake or river, or they can search, generally, for waterways that are in an area by zipcode. After this, a user will see information that has been submitted by others via a feed. This feed will have specifics on the conditions in the waterway. There is also a second page wherein one can input specifics about the waterway where they are located. This information is broken down into three categories namely: Environmental Conditions, Biological Conditions, and Social Conditions.

Some of the features the app supports include:
* Feed
* User Accounts
* Report Forms

## Screenshots



## Screencast



## Instructions

### Setup

1. Clone the repo.

    `git clone https://github.com/jaredryan/fishackathon-slc-11.git`
    
2. Navigate to the OpenHouse folder

    `cd OpenHouse`

3. Install Ruby 2.3.5 (if needed)

    `rvm install ruby-2.3.5`

4. Install bundler

    `gem install bundler`

5. Run Bundler

    `bundle install`

6. Start the Postgres SQL server
    
    `sudo service postgresql restart`
    OR (depends on your setup)
    `pg_ctl -D /usr/local/var/postgres start`

7. Set up the database

    `rake db:setup`
    
    The following error is common while setting up the database. It concerns an encoding problem with the database:
    
    `Called from /usr/local/rvm/gems/ruby-2.3.5/gems/activesupport-4.2.9/lib/active_support/dependencies.rb:240:in 'load_dependency'
    PG::InvalidParameterValue: ERROR:  new encoding (UTF-8) is incompatible with the encoding of the template database (SQL_ASCII)`
    
    If this error occurs, go to OpenHouse -> config -> database.yml, and change the encoding in line 3 to match your database template.
    In the case of the above example, we would change it from the incompatible UTF-8 to SQL_ASCII.
    
    Replace `encoding: UTF-8` with `encoding: SQL_ASCII`

8. Run the app

    `sudo screen -d -m rails s`
    OR (depends on your setup)
    `rails server`

9. Access the app via your web browser (localhost:3000 or whatever your Cloud9 port and ip are).

Note: 
* During application development, postgresql needs to be reset often. When the following error appears:
    `Called from /usr/local/rvm/gems/ruby-2.3.5/gems/activesupport-4.2.9/lib/active_support/dependencies.rb:240:in 'load_dependency'
could not connect to server: Connection refused
        Is the server running locally and accepting
        connections on Unix domain socket "/var/run/postgresql/.s.PGSQL.5432"?`
    
    When this happens, run the following command to solve this problem:
    `sudo service postgresql restart`
* To reset the database if it is giving you issues, run
    `rake db:reset`. In postgresql, this will drop the previous tables, create the required tables, and run all migrations for you as well. If you run `rails server` or an equivalent command right resetting the database, it should work.

### Shutdown

To stop the server, go into the screen and kill it

`screen -r`

`<Ctrl-c>`

`exit`

## Helpful Links
[Heroku App][1]

Domain: [freshwaterfeed.us](freshwaterfeed.us)

## Future Tasks

The app is far from complete. There are a lot of things that could be added that would make it much more useable and finished. Here are our ideas:

* Including a way for users to upload photos of conditions or specific issues that they witness
* Including a point system for those that create accounts. This will allow others to trust information from certain sources due to their points from answering questions on the forms more often.
* We would like to connect our current database with the ones from the States. This would allow us to generate even more valuable information about waterways for those that frequent them.

[1]: https://freshwaterfeed.herokuapp.com/
