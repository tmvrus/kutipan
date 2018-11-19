-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE quotes (
	id SERIAL PRIMARY KEY,
        text TEXT NOT NULL,
	author_id INT NOT NULL,

	CONSTRAINT fk_author_quotes FOREIGN KEY (author_id) REFERENCES authors (id)
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE quotes;

