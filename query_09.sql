-- список курсів, які відвідує студент
SELECT 
		s.fullname as student,
		s2.name as subject_name
   FROM grades g 
		join students s on g.student_id = s.id 
		join subjects s2 on g.subject_id = s2.id 
  WHERE g.student_id = 5 -- id студенту
  GROUP BY s.fullname, s2.name;