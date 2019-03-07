# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

API: 

url/api/v1/users has GET,POST,DELETE(take this away later?) to the user table in the database.
ie. GET url/api/v1/users will return user json objects. 

User {
	int id;
	string username
	decimal averageRank
	integer killCount
	integer gamesPlayed
	...
}

POST to User requires userparams which is (string username,decimal avg_rank)