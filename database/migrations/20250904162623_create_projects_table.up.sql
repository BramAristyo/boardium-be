CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  owner_id INT NOT NULL,
  name VARCHAR(100) NOT NULL,
  description TEXT,
  
  CONSTRAINT fk_user FOREIGN KEY(owner_id) REFERENCES users(id) ON DELETE CASCADE
);