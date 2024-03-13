CREATE DATABASE FilmLocations;
SELECT * 
FROM filmlocations;

## Retrieve the fun facts and filming locations of all films.

Select funfacts, Locations
FROM filmlocations;

## Retrieve the names of all films released in the 20th century and before (release years before 2000 including 2000), along with filming locations and release years.

SELECT Title,Locations, `Release Year`
FROM filmlocations
WHERE `Release Year` <= '2000'
ORDER By `Release Year` DESC;

## Retrieve the names, production company names, filming locations, and release years of the films not written by James Cameron.

SELECT Title, `Production Company`, Locations, `Release Year`, Writer
FROM filmlocations
WHERE Writer != 'James Cameron';
