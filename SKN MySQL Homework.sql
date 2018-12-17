Use sakila;

-- 1a
Select last_name, first_name 
from actor;

-- 1b
Select actor_id, concat(first_name, ' ', last_name) as Actor_Name
from actor;

-- 2a
Select * from actor
Where first_name = "Joe";

-- 2b
Select * from actor
Where last_name  like "%GEN";

-- 2c
Select * from actor
Where last_name  like '%LI';

-- 2d
select country_id, country
from country
where country IN ('Afghanistan', 'Bangladesh', 'China');

-- 3a
Alter Table sakila.actor
Add Column description BLOB;

-- 3b
Alter Table sakila.actor
Drop Column description;

-- 4a
Select last_name
From actor
Where last_name=last_name;

-- 4b
Select last_name
From actor
Where last_name=last_name
name_count = name_count + 1;

-- 4c
Alter Table actor;

Set SQL_SAFE_UPDATES = 0;

Update actor
Set first_name='GROUCHO'
Where last_name='WILLIAMS' AND  first_name='HARPO';

-- 4d
Alter Table actor;

Set SQL_SAFE_UPDATES = 0;

Update actor
Set first_name='HARPO'
Where first_name='GROUCHO';

-- 5a
Show Create Table address;

-- 6a
Select staff.first_name, staff.last_name, staff.address_id, address.address_id, address.address
From address
Join staff On
staff.address_id=address.address_id;

-- 6b
Select staff.staff_id, staff.first_name, staff.last_name, payment.staff_id, payment.amount
from payment
Join staff on
staff.staff_id=payment.staff_id;

-- 6c
Select film_actor.actor_id, film_actor.film_id, film.film_id, film.title
from film
Inner Join film_actor on
film_actor.film_id=film.film_id;

-- 6d


-- 6e


-- 7a


-- 7b


-- 7c


-- 7d


-- 7e


-- 7f


-- 7g


-- 7h


-- 8a


-- 8b


-- 8c



