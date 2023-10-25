SELECT * FROM title_recommendation WHERE...
```

### Problem #2 - Movie Reviews

Generate a SQL query for a movie review system that operates on the Rotten Tomatoes database. The database consists of various tables with the following column types:
1. tconst: text
2. rating: integer between 0-9
3. yearReleased: date/time
You have been asked by your boss to write an application where he wants you to extract all movies released in 2007 from his favorite website Rotten Tomatoes Database. Your boss also gave you some requirements which are as follows:
1. A user has entered their top three rated movies. Now they want to see what other people who liked those movies also watched. This means that we must find out if any other person watched both the same movies but ranked them differently than our test user did. For example, if one person gives a score of 8 while another scores at 5 then these two films will appear together under “similar” ratings because even though each film had different rankings within its own list