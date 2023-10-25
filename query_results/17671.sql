SELECT t.* FROM movies as m INNER JOIN title_ratings r ON r.titleID = m.id AND userID=? WHERE m.genre LIKE 'horror%' OR m.category LIKE '%thriller%'

Output Result:  
[176]

# 7 - Movie Recommendation System

**Difficulty Level : Medium-Hard**

## Description

You have been hired by Netflix Inc., one of America's largest media streaming companies, to build an improved version of its existing movie recommender engine using Amazon Redshift. Your goal is to improve upon your company’s current model which uses a logistic regression algorithm. To accomplish this, you must use both the training dataset and test datasets provided in order to train a new machine learning classifier with better performance than what was previously achieved through linear models alone.

In addition to improving accuracy rates overall across all films within each genre/sub-genre group when compared against other similar titles