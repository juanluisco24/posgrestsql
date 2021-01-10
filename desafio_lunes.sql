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

INSERT INTO coment (id, create_at, content, post_id)
VALUES  (1, '2021-01-05', 'comment1', 1),
        (2, '2021-02-05', 'comment2', 2),
        (3, '2021-03-05', 'comment3', 6),
        (4, '2021-04-05', 'comment4', 6),
        (5, '2021-05-05', 'comment5', 6),
        (6, '2021-06-05', 'comment6', 6);

INSERT TO post (id, username, create_at, content, description, title)
VALUES (7, 'Margarita', '2021-02-06', 'post7', 'twitterpost', 'title4');

INSERT INTO coment (id, create_at, content, post_id)
VALUES  (7, '2021-02-07', 'comment7', 7),
        (8, '2021-02-07', 'comment8', 7),
        (9, '2021-02-07', 'comment9', 7),
        (10, '2021-02-07', 'comment10', 7),
        (11, '2021-02-07', 'comment11', 7),
        (12, '2021-02-07', 'comment12', 7);