# COUNT #
## Suppose we want to count the number of records or rows of the "FilmLocations" table

SELECT COUNT(*)
FROM filmlocations;

## We want to count the number of locations of the films.But we also want to restrict the output result set so that we only retrieve the number of locations of the films written by james cameron.

SELECT COUNT(*) as filmCountByJamesCameron
FROM filmlocations
WHERE Writer = "James Cameron";


## Retrieve the number of locations of the films which are directed by Woody Allen.

SELECT COUNT(*) as FilmCountByWoodyAllen
FROM filmlocations
WHERE Director = "Woody Allen";

## Retrieve the number of films shot at Russian Hill.

SELECT COUNT(*) as FilmCountAtRussianHill
FROM filmlocations
WHERE Locations = "Russian Hill";

## Retrieve the number of rows having a release year older than 1950 from the "FilmLocations" table.

SELECT COUNT(*) as FilmCountOlderThan1950
FROM filmlocations
WHERE `Release Year` < 1950;

# DISTINCT #
## We want to retrieve the titles of all films in the table so that duplicates will be discarded in the output result set.

SELECT DISTINCT (Title)
FROM filmlocations;

## We want to retrieve the count of release years of the films produced by Warner Bros. Pictures .

SELECT COUNT(DISTINCT `Release Year`), `Production Company`
FROM filmlocations
WHERE `Production Company` = "Warner Bros. Pictures";

## Retrieve the names of all unique films released in the 21st century and onwards, along with their release years.

SELECT DISTINCT`Release Year`, Title
FROM filmlocations
WHERE `Release Year` > '2000'; 

## Retrieve the directors' names and their distinct films shot at City Hall.

SELECT DISTINCT(Title), Director, Locations
FROM filmlocations
WHERE Locations = "City Hall"
Order by Director DESC;

## Retrieve the number of distributors who distributed films with the 1st actor, Clint Eastwood.

SELECT COUNT(DISTINCT Distributor), `Actor 1`
FROM filmlocations
WHERE `Actor 1` = "Clint Eastwood"; 

# LIMIT #
## Retrieve only the first 25 rows from the table so that rows other than those are not in the output result set.

SELECT *
FROM filmlocations
LIMIT 25;

## Now, we want to retrieve 15 rows from the table starting from row 11.

SELECT *
FROM filmlocations
LIMIT 15 offset 10;

## Retrieve the names of the first 50 films.

SELECT title
FROM filmlocations
LIMIT 50;

## Retrieve the first 10 film names released in 2015.

SELECT title, `release year`
FROM filmlocations
WHERE `release year` = '2015';

## Retrieve the next 3 film names that follow after the first 5 films released in 2015.

SELECT title, `release year`
FROM filmlocations
WHERE `release year` = '2015'
LIMIT 3 offset 5;





