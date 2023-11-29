SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET(tb.genres, (SELECT genres FROM title_basics WHERE primaryTitle = 'The Purge (2013)' LIMIT 1)) > 0
AND tb.primaryTitle != 'The Purge (2013)'
AND tb.primaryTitle != 'The Purge: Election Year (2016)'
AND tb.primaryTitle != 'The Purge: Anarchy (2014)'