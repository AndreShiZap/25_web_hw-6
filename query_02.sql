-- студент із найвищим середнім балом з певного предмета.
SELECT 
	    s.id,
	    s.fullname,
	    round(AVG(g.grade), 2) AS average_grade,
	    s1.name as subject_name
   FROM grades g
		JOIN subjects s1 on g.subject_id = s1.id
		JOIN students s ON g.student_id = s.id
  WHERE g.subject_id = 3  -- id предмета
  GROUP BY s.id, s1.name
  ORDER BY average_grade DESC
  LIMIT 1;