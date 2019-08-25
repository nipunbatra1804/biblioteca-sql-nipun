SELECT member.name FROM member WHERE member.id IN (
SELECT checkout_item.member_id
FROM book, checkout_item
WHERE checkout_item.book_id = book.id AND book.title = 'The Hobbit'
);