DROP DATABASE posts;

CREATE DATABASE posts;

\c posts;

CREATE TABLE post(
    id INT,
    username VARCHAR(30),
    create_at DATE,
    content VARCHAR(255),
    description VARCHAR(255),
    PRIMARY KEY (id)
);

INSERT INTO post
(id, username, create_at, content, description)
VALUES (1, 'Pamela', '2021-01-04', 'post1', 'facebookpost'),
        (2, 'Pamela', '2021-01-05', 'post2', 'instagrampost'),
        (3, 'Carlos', '2021-01-01', 'post3', 'twitterpost');

ALTER TABLE post
ADD title VARCHAR(50);

UPDATE post SET title = 'title1';

INSERT INTO post
(id, username, create_at, content, description, title)
VALUES (4, 'Pedro', '2021-01-06', 'post4', 'linkedinpost', 'title2'),
        (5, 'Pedro', '2021-01-08', 'post5', 'tiktokpost', 'title2');

DELETE FROM post WHERE id = 3;

INSERT INTO post
(id, username, create_at, content, description, title)
VALUES (6, 'Carlos', '2021-01-09', 'post6', 'facebookpost', 'title3');

CREATE TABLE coment(
    id INT PRIMARY KEY,
    create_at TIMESTAMP,
    content VARCHAR(255),
    post_id INT,
    FOREIGN KEY (post_id) REFERENCES post(id)
);
