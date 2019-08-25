SELECT * FROM member WHERE member.id NOT IN (
SELECT checkout_item.member_id
FROM member, checkout_item, book
WHERE checkout_item.member_id = member.id and checkout_item.book_id = book.id
);