SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND tb.primaryTitle NOT IN ('Killer Clowns from Outer Space', 'Tucker & Dale vs. Evil', 'Shaun of the Dead', 'A Nightmare on Elm Street')