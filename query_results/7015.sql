SELECT DISTINCT * FROM tconst WHERE tconst.isAdult = false AND ((titleType="Action" OR titleType='') AND (startYear <= 2016)) ORDER BY avgrating DESC LIMIT 5