-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE authors (
	id   SERIAL PRIMARY KEY,
	name VARCHAR(300) NOT NULL	
);

-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE authors;

