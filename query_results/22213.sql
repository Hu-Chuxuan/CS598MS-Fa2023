SELECT * FROM `title` WHERE 
(
	(directors LIKE '%Danny Boyle%' OR writers LIKE '%Danny Boyle%') AND
	genre IN ('Documentaries', 'Biographical Films' )
)