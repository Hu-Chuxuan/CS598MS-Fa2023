SELECT DISTINCT tb.titleId AS MovieID, tc.* FROM title_basic as tb JOIN title_rating as tr ON tb.titleId = tr.titleId AND tr.userInput = 'comedy' WHERE tb.isAdult=false