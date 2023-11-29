SELECT * FROM title_basics tb
JOIN name_basics nb ON tb.primaryTitle = nb.primaryName
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE nb.knownForTitles @@ 'Girls Trip (2017),Bridesmaids (2011),Game Night (2018)'
AND tr.averageRating > 7
AND tr.numVotes > 1000
AND tb.genres @@ 'Comedy'
ORDER BY tr.averageRating DESC