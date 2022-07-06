### Paste the link to your updated movie-app repository here:
https://github.com/mmckinneyjr/Actualize/tree/main/week02-practice/movie-app


1. Discuss an active record query that you used (from the documentation) and how it works.

.where("title LIKE ?", Movie.sanitize_sql_like(params[:title]) + "%")
This gets a movie "where" the title is equal to the users search input

.order(year: :DESC)
This lists all movies base on year in descending order. 