SELECT * FROM
( SELECT
    tb.*,
    rr.rating AS rating,
    rr.title AS recommendedMovie
FROM title_basic as tb LEFT JOIN title_recommendation as tr ON tb.primaryTitle = tr.primaryTitle
LEFT JOIN rating as rr ON rr.averageRating >= tb.startYear AND rr.averageRating <= tb.endYear AND rr.numVotes > 2