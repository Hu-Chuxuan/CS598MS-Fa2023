SELECT title_rating.* FROM title_rating JOIN title_crew ON title_rating.titleID = title_crew.movieID WHERE userPreferedMovie IN ('When Harry Met Sally...','You've Got Mail') AND userPreferredGenre='Comedy'