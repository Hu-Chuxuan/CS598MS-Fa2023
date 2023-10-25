SELECT statement against the imdb database.

```python
def get_movies():
    return cursor.execute('SELECT * FROM title').fetchall()
```

#### Step Three - Generate User Ratings

Next we want to create another function named get_rating(). This time our aim is to retrieve ratings for each title returned by get_title(). We do not yet have access to any data relating to titles so we need to perform some queries at this point.

Firstly we need to find out what rating type exists for every title. There are four types