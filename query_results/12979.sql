SELECT * FROM (SELECT tb.*, rt.*, nr.* WHERE tc.primaryTitle = 'When Harry Met Sally' AND tr.averageRating >.70) AS mr
WHERE mr.titleType IN ('comedy') OR mr.genre IN ('Comedy', 'Romantic Comedy')