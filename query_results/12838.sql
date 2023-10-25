SELECT * FROM (title_basics tb LEFT JOIN (title_ratings tr) ON(tb.primaryTitle=tr.primaryTitle AND tr.numVotes>0)) WHERE ((tb.startYear BETWEEN '1970' AND '1980') OR (tb.endYear BETWEEN '1960' AND '1970')) AND (((tb.genre IN ('Comedy', 'Drama', 'Fantasy', 'Horror', 'Musical', 'Sci-Fi', 'War'), NOT tb.isAdult) OR (tb.genre IS NULL))) AND (((tr.averageRating>=4), (tr.averageRating<=5)), (tr.avgRatings>=1),(tr.numVotes>=1))