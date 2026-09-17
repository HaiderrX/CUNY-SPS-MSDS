DROP TABLE IF EXISTS movie_ratings;

-- used serial to increment counter, in R the type is chr
CREATE TABLE movie_ratings (
    user_id SERIAL PRIMARY KEY,
    spider_man_bnd INT,
    the_odyssey INT,
    coyote_vs_acme INT,
    the_whisper_man INT,
    toy_story_5 INT,
    project_hail_mary INT
);

INSERT INTO movie_ratings (spider_man_bnd, the_odyssey, coyote_vs_acme, the_whisper_man, toy_story_5, project_hail_mary)
VALUES 
    (4,	NULL,	NULL,	NULL,	4,	5),
    (4,	3,	NULL,	NULL,	NULL,	5),
    (4,	3,	NULL,	NULL,	2,	5),
    (4,	5,	NULL,	NULL,	4,	5),
    (NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
    (5,	NULL,	5,	NULL,	1,	5),
    (5,	4,	5,	NULL,	4,	5),
    (NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
    (NULL,	NULL,	NULL,	NULL,	NULL,	NULL),
    (3,	5,	NULL,	NULL,	NULL,	5),
    (4,	NULL,	NULL,	NULL,	NULL,	4),
    (NULL,	NULL,	NULL,	NULL,	NULL,	1),
    (5,	4,	4,	4,	5,	5),
    (5,	5,	4,	NULL,	3,	3),
    (NULL,	NULL,	NULL,	NULL,	NULL,	5),
    (5,	1,	3,	5,	5,	2),
    (3,	1,	2,	4,	NULL,	5),
    (5,	5,	NULL,	NULL,	NULL,	5),
    (5,	NULL,	NULL,	NULL,	5,	5),
    (NULL,	NULL,	NULL,	NULL,	4,	5),
    (NULL,	NULL,	NULL,	NULL,	NULL,	2);

SELECT * FROM movie_ratings;