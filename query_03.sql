-- середній бал у групах з певного предмета.
SELECT 
	    g.name AS group_name,
	    round(AVG(gr.grade), 2)AS average_grade,
	    s1.name as subject_name
   FROM grades gr
		JOIN subjects s1 on gr.subject_id = s1.id
		JOIN students s ON gr.student_id = s.id
		JOIN groups g ON s.group_id = g.id
  WHERE gr.subject_id = 4  -- id предмета
  GROUP BY g.id, g.name, s1.name
  ORDER BY average_grade DESC;