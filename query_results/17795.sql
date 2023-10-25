SELECT statement in a format similar to what you learned about writing queries in class. Your code will not run until you have written a valid SQL statement.
*/
// Create table of movies
CREATE TABLE IF NOT EXISTS `title` (
    `id` int(11), // Primary Key
	`primaryTitle` varchar(75),
	`originalTitle` varchar(75),
	`isAdult` boolean DEFAULT FALSE,
	`startYear` smallint(6),
	`endYear` smallint(6),
	`runtimeMinutes` tinyint(4),
	`genreID` int(11)
)