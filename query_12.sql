-- Оцінки студентів у певній групі з певного предмета на останньому занятті.
SELECT
		g2.name as group_name,
		s.fullname as student,
		s2.name as subject_name,
		g.grade,
		g.grade_date as last_date 
   FROM grades g 
		JOIN students s on g.student_id = s.id 
		JOIN subjects s2 on g.subject_id = s2.id
		JOIN groups g2 on s.group_id = g2.id 
  WHERE s.group_id = 1 -- id групи
	AND g.subject_id = 1  -- id предмета
	AND g.grade_date = (
        SELECT MAX(gr2.grade_date)
        FROM grades gr2
        WHERE gr2.subject_id = s2.id
    	);
