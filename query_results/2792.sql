SELECT tb.* FROM TitleBasics AS tb INNER JOIN TitleCrew AS tw ON tb.titleId = tw.titleId WHERE tb.isAdult=true AND tb.startYear>=1978