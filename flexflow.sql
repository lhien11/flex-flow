DROP TABLE users;

CREATE TABLE users (
    user_id serial PRIMARY KEY,
    email  character varying(255)
);

INSERT INTO users (email) 
VALUES ('stevelarsen01@gmail.com'),
('lhien11@gmail.com')
;

SELECT * FROM users;

DROP TABLE users;

CREATE TABLE category (
    category_id serial PRIMARY KEY,
    category_name  character varying(20),
    category_sequence integer,
    category_type character varying(6) 
);

INSERT INTO category (category_name, category_sequence, category_type) 
VALUES ('Take Home', 1, 'credit'),
('Flex', 2, 'debit'),
('Flow', 3, 'debit'),
('Functional', 4, 'debit')
;

SELECT * FROM category;

DROP TABLE item;

CREATE TABLE item (
    item_id serial PRIMARY KEY,
    category_id INTEGER REFERENCES category,
    item_name  character varying(20),
    item_sequence integer,
    item_text character varying(255), 
    item_description text, 
    item_input_mode character varying(10)
);

INSERT INTO item (item_name, category_id, item_sequence, item_text, item_description, item_input_mode) 
VALUES ('Holidays', 2, 1, 'Holidays', 'Enter monthly holiday expenses.  For example, you may put $200 for Christmas in December', 'V'),
('Birthdays', 2, 2, 'Birthdays', 'Enter monthly birthday expenses.  For example, you may put $200 for your partner in May, and $20 for Aunt Sally in July', 'V')
;

SELECT * FROM item;






