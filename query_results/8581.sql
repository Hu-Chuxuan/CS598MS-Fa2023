SELECT * FROM title_recommended WHERE tconst IN ('%s') AND titleType LIKE '%s'", preferenceHistory, "%")
	fmt.Println(`Query :`,queryString)