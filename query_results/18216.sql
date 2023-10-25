SELECT DISTINCT tb.* FROM TitleBasics AS tb INNER JOIN TitleCrew AS tc ON tc.primaryTitle = tb.titleID WHERE tb.genre IN ('Comedy') AND NOT EXISTS( SELECT * from MovieRecommendationSystem AS mrs WHERE mrs.userMoviePreferences LIKE '%' || tb.titleID || '%')