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
INNER JOIN amazon
ON nyt.isbn_10 = amazon.isbn_10
--WHERE nyt.author='Stephen King';



SELECT nyt.isbn_10, nyt.title, nyt.author, nyt.publisher, nyt.age_group, amazon.print_length
FROM nyt
INNER JOIN amazon
ON nyt.author = amazon.author;

SELECT nyt.isbn_10, nyt.title, nyt.author, nyt.publisher, nyt.age_group, amazon.print_length
FROM nyt
INNER JOIN amazon
ON nyt.publisher = amazon.publisher;


SELECT COUNT( nyt.isbn_10) FROM nyt;

SELECT COUNT( amazon.isbn_10) FROM amazon;





-- Top 10 Publisher data in NYT 
select count(publisher) as CNT,publisher from nyt
group by publisher
order by CNT desc limit 10;

-- Top 10 Publisher data in Amazon
select count(publisher) as CNT,publisher from amazon
group by publisher
order by CNT desc limit 10;

-- Top 5 Author data in NYT 
select count(author) as CNT,author from nyt
group by author
order by CNT desc limit 5;


-- Top 5 Author data in Amazon
select count(author) as CNT,author from amazon
group by author
order by CNT desc limit 5;

-- Best author by publisher data in NYT 
select count(publisher) as CNT, author, publisher from nyt
group by author, publisher
order by CNT desc;
