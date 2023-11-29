SELECT * FROM `title_ratings` WHERE (`averageRating`) >=? AND (`numVotes`) >? ORDER BY RANDOM() LIMIT?

Output Result:
[
    {
        "tconst": "tt0000001",
        "averageRating": 7.6,
        "numVotes": 12595,
        "primaryTitle": "Casablanca",
        "startYear": null,
        "endYear": null,
        "runtimeMinutes": 103,
        "genre": ["Drama"],
        "primaryProfession": [],
        "knownForTitles": []
    },
    {
        "tconst": "tt0000002",
        "averageRating": 7.7,
        "numVotes": 5593,
        "primaryTitle": "The Godfather Part II",
        "startYear": null,
        "endYear": null,
        "runtimeMinutes": 202,
        "genre": ["Crime"],
        "primaryProfession": [],
        "knownForTitles": []
    }..