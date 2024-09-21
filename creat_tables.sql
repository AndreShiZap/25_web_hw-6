-- Таблиця груп
CREATE TABLE groups (
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT null
);

-- Таблиця студентів
CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(150) NOT NULL,
  group_id INTEGER REFERENCES groups(id)
  on delete cascade
);

-- Таблиця викладачів
CREATE TABLE teachers (
  id SERIAL PRIMARY KEY,
  fullname VARCHAR(150) NOT null
);

-- Таблиця предметів
CREATE TABLE subjects (
  id SERIAL PRIMARY KEY,
  name VARCHAR(175) NOT NULL,
  teacher_id INTEGER  REFERENCES teachers(id)
  on delete cascade
);

-- Таблиця оцінок
CREATE TABLE grades (
  id SERIAL PRIMARY KEY,
  student_id INTEGER  REFERENCES students(id)
  on delete cascade,
  subject_id INTEGER  REFERENCES subjects(id)
  on delete cascade,
  grade INTEGER CHECK (grade >= 0 AND grade <= 100),
  grade_date DATE NOT NULL
);
