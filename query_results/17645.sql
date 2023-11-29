SELECT * from
    `title` join
        `title_rating` using (`tconst`) left outer join
            `name` on(`title`.`primaryName` = `name`.`nconst`) where
        `user_input` not between (`title_rating`.`averageRating`, `title_rating`.`numVotes`) order by `title_rating`.`avgRating` desc limit 5