SELECT DISTINCT t.* FROM title AS t WHERE (((((NOT EXISTS ("SELECT * FROM title_crew c JOIN actors aa ON aa.nconst = c." +
                    "'primaryActor" +
                    '" AND aa.birthYear <=? AND aa.deathYear >=?") OR NOT EXISTS("SELECT * FROM title_principals pp JOIN actors ap ON pp.' +
                    "'category = \"" +
                    "'actor\" AND ap.job LIKE \"%actor%\"")))) AND ((t.startYear <?))) ORDER BY avg_rating DESC LIMIT 1 OFFSET?')