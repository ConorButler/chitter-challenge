# Chitter Challenge

![alt text](https://i.gyazo.com/29da2950507df1837aa0e16b3618fcb0.png)
## Instructions on how to use below
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

This is a basic full stack twitter clone using Ruby and Sinatra with a Postgresql database. It doesn't use an ORM so all SQL queries had to be written manually. It uses Rspec for unit tests and Capybara for feature tests. It was a weekend challenge completed as part of Makers Academeny week 4, however I added some bonus features afterwards.

## Additional technologies used

- Timecop gem for testing the time sensitive aspect of the app (viewing peeps in reverse chronological order). Let's you freeze time objects and pass in specific times.
- Bcrypt for hashing passwords.
- Authentication using sessions.
- Sinatra flash messages for handling unhappy paths.
- Rake for setting up the database for testing, as well as making it easy to set up for anyone cloning this repo. I made my own script to populate the database with some dummy posts.
- TablePlus for debugging the database


# Features

- User authentication
- Hashed passwords
- Flash messages to deal with unhappy paths such as bad or not unique login/signup details
- Timestamped peeps and the time since they are made is displayed dynamically
- Sidebar and branding using erb layouts
- Replies and a clear visual representation of them
- Reply chains are shown on a peep's page
- You cannot peep as someone else
- You cannot reply to your own peeps
- Peeps are highlighted in grey when hovered over
- Rake scripts for easy setup

## Prerequisites

- Postgresql

## Setting up the app

```
git clone https://github.com/ConorButler/chitter-challenge.git
cd chitter-challenge
bundle install
rake setup
rake populate_database
rspec
```

This will set up a chitter and chitter_test database, which are configured to run during normal usage and testing respectively. If you already have databases with these names, you will of course need to delete them or this will throw an error.

A set of posts will be generated by a random user at a random recent time after running populate_database.

If you wish to wipe all the posts and reset the database, use:

```
rake reset_database
```

## Using the app

Whilst inside the chitter-challenge directory:

```
rackup
```

Then visit http://localhost:9292 on your browser.

![alt text](https://i.gyazo.com/29da2950507df1837aa0e16b3618fcb0.png)

You are greeeted by the homepage, click on the red bird to go back to the homepage at any point.
If you used the populate_database script you can see some randomly generated posts and replies.

Click on a peep to go to that individual peep's page, which shows the exact time it was created, the replies to it (if any), and the peep it is replying to (if any).

![alt text](https://i.gyazo.com/b4cc72419a991c8c4d350bd324cee502.png)

Click the sign up button to go to the sign up page which is constantly displayed in the sidebar on the right.

![alt text](https://i.gyazo.com/4496de840cbe5140c297e59b317d53e6.png)

You can peep here from the home page, or on the invidiual peep's page if you wish to reply.

![alt text](https://i.gyazo.com/5e781b98ba2554265f711b41cf83833b.png)

You can now peep - the character limit is 280 characters, but don't worry if your post was too long, the text is saved in the box so you can just trim off some extra characters without having to type it all again.

![alt text](https://i.gyazo.com/4cbf6d9cd51323ed214d2e792b60a43f.png)

If your peep was within the character limit, you'll see it appear on the page instantly.

![alt text](https://i.gyazo.com/67666c8f9b39de96c4d20d20d8e07e58.png)

Also if you go back to a peep's page, you can now reply to a peep and join the conversation. It's very easy to follow the chain of replies by clicking on each peep.

![alt text](https://i.gyazo.com/81d437af5dd6b1f20833b7399cf1a221.png)

# Tests

Tests connect to a test database which is truncated before each test to ensure test accuracy.

![Tests](https://i.gyazo.com/bf520557970cc3a28e3d3f8a344723bb.png)

# Task set by Makers Academy:
```
✓ As a Maker
So that I can let people know what I am doing
I want to post a message (peep) to chitter

✓ As a maker
So that I can see what others are saying
I want to see all peeps in reverse chronological order

✓ As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made

✓ As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter

HARDER

✓ As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter

✓ As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter

ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep
```

---

## Objectives:

- ✓ You don't have to be logged in to see the peeps.
- ✓ Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
- ✓ The username and email are unique.
- ✓ Peeps (posts to chitter) have the name of the maker and their user handle.
- ✓ Your README should indicate the technologies used, and give instructions on how to install and run the tests.

## Bonus:

- ✓ In order to start a conversation as a maker I want to reply to a peep from another maker.
- ✓ Work on the CSS to make it look good.
