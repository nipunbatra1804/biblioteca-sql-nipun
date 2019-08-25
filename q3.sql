SELECT * FROM book WHERE book.id NOT IN (
SELECT checkout_item.book_id
FROM checkout_item, book
WHERE checkout_item.book_id = book.id
)
UNION
SELECT * FROM movie WHERE movie.id NOT IN (
SELECT checkout_item.movie_id
FROM checkout_item, movie
WHERE checkout_item.movie_id = movie.id
);