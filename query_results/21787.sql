SELECT t.* FROM
(title_basics AS tb JOIN title_ratings as tr ON tb.primaryTitle = tr.primaryTitle AND tr.averageRating > 6/10 )
JOIN (name_basics as np JOIN title_principals as pr ON np.category LIKE '%actress%' OR np.job LIKE '%actor%')
ON pr.ordering >= 100