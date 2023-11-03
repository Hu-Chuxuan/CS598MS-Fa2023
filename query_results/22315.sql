SELECT t.title_id AS MovieId, t.primaryTitle as Title, t.startYear as Year, t.runtimeMinutes as RuntimeMins FROM title_basics t WHERE t.isAdult = false AND ((t.genre IN ('Action/Adventure','Comedy')) OR (t.genre IS NULL))