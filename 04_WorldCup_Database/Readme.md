# Word Cup Database FreecodeCamp Course

## Instructions
Follow the instructions and get all the user stories below to pass to finish the project.

You start with several files, one of them is games.csv. It contains a comma-separated list of all games of the final three rounds of the World Cup tournament since 2014; the titles are at the top. It includes the year of each game, the round of the game, the winner, their opponent, and the number of goals each team scored.

## Complete the tasks below

- You should create a database named worldcup
    `CREATE DATABASE worldcup;`

- You should connect to your worldcup database and then create teams and games tables
    `\c worldcup`
    `CREATE TABLE teams();`
    `CREATE TABLE games();`

- Your teams table should have a team_id column that is a type of SERIAL and is the primary key, and a name column that has to be UNIQUE
    `ALTER TABLE teams ADD COLUMN team_id SERIAL PRIMARY KEY;`
    `ALTER TABLE teams ADD COLUMN name VARCHAR(50) UNIQUE NOT NULL;`

- Your games table should have a game_id column that is a type of SERIAL and is the primary key, a year column of type INT, and a round column of type VARCHAR
    `ALTER TABLE games ADD COLUMN game_id SERIAL PRIMARY KEY;`
    `ALTER TABLE games ADD COLUMN year INT NOT NULL;`
    `ALTER TABLE games ADD COLUMN round VARCHAR NOT NULL;`

- Your games table should have winner_id and opponent_id foreign key columns that each reference team_id from the teams table
    `ALTER TABLE games ADD COLUMN winner_id INT NOT NULL REFERENCES teams(team_id);`
    `ALTER TABLE games ADD COLUMN opponent_id INT NOT NULL REFERENCES teams(team_id);`

- Your games table should have winner_goals and opponent_goals columns that are type INT
    `ALTER TABLE games ADD COLUMN winner_goals INT NOT NULL;`
    `ALTER TABLE games ADD COLUMN opponent_goals INT NOT NULL;`

- All of your columns should have the NOT NULL constraint

- Your two script (.sh) files should have executable permissions. Other tests involving these two files will fail until permissions are correct. When these permissions are enabled, the tests will take significantly longer to run

- When you run your insert_data.sh script, it should add each unique team to the teams table. There should be 24 rows

- When you run your insert_data.sh script, it should insert a row for each line in the games.csv file (other than the top line of the file). There should be 32 rows. Each row should have every column filled in with the appropriate info. Make sure to add the correct ID's from the teams table (you cannot hard-code the values)

- You should correctly complete the queries in the queries.sh file. Fill in each empty echo command to get the output of what is suggested with the command above it. Only use a single line like the first query. The output should match what is in the expected_output.txt file
