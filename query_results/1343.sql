SELECT * FROM (
    SELECT t.*, rr.*
        --from all titles where user preference matches any of them
     UNION ALL
         --from all titles where user preference does not match but rating > x%
                   ) AS mgr WHERE mgr.rating >= 8 AND mgr.averageRating <= 9