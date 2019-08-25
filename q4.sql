INSERT INTO book VALUES (11,'The Pragmatic Programmer');
INSERT INTO member VALUES (43, 'Nipun');

INSERT INTO checkout_item(member_id, book_id)  VALUES (43,11);

SELECT member.name FROM member WHERE member.id IN (
SELECT checkout_item.member_id
FROM book, checkout_item
WHERE checkout_item.book_id = book.id AND book.title = 'The Pragmatic Programmer'
);

