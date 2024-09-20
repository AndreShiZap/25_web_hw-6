-- Список курсів, які певному студенту читає певний викладач.
SELECT 
		s.fullname as student,
		s2.name as subject_name,
		t.fullname as teacher_name
   FROM grades g 
		join students s on g.student_id = s.id 
		join subjects s2 on g.subject_id = s2.id
		join teachers t on s2.teacher_id = t.id 
  WHERE g.student_id = 1 -- id студента
	AND t.id = 3  -- id викладача
  GROUP BY s.fullname, s2.name, t.fullname;