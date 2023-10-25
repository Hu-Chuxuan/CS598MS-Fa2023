SELECT t.* FROM title_basics AS t JOIN title_rating USING(titleId),
	name_basic as bb JOIN name_ratings using (nameID) WHERE bb.primaryName = "Emma Stone" AND bb.birthyear >= 1988