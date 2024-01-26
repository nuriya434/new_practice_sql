SELECT c.id AS course_id, c.course_name, s.id AS student_id, 
s.first_name, s.last_name FROM courses c 
JOIN course_student cs ON c.id = cs.course_id 
JOIN students s ON cs.student_id = s.id WHERE c.id = 1;

SELECT t.id AS teacher_id, t.first_name AS teacher_name, 
c.id AS course_id, c.course_name FROM teachers t 
LEFT JOIN courses c ON t.id = c.teacher_id WHERE t.id = 1;
