-- оцінки студентів у окремій групі з певного предмета.
SELECT 
	    g.name AS group_name,
	    s.fullname as student_name,
	    gr.grade,
	    s1.name as subject_name
   FROM grades gr
		JOIN subjects s1 on gr.subject_id = s1.id
		JOIN students s ON gr.student_id = s.id
		JOIN groups g ON s.group_id = g.id
  WHERE gr.subject_id = 4 -- id предмета
	AND g.id = 1 -- id групи
  GROUP BY g.id, g.name, s.fullname, gr.grade, s1.name;