SELECT tb.tconst, tb.primaryTitle, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE ((',' || tb.genres || ',') LIKE '%,Action,%' OR (',' || tb.genres || ',') LIKE '%,Drama,%' OR (',' || tb.genres || ',') LIKE '%,Comedy,%' OR (',' || tb.genres || ',') LIKE '%,Fantasy,%')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10