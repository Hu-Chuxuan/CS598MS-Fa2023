SELECT t.* FROM title_ratings r JOIN title_basics b ON r.titleID = b.id JOIN name_basics c ON b.primaryName = c.nameID JOIN title_principals d ON b.titleID = d.titleID WHERE c.category = "Actress" AND c.job="Leading Role"