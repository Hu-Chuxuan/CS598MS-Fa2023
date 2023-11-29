SELECT distinct
    tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genre from
        title_basic where
            ((startYear >= 1980) AND (endYear <= 2010)) OR ('all') AND titleType ='movie')