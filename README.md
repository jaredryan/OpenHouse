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

### Shutdown

To stop the server, go into the screen and kill it

`screen -r`

`<Ctrl-c>`

`exit`

## Helpful Links
[Heroku App][1]

## Future Tasks

The app is far from complete. There are a lot of things that could be added that would make it much more useable and finished. Here are our ideas:

* Including a way for users to upload photos of conditions or specific issues that they witness
* Including a point system for those that create accounts. This will allow others to trust information from certain sources due to their points from answering questions on the forms more often.
* We would like to connect our current database with the ones from the States. This would allow us to generate even more valuable information about waterways for those that frequent them.

[1]: https://freshwaterfeed.herokuapp.com/
