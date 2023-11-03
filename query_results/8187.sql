SELECT DISTINCT titles.* FROM title_recommendation AS rec JOIN title_basics ON rec.titleId = title_basics.id WHERE rec.userRecommended LIKE '%romance%' AND (rec.userPreferred IN ('%comedy%') OR rec.userPreferred IN ('%rom-com%'))