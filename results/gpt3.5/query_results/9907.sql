SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Animation%' 
   OR tb.genres LIKE '%Adventure%' 
   OR tb.genres LIKE '%Action%' 
   OR tb.genres LIKE '%Thriller%' 
   OR tb.genres LIKE '%Drama%' 
   OR tb.genres LIKE '%Sci-Fi%' 
   OR tb.genres LIKE '%Fantasy%' 
   OR tb.genres LIKE '%Family%' 
   OR tb.genres LIKE '%Crime%' 
   OR tb.genres LIKE '%Mystery%' 
   OR tb.genres LIKE '%Comedy%'
   OR tb.genres LIKE '%Documentary%' 
   OR (tb.startYear BETWEEN 2006 AND 2016 AND tb.titleType = 'movie') 
   AND tb.tconst NOT IN ('tt0396555', 'tt1753383') 
   AND tb.tconst NOT IN ('tt0458339') 
   AND tb.tconst NOT IN ('tt1825683') 
   AND tb.tconst NOT IN ('tt1049413') 
   AND tb.tconst != 'tt1825683' 
   AND tb.tconst != 'tt1049413' 
   AND tb.tconst != 'tt0089493' 
   AND tb.tconst != 'tt0234215'
   AND tb.tconst != 'tt1006028'
   AND tb.tconst != 'tt0110357' 
   AND tb.tconst != 'tt2378857' 
   AND tb.tconst != 'tt0770828' 
   AND tb.tconst != 'tt0808151' 
   AND tb.tconst != 'tt2215719' 
   AND tb.tconst != 'tt1001562' 
   AND tb.tconst NOT IN ('tt0116606')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10