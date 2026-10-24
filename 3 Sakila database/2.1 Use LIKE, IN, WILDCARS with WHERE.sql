SELECT actor_id, last_name, first_name
FROM actor
where first_name  in ('PENELOPE', 'JOHN%', 'JA%NE');

SELECT *
FROM address
WHERE district = 'Buenos Aires' AND address like '%EL%' or address like '%AL%'




