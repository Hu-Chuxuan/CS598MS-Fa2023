SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Captain Phillips' LIMIT 1)
OR tb.genres = (SELECT genres FROM title_basics WHERE primaryTitle = 'Sully' LIMIT 1)
OR FIND_IN_SET('Drama', tb.genres) > 0