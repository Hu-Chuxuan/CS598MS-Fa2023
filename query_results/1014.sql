SELECT t1.* FROM title_rating AS t1 JOIN title_recommendation AS t2 ON t1.titleID = t2.titleID WHERE t2.userInput = 'comedy'"""

# Write your code here...
SELECT * FROM title_recommendation INNER JOIN title_ratting ON title_recommendation.titleid=title_ratting.titleid AND title_recommendation.userinput='comedy'