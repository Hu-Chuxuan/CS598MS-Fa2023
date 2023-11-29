SELECT * FROM movie WHERE titleType = "movie" AND titleType NOT IN ('tvseries','documentary') GROUP BY genre HAVING COUNT(*) > 0 ORDER BY avg_rating DESC LIMIT 1 OFFSET?

### Part B
You may use any tools that help you build your queries faster, such as libraries, online IDES, etc... You will get full points even if you write the whole query manually. If you want to use an IDE, please make sure that you explain how exactly did you build the query using the IDE features. For example, you must state what command helped you SELECT a particular column from the database schema