SELECT * FROM `movies` WHERE ((((`genre` = 'Drama') AND (`startyear` >= 1990)) OR (`endyear` <= 2010))) ORDER BY RAND() LIMIT 10 OFFSET?

Expected Output:
[{'titleid': 1,'primarytitle': 'Pride &amp