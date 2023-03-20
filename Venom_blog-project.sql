CREATE DATABASE IF NOT  EXISTS venom_blog;
USE venom_blog;
CREATE TABLE IF NOT EXISTS user(
 email INT PRIMARY KEY,
 full_name  VARCHAR(50),
 dob INT(20),
 password VARCHAR(50),
 country VARCHAR(20),
 Designation VARCHAR(20),
 bio VARCHAR(100),
 Tags VARCHAR(100)
);
DESCRIBE user;

USE venom_blog;

CREATE TABLE IF NOT EXISTS blog_content (
 blog_id INT PRIMARY KEY,
 blog_title  VARCHAR(50),
 post_date INT(10),
 blog_category VARCHAR(30),
 blog_tags VARCHAR(20),
 blog_content VARCHAR(250)
);

CREATE TABLE IF NOT EXISTS user_comment (
 comment_id INT PRIMARY KEY,
 comment_text  VARCHAR(80),
 comment_date INT(10)
);

CREATE TABLE IF NOT EXISTS user_like (
 like_id INT PRIMARY KEY,
 like_date INT(10)
);

CREATE TABLE IF NOT EXISTS follow_module (
 follower_id VARCHAR(80),
 following_id VARCHAR(80),
 follow VARCHAR(80)
);
