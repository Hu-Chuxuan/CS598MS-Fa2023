SELECT * FROM (
    SELECT DISTINCT
        tc.*, nr.*,
        CASE WHEN nc = 'director' THEN director ||'(' || year || '-' || year END AS Director,
        CASE WHEN nc = 'writer' THEN writer ||'(' || year || '-' || year END AS Writer
         from title_crew as tc LEFT JOIN title_ratings as tr ON tr.titleId=tc.id AND tr.averageRating>0 left join name_basic nsb on nsb.nameId=tr.primaryName left join name_basic ncb on ncb.nameId=nc.nameId