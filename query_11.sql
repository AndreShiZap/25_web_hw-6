-- Середній бал, який певний викладач ставить певному студентові.
SELECT 
		s.fullname as student,
		t.fullname as teacher_name,
		round(AVG(g.grade), 2) AS average_grade
   FROM grades g 
		JOIN students s on g.student_id = s.id 
		JOIN subjects s2 on g.subject_id = s2.id
		JOIN teachers t on s2.teacher_id = t.id 
  WHERE g.student_id = 1 -- id студента
	AND t.id = 1  -- id викладача
  GROUP BY s.fullname, t.fullname;