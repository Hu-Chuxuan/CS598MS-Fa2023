SELECT * FROM title_rating WHERE averageRating > 7 AND numVotes >= 10 ORDER BY avgRat DESC LIMIT 5 OFFSET 0
```
Output Result: 
[
    {
        "id": 420067,
        "originalTitle": "Looper",
        "averageRating": 8.6,
        "numVotes": 1301
    },
    {
        "id": 11562,
        "originalTitle": "Brick",
        "averageRating": 7.6,
        "numVotes": 230
    }
}