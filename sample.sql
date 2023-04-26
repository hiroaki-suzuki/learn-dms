CREATE TABLE users (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

INSERT INTO users (name) VALUES ('John'), ('Jane'), ('Joe'), ('Jill');

CREATE TABLE posts (
  id INT NOT NULL AUTO_INCREMENT,
  user_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  body TEXT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users(id)
);

INSERT INTO posts (user_id, title, body) VALUES
  (1, 'Hello World', 'This is my first post.'),
  (1, 'Second Post', 'This is my second post.'),
  (2, 'Hello World', 'This is Jane''s first post.'),
  (2, 'Second Post', 'This is Jane''s second post.'),
  (3, 'Hello World', 'This is Joe''s first post.'),
  (3, 'Second Post', 'This is Joe''s second post.'),
  (4, 'Hello World', 'This is Jill''s first post.'),
  (4, 'Second Post', 'This is Jill''s second post.');