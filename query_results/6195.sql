SELECT * FROM title WHERE isAdult = false AND runtime > 120 ORDER BY avgrating DESC LIMIT 10 OFFSET? 

# Part B
## Database Setup Instructions
Create your own MySQL database named `imdb` using the instructions below. This will allow you to run the queries against an actual database instead of just doing them manually via the terminal. Note that there may already exist another database called imdb but that one contains data not related to this assignment. If you get an error when trying to create the new database, make sure you have granted yourself permission to use mysql on the server and then try again!

```bash
sudo apt install mysql-server
mysql -u root -proot
CREATE DATABASE IF NOT EXISTS imdb DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci