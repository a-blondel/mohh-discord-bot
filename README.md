# MoHH Discord Bot

## Features
- Discord bot activity
  - Current connected player count
  - Current in game player count
  - Current DNS IP Address
- Scoreboards
  - Sends an image of the scoreboard everytime a game ends (if the game had at least 2 players and 1 kill/death) 
- Events
  - Sends a message when players connects/disconnects and joins/leaves games

<img src="doc/bot-activity.png" alt="bot activity" /><br/>
*Discord bot activity*

<img src="doc/scoreboard.png" alt="scoreboard" /><br/>
*Scoreboard*

## Run

In IntelliJ IDEA, create a new `Application` run configuration.  

To start with the `dev` profile (containing database samples), use the following command line argument:
```
-Dspring.profiles.active=dev
```

For the Discord bot to work, you need to define the appropriate environment variables :
- `DNS_NAME` : the DNS name of the server
- `DISCORD_TOKEN` : the token of the Discord bot
- `DISCORD_CHANNEL_ID` : the ID of the Discord channel where the bot will send messages

Otherwise, comment out the `DiscordBotService` methods.  

If you don't want to use the `dev` profile, you have to define the following environment variables :
- `DB_URL` : the URL of the database
- `DB_USERNAME` : the username of the database
- `DB_PASSWORD` : the password of the database

But this requires to run a [MoHH Master Server](https://github.com/a-blondel/mohh-master-server) database locally.  

The default scoreboard image is generated in the `report` directory. You can change the path using the `REPORTS_PATH` environment variable.  
