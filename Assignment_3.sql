-- Question 1

INSERT INTO author (author_id, first_name, last_name, birth_date)
 VALUES ('4','matthew', 'king', '2003-06-25');
 
INSERT INTO book (isbn, title, category, published)
VALUES ('111456', 'space programming', 'computers', '2020-03-14' );

INSERT INTO book_author (book_author_id, isbn, author_id)
VALUES ('6', '111456', '4');

select * from author;
-- Question 2

INSERT INTO book (isbn, title, category, published)
VALUES ('111457', 'Cooking by numbers', 'cooking', '2023-11-19');

INSERT INTO book_author (book_author_id, isbn, author_id)
VALUES ('7', '111457', '1');

-- Question 3

UPDATE book SET title = 'Bicycle racing 2', published = '2023-11-19'
where isbn = '111512';

-- Question 4 

delete from book 
where isbn = "111745";

delete from book_author
where isbn = "111745";

-- Question 5

INSERT INTO book (isbn, title, category, published)
VALUES ('978194', "Murach's MySQL (3rd ed)", 'computer', '2019-03-02');

INSERT INTO author (author_id, first_name, last_name, birth_date)
VALUES ('5', 'Joel', 'Murach', default);

INSERT book_author (book_author_id, isbn, author_id)
VALUES ('8', '978194', '5');



