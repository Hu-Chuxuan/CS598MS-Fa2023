SELECT * FROM title_basics WHERE (titleType = 'Movie') AND ((startYear >= 1995)) ORDER BY runtimeMinutes DESC LIMIT 10 OFFSET 0

Output Results:
[{'nconst': 'nm0000001', 'primaryTitle': 'Star Wars Episode VI: Return Of The Jedi', 'originalTitle': 'Return Of The Jedi', 'isAdult': False}, {'nconst': 'nm0000002', 'primaryTitle': 'Indiana Jones And The Last Crusade', 'originalTitle': 'Indiana Jones \u0026amp