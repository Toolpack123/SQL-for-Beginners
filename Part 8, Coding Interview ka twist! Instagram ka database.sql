-- The "Social Media" Activity Feed
Use School;
CREATE TABLE post_likes (
    like_id BIGINT PRIMARY KEY AUTO_INCREMENT,
    post_id INT,
    user_id INT,
    liked_at DATETIME DEFAULT NOW()
);

INSERT INTO post_likes 
(post_id, user_id) VALUES (101, 5002),
(101, 5003),(105, 7001);

select * from post_likes;
-- User 5002 ne 'Unlike' button dabaya
DELETE FROM post_likes 
WHERE like_id = 2;

INSERT INTO post_likes 
(post_id, user_id) VALUES (101, 5004);
