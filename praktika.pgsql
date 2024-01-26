CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    birth_date DATE,
    GENDER VARCHAR(10),
    is_active BOOLEAN,
    account_id INT,  
    CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES accounts(id) ON DELETE CASCADE
);


CREATE TABLE teachers (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    first_name VARCHAR(255) not null,
    last_name VARCHAR(255) not null,
    birth_date DATE,
    GENDER VARCHAR(10),
    is_active BOOLEAN DEFAULT TRUE,
    account_id INT UNIQUE,
    CONSTRAINT fk_account_id FOREIGN KEY (account_id) REFERENCES accounts(id) ON DELETE CASCADE
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    course_name VARCHAR(255) NOT NULL,
    course_description TEXT,
    start_date DATE,
    end_date DATE,
    teacher_id INT REFERENCES teachers(id) ON DELETE SET NULL
);

CREATE TABLE course_student (
    course_id INT REFERENCES courses(id) ON DELETE CASCADE,
    student_id INT REFERENCES students(id) ON DELETE CASCADE,
    PRIMARY KEY (course_id, student_id)
);

CREATE TABLE settings (
    id serial primary key,
    is_notifications_enabled BOOLEAN,
    theme varchar(20)

);


insert into accounts (id, created_at, updated_at) values (1, '2024-01-26 02:40:00', '2024-01-26 11:58:00');
insert into accounts (id, created_at, updated_at) values (2, '2024-01-26 14:54:00', '2024-01-26 05:32:00');
insert into accounts (id, created_at, updated_at) values (3, '2024-01-26 20:00:00', '2024-01-26 08:39:00');
insert into accounts (id, created_at, updated_at) values (4, '2024-01-26 06:15:00', '2024-01-26 17:56:00');
insert into accounts (id, created_at, updated_at) values (5, '2024-01-26 00:41:00', '2024-01-26 23:30:00');
insert into accounts (id, created_at, updated_at) values (6, '2024-01-26 09:03:00', '2024-01-26 19:23:00');
insert into accounts (id, created_at, updated_at) values (7, '2024-01-26 13:55:00', '2024-01-26 17:03:00');
insert into accounts (id, created_at, updated_at) values (8, '2024-01-26 02:02:00', '2024-01-26 20:02:00');
insert into accounts (id, created_at, updated_at) values (9, '2024-01-26 22:38:00', '2024-01-26 08:56:00');
insert into accounts (id, created_at, updated_at) values (10, '2024-01-26 17:26:00', '2024-01-26 00:50:00');


INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (1, true, 'Light');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (2, false, 'Dark');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (3, true, 'Light');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (4, true, 'Dark');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (5, false, 'Light');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (6, true, 'Dark');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (7, true, 'Light');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (8, false, 'Dark');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (9, true, 'Light');
INSERT INTO settings (id, is_notifications_enabled, theme) VALUES (10, false, 'Dark');

INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (1, '2024-01-26 08:30:00', '2024-01-26 15:45:00', 'John', 'Doe', '1995-03-12', 'Male', true, 1);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (2, '2024-01-26 10:15:00', '2024-01-26 16:20:00', 'Jane', 'Smith', '1993-07-18', 'Female', true, 2);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (3, '2024-01-26 14:45:00', '2024-01-26 18:55:00', 'Robert', 'Johnson', '1998-05-05', 'Male', true, 3);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (4, '2024-01-26 12:20:00', '2024-01-26 14:30:00', 'Emily', 'Williams', '1997-12-30', 'Female', true, 4);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (5, '2024-01-26 11:10:00', '2024-01-26 17:00:00', 'Daniel', 'Davis', '1996-09-22', 'Male', true, 5);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (6, '2024-01-26 09:00:00', '2024-01-26 13:40:00', 'Sophia', 'Martin', '1999-11-08', 'Female', true, 6);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (7, '2024-01-26 16:30:00', '2024-01-26 20:45:00', 'Michael', 'Moore', '1994-01-25', 'Male', true, 7);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (8, '2024-01-26 18:45:00', '2024-01-26 23:15:00', 'Olivia', 'Smith', '1992-06-14', 'Female', true, 8);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (9, '2024-01-26 13:00:00', '2024-01-26 19:20:00', 'Christopher', 'White', '1997-08-03', 'Male', true, 9);
INSERT INTO students (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (10, '2024-01-26 20:10:00', '2024-01-26 22:55:00', 'Emma', 'Johnson', '1991-04-19', 'Female', true, 10);

INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (1, '2024-01-26 08:30:00', '2024-01-26 15:45:00', 'David', 'Anderson', '1985-05-20', 'Male', true, 1);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (2, '2024-01-26 10:15:00', '2024-01-26 16:20:00', 'Lisa', 'Miller', '1988-10-12', 'Female', true, 2);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (3, '2024-01-26 14:45:00', '2024-01-26 18:55:00', 'Brian', 'Davis', '1983-03-28', 'Male', true, 3);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (4, '2024-01-26 12:20:00', '2024-01-26 14:30:00', 'Susan', 'Moore', '1987-11-15', 'Female', true, 4);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (5, '2024-01-26 11:10:00', '2024-01-26 17:00:00', 'Mark', 'Jones', '1986-08-02', 'Male', true, 5);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (6, '2024-01-26 09:00:00', '2024-01-26 13:40:00', 'Karen', 'Martin', '1989-06-18', 'Female', true, 6);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (7, '2024-01-26 16:30:00', '2024-01-26 20:45:00', 'Christopher', 'Clark', '1984-01-03', 'Male', true, 7);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (8, '2024-01-26 18:45:00', '2024-01-26 23:15:00', 'Julia', 'Smith', '1982-04-14', 'Female', true, 8);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (9, '2024-01-26 13:00:00', '2024-01-26 19:20:00', 'Daniel', 'White', '1987-07-27', 'Male', true, 9);
INSERT INTO teachers (id, created_at, updated_at, first_name, last_name, birth_date, GENDER, is_active, account_id) VALUES (10, '2024-01-26 20:10:00', '2024-01-26 22:55:00', 'Rachel', 'Johnson', '1980-12-09', 'Female', true, 10);

INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (1, '2024-01-26 09:00:00', '2024-01-26 12:00:00', 'Mathematics 101', 'Introduction to basic mathematics', '2024-02-01', '2024-05-01', 1);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (2, '2024-01-26 13:30:00', '2024-01-26 16:30:00', 'English Literature', 'Classic literature analysis', '2024-02-15', '2024-05-15', 2);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (3, '2024-01-26 10:00:00', '2024-01-26 12:45:00', 'Computer Science Fundamentals', 'Introduction to programming', '2024-03-01', '2024-06-01', 3);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (4, '2024-01-26 14:45:00', '2024-01-26 17:45:00', 'History of Art', 'Exploring various art movements', '2024-03-15', '2024-06-15', 4);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (5, '2024-01-26 11:30:00', '2024-01-26 14:30:00', 'Physics for Beginners', 'Basic principles of physics', '2024-04-01', '2024-07-01', 5);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (6, '2024-01-26 08:15:00', '2024-01-26 11:15:00', 'Introduction to Psychology', 'Understanding human behavior', '2024-04-15', '2024-07-15', 6);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (7, '2024-01-26 15:30:00', '2024-01-26 18:30:00', 'Chemistry Essentials', 'Foundations of chemistry', '2024-05-01', '2024-08-01', 7);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (8, '2024-01-26 17:00:00', '2024-01-26 20:00:00', 'Business Ethics', 'Ethical considerations in business', '2024-05-15', '2024-08-15', 8);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (9, '2024-01-26 12:45:00', '2024-01-26 15:45:00', 'Music Appreciation', 'Exploring different genres of music', '2024-06-01', '2024-09-01', 9);
INSERT INTO courses (id, created_at, updated_at, course_name, course_description, start_date, end_date, teacher_id) VALUES (10, '2024-01-26 19:15:00', '2024-01-26 22:15:00', 'Environmental Science', 'Understanding the environment and sustainability', '2024-06-15', '2024-09-15', 10);

INSERT INTO course_student (course_id, student_id) VALUES (1, 1);
INSERT INTO course_student (course_id, student_id) VALUES(1, 2);
INSERT INTO course_student (course_id, student_id) VALUES(1, 3); 
INSERT INTO course_student (course_id, student_id) VALUES(1, 4); 
INSERT INTO course_student (course_id, student_id) VALUES(1, 5); 
INSERT INTO course_student (course_id, student_id) VALUES(1, 6); 
INSERT INTO course_student (course_id, student_id) VALUES(1, 7); 
INSERT INTO course_student (course_id, student_id) VALUES(1, 8);
INSERT INTO course_student (course_id, student_id) VALUES(1, 9); 
INSERT INTO course_student (course_id, student_id) VALUES(1, 10);
