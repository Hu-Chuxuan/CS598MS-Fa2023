SELECT * FROM rating WHERE userID=@userID AND (startYear>='1970' OR startYear<='1970') AND (endYear>=@yearStart AND endYear<=@yearEnd)