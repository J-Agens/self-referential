Self-referential relationship

Build a CLI Social Media application using ActiveRecord that meets the following user stories

* As a user i enter my username to "login"
* As a user i can select an option to see a list of all the users in the database
* As a user i can choose to add a user as a "friend"
  * It's up to you whether "friending" someone is mutual like facebook (If I'm your friend then you are my friend), or more like instagram (I can follow you, but you don't need to be following me )
* As a user I can select an option to see a list of all of my friends/followers/following

One thing that's a little confusing is that when you have a `has_many through` and are trying to specifiy the `class_name:` (ie the type of object you want to get back) you use `source:` instead of `class_name:`.
