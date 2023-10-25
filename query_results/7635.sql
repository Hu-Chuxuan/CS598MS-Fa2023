SELECT tc.* FROM titles AS tc JOIN name_basics as nb ON tc.titleType = nb.primaryName WHERE tc.isAdult = true AND ((nb.deathYear < current_date - interval '7 day') OR (nb.startYear > current_date + interval '7 days')) AND NOT EXISTS( SELECT * from ratings r INNER JOIN title_ratings tr ON r.ratingId = tr.id where ratingValue >= 8)