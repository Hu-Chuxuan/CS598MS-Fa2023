SELECT * FROM (
    SELECT t.*, n.*, c.*, r.*
        from title_basics as t join
            name_basics as n using(titleId),
                crew_members as cm using (castingDirectorId, castingProducerId, castId, characterId),
                titles as r using (writerId) where
                   t.isAdult = true AND NOT EXISTS (select 1 from rating_averages ra WHERE ra.movieId=t.id AND ra.userID=@userInput) ORDER BY t.startYear DESC LIMIT @limit