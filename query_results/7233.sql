SELECT DISTINCT title_id FROM title_basic WHERE title_type ='movie' AND title_startyear >= {userInput[0]} ORDER BY title_averagerating DESC LIMIT {userInput[1]} OFFSET {userInput[2]}
UNION ALL SELECT DISTINCT title_id FROM title_crew WHERE title_type IN ('movie') AND title_startyear BETWEEN {userPreferenceHistory[0][0]} AND {userPreferenceHistory[0][1]} UNION ALL SELECT DISTINCT title_id FROM title_principal WHERE title_type IN ('movie') AND title_startyear BETWEEN {userPreferenceHistory[0][0]} AND {userPreferenceHistory[0][1]}
ORDER BY title_avgrating DESC
LIMIT {userInput[3]}
OFFSET {userInput[4]}