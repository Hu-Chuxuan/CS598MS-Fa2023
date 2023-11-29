SELECT DISTINCT(title_id),
    CONCAT("'","title_type", "'", title_id,"','", genre_id, "'") AS genre_ids FROM title WHERE (startyear >? AND endyear <?)