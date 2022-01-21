-- Exercise 1 (done for you):
SELECT * FROM users;



-- Exercise 2 (done for you):
SELECT id, first_name, last_name 
FROM users;



-- Exercise 3
SELECT id, first_name, last_name FROM users
ORDER BY last_name;


-- Exercise 4
SELECT id, user_id, image_url 
FROM posts
WHERE user_id = 26;


-- Exercise 5
SELECT id, image_url, user_id
FROM posts
WHERE user_id = 26 or user_id = 12;


-- Exercise 6
select count(user_id) from posts;



-- Exercise 7
select user_id, count(id) from
comments
group by user_id 
order by count(id) desc;



-- Exercise 8
select posts.id, posts.image_url, posts.user_id,
users.username, users.first_name, users.last_name
from posts
inner join users on posts.user_id = users.id
where posts.user_id = 12 or posts.user_id = 26



-- Exercise 9
SELECT posts.id, posts.pub_date, following.following_id
FROM following
INNER JOIN posts ON following.following_id = posts.user_id
WHERE following.user_id = 26;



-- Exercise 10




-- Exercise 11
INSERT INTO bookmarks(user_id, post_id)
VALUES (26, 219), (26, 220), (26, 221);


-- Exercise 12

DELETE FROM bookmarks
WHERE user_id = 26 and 
(post_id = 219 or post_id = 220 or post_id = 221);



-- Exercise 13
UPDATE users
SET email = 'cyoung2022@gmail.com'
WHERE id = 26;



-- Exercise 14
