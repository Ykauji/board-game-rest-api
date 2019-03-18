Board-Game-API

Ruby Version : 2.6.0p0
Database : Postgresql 

Things to remember :
- After changing gem file -> use bundle install.
- After changing database schema -> use db:migrate -> also migrate on heroku server!

Heroku stuff :
- Using Heroku CL and Git to deploy.
- Push to Heroku using git push Heroku master (or whatever branch you like)
- 

API: 

Routes: url/api/v1/route
- users
- games

url/api/v1/users has GET,POST,DELETE(take this away later?) to the user table in the database.
ie. GET url/api/v1/users will return user json objects. 

class User { (has_many : Game)
	int id;
	string username
	decimal averageRank
	integer killCount
	integer gamesPlayed
	...
}

class Game {
	
}

POST to User requires userparams which is (string username,decimal avg_rank)

Planned work: 
- Queries using Active Record Queries
	- Find all games that the user has played in (brute search vs. references?)
    - 
- Authentication ie. need user to delete/create data. Give this access to the game clients? 