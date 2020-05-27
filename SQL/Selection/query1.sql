-- Find all films with maximum length or minimum rental duration (compared to all other % films).
-- In other words let L be the maximum film length, and let R be the minimum rental duration in the table film. You need to find all films that have length L or duration R or both length L and duration R.
-- If a film has either a maximum length OR a minimal rental duration it should appear in the result set. It does not need to have both the maximum length and the minimum duration.
-- You just need to return the film_id for this query.
-- Order your results by film_id in ascending order.

-- Put query for Q1 here

select film_id from film
where length = (select MAX(length) from film)
or rental_duration = (select MIN(rental_duration) from film)
order by film_id asc;
