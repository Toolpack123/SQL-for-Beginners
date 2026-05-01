# Part9 :UPDATE with WHERE
/* 
CREATE TABLE users (
    user_id varchar(50) PRIMARY KEY,        -- Manual ID: 101, 102 etc.
    user_name VARCHAR(50),
    Category VARCHAR(20) 
);
INSERT INTO users (user_id, user_name, Category) 
VALUES ('user1','Aariv', 'Education')
('user2','Gopal', 'Artist');*/ 
Desc users;
select * from users;

-- Scenario: changed category

UPDATE users 
SET Category = 'Creator'
WHERE user_id = 'user1';

-- 4. Verification
SELECT * FROM users WHERE user_id = 'user1';
