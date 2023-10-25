SELECT * FROM ( SELECT TOP(10) t.* WHERE (t.titleType LIKE '%Fantasy%') AND (t.startYear BETWEEN '2000-01-01' AND '2019-12-31')) AS t INNER JOIN (SELECT DISTINCT n.* FROM imdb.name_basics AS n WHERE (n.primaryName = 'Elijah Wood')) AS e ON t.directorID = e.id

### Problem #8 - Data Visualization

#### Task Description

You will now learn how you can use data visualizations in your applications by creating an application where the user can enter his/her favorite color as well as another color he/she doesn’t really like and then see all colors between those two extremes. Your application must include at least one line chart. For example, if we have two colors “Blue” and “Red”, then our application should show us which other colors are close enough to these two colors so that they could be considered similar. This means that there has to exist some distance metric between any pair of colors used in the app. We suggest using Euclidean Distance but feel free to choose whatever works best for you!

User Input: 
My favorite color is blue, my disliked color is red
User Preferences: 
[blue,red]
SQL Query:
Select * from (select distinct tcolor from tablecolors where tcolor IN ('blue','green','yellow','purple'))