SELECT * FROM title_principals WHERE category = 'director' AND job LIKE '%direct%' ORDER BY averageRATING DESC LIMIT 3 OFFSET 0
```

### Task 3: Implementing Movie Recommendation System

You will implement your own movie recommendation system using the generated SQL queries above. Your implementation must include the following components:
* An interface class for accepting inputs from the user and saving them into the application state. This class should have an attribute named `userPreferences` which stores the inputted values of the user.
* A function called `getRecomMovies()` that takes no arguments but returns a list of recommended films. This function should take advantage of the generated SQL query to retrieve data from the database then return those records in order to display the movies suggested to the user.
* A component that displays the recommended movies retrieved from the previous step along with the option to view details about any particular movie in the set. To do so you may use the existing code snippet below.

```javascript
// Display a movie detail page when clicking on a movie card
function renderMovieCard(movieData){
    const {posterPath} = movieData