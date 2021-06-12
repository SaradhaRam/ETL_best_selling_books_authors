DROP TABLE IF EXISTS amazon ;
DROP TABLE IF EXISTS nyt;

CREATE TABLE amazon(
	isbn_10	TEXT PRIMARY KEY,
	title TEXT,
  	author TEXT,
	publisher TEXT,
	age_group TEXT,
	print_length TEXT
);

CREATE TABLE nyt(
	isbn_10 TEXT PRIMARY KEY,
	title TEXT,
	author TEXT,
	publisher TEXT,
	age_group TEXT
);

SELECT * FROM nyt
SELECT * FROM amazon

SELECT nyt.isbn_10, nyt.title, nyt.author, nyt.publisher, nyt.age_group, amazon.print_length
FROM nyt
FULL OUTER JOIN amazon
ON nyt.isbn_10 = amazon.isbn_10;

SELECT nyt.isbn_10, nyt.title, nyt.author, nyt.publisher, nyt.age_group, amazon.print_length
FROM nyt
INNER JOIN amazon
ON nyt.isbn_10 = amazon.isbn_10
WHERE nyt.author='Stephen King';




SELECT COUNT( nyt.isbn_10) FROM nyt;

SELECT COUNT( amazon.isbn_10) FROM amazon;

