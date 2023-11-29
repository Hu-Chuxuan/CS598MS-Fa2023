SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Drama', tb.genres) > 0
AND FIND_IN_SET(tb.primaryTitle, (SELECT primaryTitle FROM title_basics WHERE nconst IN (SELECT name_basics.nconst FROM name_basics WHERE primaryProfession = 'actor' AND knownForTitles = 'Notebook (2006)')) LIMIT 1) > 0