SELECT tc.* FROM title_basic as tb LEFT JOIN title_rating as tr ON tb.title_id = tr.title_id WHERE tr.averageRATING >= @userInput AND tr.numVOTES > 0