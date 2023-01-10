----
-- Querys DDL - Para Criar as tabelas
----

create schema Escola;

CREATE TABLE Escola.Cursos (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  mensalidade NUMERIC NOT NULL,
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE Escola.Alunos (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  cpf VARCHAR(255) UNIQUE,
  email VARCHAR(255) UNIQUE,
  data_nasc DATE NOT NULL,
  end_principal VARCHAR(255) NOT NULL,
  end_complemento VARCHAR(255),
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE Escola.Assinaturas (
  id SERIAL PRIMARY KEY,
  id_curso INTEGER NOT NULL,
  id_aluno INTEGER not NULL,
  criado_em TIMESTAMP DEFAULT NOW(), 
  CONSTRAINT assinaturas_un UNIQUE (id_curso, id_aluno),
  FOREIGN KEY (id_curso) REFERENCES Cursos(id),
  FOREIGN KEY (id_aluno) REFERENCES Alunos(id)
);

CREATE TABLE Escola.Modulos (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  duracao VARCHAR(255) NOT NULL,
  tipo VARCHAR(255) NOT NULL,
  criado_em TIMESTAMP DEFAULT NOW()
);

CREATE TABLE Escola.Conteudos (
  id SERIAL PRIMARY KEY,
  id_modulo INTEGER NOT NULL,
  id_curso INTEGER NOT NULL,
  criado_em TIMESTAMP DEFAULT NOW(),
  CONSTRAINT conteudos_un UNIQUE (id_modulo, id_curso),
  FOREIGN KEY (id_curso) REFERENCES Cursos(id),
  FOREIGN KEY (id_modulo) REFERENCES Modulos(id)
);


----
-- Querys DML - Para a ingestão de dados
----

-- Tabela Cursos

INSERT INTO Escola.Cursos (nome, mensalidade)
VALUES ('Curso de liderança', 399.99);

INSERT INTO Escola.Cursos (nome, mensalidade)
VALUES ('Curso de inglês avançado', 199.99);

INSERT INTO Escola.Cursos (nome, mensalidade)
VALUES ('Curso de Java', 499.99);

INSERT INTO Escola.Cursos (nome, mensalidade)
VALUES ('Curso de Python', 299.99);

INSERT INTO Escola.Cursos (nome, mensalidade)
VALUES ('Curso de programação', 599.99);

-- Tabela Alunos

INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Bruno Santos', '212.232.142-20', 'bruno.santos@email.com', '1991-05-03', 'Rua 2, número 200', 'RJ');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Carlos Oliveira', '033.337.331-34', 'carlos.oliveira@email.com', '1992-08-10', 'Rua 3, número 300', 'SP');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Daniela Souza', '041.414.244-04', 'daniela.souza@email.com', '1993-02-14', 'Rua 4, número 400', 'SP');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Eduardo Pereira', '854.251.555-51', 'eduardo.pereira@email.com', '1994-06-25', 'Rua 5, número 500', 'BH');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Fabiana Silva', '261.060.231-61', 'fabiana.silva@email.com', '1995-09-30', 'Rua 6, número 600', 'BH');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Gabriel dos Santos', '717.375.678-81', 'gabriel.santos@email.com', '1996-12-22', 'Rua 7, número 700', 'RJ');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Henrique Silva', '182.485.218-31', 'henrique.silva@email.com', '1997-03-17', 'Rua 8, número 800', 'RS');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal) VALUES ('Isabella Oliveira', '019.329.235-99', 'isabella.oliveira@email.com', '1998-07-20', 'Rua 9, número 900');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal) VALUES ('João Santos', '123.023.623-11', 'joao.santos@email.com', '1999-11-05', 'Rua 10, número 1000');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal) VALUES ('Karina Souza', '234.234.835-13', 'karina.souza@email.com', '2000-01-01', 'Rua 11, número 1100');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Lucas Pereira', '321.245.745-34', 'lucas.pereira@email.com', '2001-04-15', 'Rua 12, número 1200', 'RS');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Maria Silva', '351.951.452-75', 'maria.silva@email.com', '2002-07-22', 'Rua 13, número 1300', 'RJ');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Nicolle Oliveira', '167.366.567-56', 'nicolle.oliveira@email.com', '2003-10-31', 'Rua 14, número 1400', 'BH');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Otavio Santos', '271.771.471-57', 'otavio.santos@email.com', '2004-02-12', 'Rua 15, número 1500', 'BH');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Paula Souza', '182.389.884-78', 'paula.souza@email.com', '2005-05-24', 'Rua 16, número 1600', 'RS');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Rafael Pereira', '891.811.390-11', 'rafael.pereira@email.com', '2006-09-01', 'Rua 17, número 1700', 'RJ');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Samantha Silva', '331.101.11-91', 'samantha.silva@email.com', '2007-12-14', 'Rua 18, número 1800', 'SP');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Tiago Oliveira', '112.014.055-01', 'tiago.oliveira@email.com', '2008-03-20', 'Rua 19, número 1900', 'SP');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Ulisses Santos', '123.456.789-00', 'ulisses.santos@email.com', '2009-06-30', 'Rua 20, número 2000', 'SP');
INSERT INTO Escola.Alunos (nome, cpf, email, data_nasc, end_principal, end_complemento) VALUES ('Vitoria Souza', '987.654.321-00', 'vitoria.souza@email.com', '2010-10-15', 'Rua 21, número 2100', 'SP');

-- Tabela Assinaturas

INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (1, 1);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 2);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 3);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 4);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (1, 5);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 6);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 7);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 8);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (1, 9);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 10);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 11);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 12);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (1, 13);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 14);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 15);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 16);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (1, 17);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 18);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 19);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 20);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 1);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 2);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 3);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (5, 4);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (1, 19);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (5, 18);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (5, 20);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (4, 9);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (3, 10);
INSERT INTO Escola.Assinaturas (id_curso, id_aluno) VALUES (2, 17);

-- Tabela Modulos

INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Lógica de Programação', '2 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Lógica de Programação I', '3 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Lógica de Programação II', '4 semanas', 'teórico-prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Lógica de Programação III', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Banco de Dados I', '2 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Banco de Dados II', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Java I', '2 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Java II', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Python II', '2 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Python II', '3 semanas', 'teórico-prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Python II', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Básico I', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Básico II', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Intermediário I', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Intermediário II', '4 semanas', 'teórico-prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Intermediário III', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Avançado I', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Avançado II', '4 semanas', 'teórico-prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Inglês Avançado III', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Básica I', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Básica II', '3 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Intermediária I', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Intermediária II', '4 semanas', 'teórico-prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Intermediário III', '4 semanas', 'prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Avançada I', '4 semanas', 'teórico');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Avançada II', '8 semanas', 'teórico-prático');
INSERT INTO Escola.Modulos (nome, duracao, tipo) VALUES ('Liderança Avançada III', '12 semanas', 'prático');

-- Tabela Conteudos

INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 20);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 21);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 22);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 23);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 24);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 25);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 26);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (1, 27);

INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 12);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 13);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 14);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 15);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 16);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 17);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 18);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (2, 19);

INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 1);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 2);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 3);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 4);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 5);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 6);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 7);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (3, 8);

INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 1);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 2);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 3);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 4);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 5);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 6);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 9);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 10);
INSERT INTO Escola.Conteudos (id_curso, id_modulo) VALUES (4, 11);
