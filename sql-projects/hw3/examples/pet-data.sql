
DROP TABLE IF EXISTS pet;

CREATE TABLE pet (
  id INT UNSIGNED,
  name TINYTEXT NOT NULL,
  type TINYTEXT NOT NULL,
  breed TINYTEXT NOT NULL,
  birth_date DATE,
  size ENUM ('S', 'M', 'L', 'XL') NOT NULL,
  appearance TINYTEXT NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO pet VALUES
  (1, 'fido', 'dog', 'half pointer', '1941-08-01', 'M', 'short-haired'),
  (2, 'bill', 'cat', 'house', '1982-06-13', 'L', 'fictional'),
  (3, 'hobbes', 'tiger', 'stuffed', '1987-04-01', 'L', 'sardonic'),
  (4, 'toto', 'dog', 'cairn terrier', '1933-11-17', 'S', 'loyal'),
  (5, 'babe', 'pig', 'white yorkshire', '1995-01-01', 'M', 'sheep like');
