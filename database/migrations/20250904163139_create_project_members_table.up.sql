CREATE TYPE role as ENUM ('OWNER', 'MEMBER');

CREATE TABLE project_members(
  id SERIAL PRIMARY KEY,
  project_id INT NOT NULL,
  user_id INT NOT NULL,
  role role DEFAULT 'MEMBER',
  joined_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  UNIQUE(project_id, user_id),

  CONSTRAINT fk_project FOREIGN KEY(project_id) REFERENCES projects(id) ON DELETE CASCADE,
  CONSTRAINT fk_user FOREIGN KEY(user_id) REFERENCES users(id) ON DELETE CASCADE
);