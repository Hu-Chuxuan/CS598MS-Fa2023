SELECT tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE (tb1.primaryTitle = 'Tucker & Dale vs. Evil' AND tb1.startYear = 2010)
   OR (tb1.primaryTitle = 'The Big Sick' AND tb1.startYear = 2017)
   OR tb1.primaryTitle IN ('Get Hard', 'Groundhog Day', 'Ghostbusters')
ORDER BY tr.averageRating DESC