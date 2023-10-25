SELECT * FROM ( SELECT tconst, nconst FROM title_basics WHERE tconst = 'National Treasure: Book of Secrets' ) union ALL select * from (select tconst, nconst from title_basic where tconst='Taxi')union all select *from (select tconst, nconst from title_basic where tconst='Casino Royale'))

INSERT INTO user_preferences VALUES ('National Treasure: Book of Secrets','National Treasure: Book of Secrets')