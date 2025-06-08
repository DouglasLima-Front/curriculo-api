-- Criação das tabelas
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  email TEXT NOT NULL,
  bio TEXT
);

CREATE TABLE experiences (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  title TEXT,
  company TEXT,
  start_date DATE,
  end_date DATE,
  description TEXT
);

CREATE TABLE educations (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  school TEXT,
  degree TEXT,
  start_year INT,
  end_year INT
);

CREATE TABLE projects (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  name TEXT,
  description TEXT,
  link TEXT
);

CREATE TABLE skills (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id),
  name TEXT
);

-- Inserção dos usuários
INSERT INTO users (name, email, bio)
VALUES
('Douglas Lima', 'douglasguilhermeclima@gmail.com', 'Analista de Recursos Humanos.'),
('Ana Costa', 'ana@email.com', 'Profissional de dados com foco em IA.');

-- Experiências
INSERT INTO experiences (user_id, title, company, start_date, end_date, description) VALUES
(1, 'Analista de Recursos Humanos', 'Recrut.AI', '2023-01-01', '2024-12-31', 'Analista de Recursos Humanos'),
(2, 'Analista de Dados Sênior', 'DataMind', '2021-05-01', '2024-06-01', 'Criação de dashboards e modelos preditivos com Python e SQL.');

-- Formaçōes
INSERT INTO educations (user_id, school, degree, start_year, end_year) VALUES
(1, 'Universidade Católica de Pernambuco (UNICAP)', 'Sistemas para Internet', 2023, 2025),
(2, 'UFPE', 'Bacharelado em Estatística', 2017, 2021);

-- Projetos
INSERT INTO projects (user_id, name, description, link) VALUES
(1, 'Portfólio Pessoal', 'Aplicativo em React Native com jogo de lógica e currículo interativo.', 'https://github.com/DouglasLima-Front'),
(2, 'Detecção de Fraudes', 'Projeto de machine learning para identificar transações bancárias suspeitas.', 'https://github.com/anacosta/fraude-ml');

-- Habilidades
INSERT INTO skills (user_id, name) VALUES
(1, 'JavaScript'), (1, 'Node.js'), (1, 'React'), (1, 'PostgreSQL'), (1, 'Git'),
(2, 'Python'), (2, 'Pandas'), (2, 'Power BI'), (2, 'SQL'), (2, 'Machine Learning');
