CREATE INDEX idx_courses_teacher_id ON courses(teacher_id);

SELECT c.id AS course_id, c.course_name, COUNT(cs.student_id) AS student_count FROM courses c
LEFT JOIN course_student cs ON c.id = cs.course_id GROUP BY c.id, c.course_name;

SELECT t.id AS teacher_id, t.first_name AS teacher_name, COUNT(c.id) AS course_count FROM teachers t
LEFT JOIN courses c ON t.id = c.teacher_id GROUP BY t.id, teacher_name;
