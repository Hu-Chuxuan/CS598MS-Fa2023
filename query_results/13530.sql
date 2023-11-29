SELECT DISTINCT t.title_id AS id FROM title_rating tr INNER JOIN title t ON tr.tconst = t.tconst WHERE ((tr.averageRating BETWEEN @min AND @max) OR (@min IS NULL)) ORDER BY tr.numVOTES DESC LIMIT 2 OFFSET 0

I got an error saying I didn't specify the correct column names when trying to use the inner join command so I just put in my own sql code instead?
```sql
CREATE TABLE IF NOT EXISTS `user_history` (`id` INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, `name` VARCHAR(10), `year` DATE)