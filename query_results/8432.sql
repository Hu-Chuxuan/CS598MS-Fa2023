SELECT tb.* FROM title_ratings AS r JOIN title_principals as p ON r.primaryTitle = p.title WHERE p.category=’actor' AND p.job='character'