SELECT * FROM (
    SELECT t.*, r.*, c.*, p.*, n.*, u.*
     from #title_ratings as t join #name_basics as n using(titleId),
          #titles_crew as tc using(movieId),
           #titles_principals as pr using(characterId),
            #titles_categories as cat using(categoryId),
             #users_preferences as up using(userID)