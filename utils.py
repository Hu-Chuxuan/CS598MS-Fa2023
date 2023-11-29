TEMPLATE = r"""
Generate a SQL query for a movie recommendation system that operates on the IMDb database. The database comprises several tables with the following columns:
1. title_basics [tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres]
2. title_ratings [tconst, averageRating, numVotes]
3. name_basics [nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles]
4. title_crew [tconst, directors, writers]
5. title_principals [tconst, ordering, nconst, category, job, characters]

Here is a detailed desciption of the tables and columns:
the 'name_basics' table holds basic information for all the people within the dataset. The columns are as follows:
- nconst (string) : alphanumeric unique identifier of the name/person, e.g., 'nm0000001'; 
- primaryName (string) : name by which the person is most often credited, e.g., 'Fred Astaire';
- birthYear : in YYYY format, e.g., '1899';
- deathYear : in YYYY format if applicable, else '\N', e.g., '1987';
- primaryProfession (array of strings) : the top-3 professions of the person, e.g., 'actor,soundtrack,writer', 'actor,soundtrack';
- knownForTitles (array of tconsts) : titles the person is known for, e.g. 'tt0053137,tt00319'

the 'title_basics' table holds basic information for all the movies within the dataset. The columns are as follows:
- tconst (string) : alphanumeric unique identifier of the title, e.g., 'tt0000001';
- titleType (string) : the type/format of the title, e.g., 'movie', 'short', 'tvseries', 'tvepisode', 'video', etc;
- primaryTitle (string) : the more popular title / the title used by the filmmakers on promotional materials at the point of release, e.g., 'Carmencita';
- originalTitle (string) : original title, in the original language, e.g., 'Carmencita';
- isAdult (boolean) : 0: non-adult title; 1: adult title;
- startYear (YYYY) : represents the release year of a title. In the case of TV Series, it is the series start year, e.g., '1894';
- endYear (YYYY) : TV Series end year. ‘\N’ for all other title types, e.g., '1894';
- runtimeMinutes : primary runtime of the title, in minutes, e.g., '12', '1';
- genres (string array) : includes up to three genres associated with the title, e.g., 'Documentary,Short', 'Comedy,Romance,Animation';

the 'title_crew' table holds information about the directors and writers information for each movie. The columns are as follows:
- tconst (string) : alphanumeric unique identifier of the title, e.g., 'tt0000001';
- directors (array of nconsts) : director(s) of the given title, e.g., 'nm0005690,nm0374658';
- writers (array of nconsts) : writer(s) of the given title, e.g., 'nm0085156';

the 'title_principals' table holds the detailed information of the principal staffs for each movie. The columns are as follows:
- tconst (string) ： alphanumeric unique identifier of the title, e.g., 'tt0000001';
- ordering (integer) : a number to uniquely identify rows for a given titleId, e.g., '1', '2', '3';
- nconst (string) : alphanumeric unique identifier of the name/person, e.g., 'nm1588970';
- category (string) : the category of job that person was in, e.g., 'self', 'director', 'cinematographer', 'composer', 'editor', 'actor', 'producer';
- job (string) - the specific job title if applicable, else '\N', e.g., 'director of photography';
characters (string) - the name of the character played if applicable, else '\N', e.g., "[""Assistant""]", "[""Blacksmith""]";

the 'title_ratings' table holds information about all the rating information for each movie. The columns are as follows:
- tconst (string) : alphanumeric unique identifier of the title, e.g., 'tt0000001';
- averageRating : weighted average of all the individual user ratings, e.g., '5.6';
- numVotes : number of votes the title has received, e.g., '1694', '210';

Your task is to generate a SQL query that can be executed on this database and the executed result should be movie recommendations to users based on their input and historical preferences. You only need to provide a single SQL query without executing it or showing the output results.

Important! Start your answer with "SELECT" and end with ";"

User Input: 
{user_query}
User Preference History: 
{user_history}
SQL Query:
"""

SYS_MESSAGE = r"""
Generate a SQL query for a movie recommendation system that operates on the IMDb database. The database comprises several tables with the following columns:
1. title_basics [tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres]
2. title_ratings [tconst, averageRating, numVotes]
3. name_basics [nconst, primaryName, birthYear, deathYear, primaryProfession, knownForTitles]
4. title_crew [tconst, directors, writers]
5. title_principals [tconst, ordering, nconst, category, job, characters]

Here is a detailed desciption of the tables and columns:
the 'name_basics' table holds basic information for all the people within the dataset. The columns are as follows:
- nconst (string) : alphanumeric unique identifier of the name/person, e.g., 'nm0000001'; 
- primaryName (string) : name by which the person is most often credited, e.g., 'Fred Astaire';
- birthYear : in YYYY format, e.g., '1899';
- deathYear : in YYYY format if applicable, else '\N', e.g., '1987';
- primaryProfession (array of strings) : the top-3 professions of the person, e.g., 'actor,soundtrack,writer', 'actor,soundtrack';
- knownForTitles (array of tconsts) : titles the person is known for, e.g. 'tt0053137,tt00319'

the 'title_basics' table holds basic information for all the movies within the dataset. The columns are as follows:
- tconst (string) : alphanumeric unique identifier of the title, e.g., 'tt0000001';
- titleType (string) : the type/format of the title, e.g., 'movie', 'short', 'tvseries', 'tvepisode', 'video', etc;
- primaryTitle (string) : the more popular title / the title used by the filmmakers on promotional materials at the point of release, e.g., 'Carmencita';
- originalTitle (string) : original title, in the original language, e.g., 'Carmencita';
- isAdult (boolean) : 0: non-adult title; 1: adult title;
- startYear (YYYY) : represents the release year of a title. In the case of TV Series, it is the series start year, e.g., '1894';
- endYear (YYYY) : TV Series end year. ‘\N’ for all other title types, e.g., '1894';
- runtimeMinutes : primary runtime of the title, in minutes, e.g., '12', '1';
- genres (string array) : includes up to three genres associated with the title, e.g., 'Documentary,Short', 'Comedy,Romance,Animation';

the 'title_crew' table holds information about the directors and writers information for each movie. The columns are as follows:
- tconst (string) : alphanumeric unique identifier of the title, e.g., 'tt0000001';
- directors (array of nconsts) : director(s) of the given title, e.g., 'nm0005690,nm0374658';
- writers (array of nconsts) : writer(s) of the given title, e.g., 'nm0085156';

the 'title_principals' table holds the detailed information of the principal staffs for each movie. The columns are as follows:
- tconst (string) ： alphanumeric unique identifier of the title, e.g., 'tt0000001';
- ordering (integer) : a number to uniquely identify rows for a given titleId, e.g., '1', '2', '3';
- nconst (string) : alphanumeric unique identifier of the name/person, e.g., 'nm1588970';
- category (string) : the category of job that person was in, e.g., 'self', 'director', 'cinematographer', 'composer', 'editor', 'actor', 'producer';
- job (string) - the specific job title if applicable, else '\N', e.g., 'director of photography';
characters (string) - the name of the character played if applicable, else '\N', e.g., "[""Assistant""]", "[""Blacksmith""]";

the 'title_ratings' table holds information about all the rating information for each movie. The columns are as follows:
- tconst (string) : alphanumeric unique identifier of the title, e.g., 'tt0000001';
- averageRating : weighted average of all the individual user ratings, e.g., '5.6';
- numVotes : number of votes the title has received, e.g., '1694', '210';

Your task is to generate a SQL query that can be executed on this database and the executed result should be movie recommendations to users based on their input and historical preferences. You only need to provide a single SQL query without executing it or showing the output results.

Important! Start your answer with "SELECT" and end with ";"
"""

USER_INPUT = """
User Input: 
{user_query}
User Preference History: 
{user_history}
"""
