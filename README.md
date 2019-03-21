Board-Game-API

Ruby Version : 2.6.0p0
Database : Postgresql 

Things to remember :
- After changing gem file -> use bundle install.
- After changing database schema -> use db:migrate -> also migrate on heroku server!

Heroku stuff :
- Using Heroku CL and Git to deploy.
- Push to git : git add . -> git commit -m "message" . 
- Push to Heroku using git push Heroku master (or whatever branch you like)
- 

API: 

Routes: url/api/v1/route
- users 
	- params  
		- greater_kills : returns users that have >= parameter kills
			- i.e. url/api/v1/users?greater_kills=3 
		- lesser_kills : returns users that have <= parameter kills
			- i.e url/api/v1/users?lesser_kills=3 
		- game_sessions : returns all game_sessions that the user has played params = user_id.
			- i.e url/api/v1/users?game_sessions=2
		-
- games
	- params
		- 

url/api/v1/users has GET,POST,DELETE(take this away later?) to the user table in the database.
ie. GET url/api/v1/users will return user json objects. 

class User { (has_many : GameSession)
	int id; (primary key)
	string userid (username)
	decimal averageRank
	integer killCount
	integer gamesPlayed
	...
}

class Game (has_many : GameSession) {
	int gameID; (primary key)
	int numTurns;
	string winnerOfGame;
	int timeElapsed;
	...
}

class GameSession { (belongs to User,Game)
	int gameSessionID; <- primary key
	string playerName; <- foreign key#1
	int gameID <- foreign key#2
	int totalDamageDealt;
	int totalKills;
	...
}

POST to User requires userparams which is (string username,decimal avg_rank)

Planned work: 
- Queries using Active Record Queries
	- Find all games that the user has played via username instead of id. 
    - Create user account via post request?
    - 
    Users:
    - winning_games : games that user has won.
    - losing_games : games that user has lost.

    Games: 
    - number_of_turns_greater : 
    - number_of_turns_lesser :
    - time_elapsed_greater:
    - time_elapsed_lesser 


- Authentication ie. need user to delete/create data. Give this access to the game clients? 


Rails Console Commands Test:

 - 
