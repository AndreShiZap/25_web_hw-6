-- середній бал, який ставить певний викладач зі своїх предметів.
-- по всім предметам
SELECT 
	    t.fullname  as teacher_name,
		round(AVG(gr.grade), 2) AS average_grade
   FROM grades gr
		JOIN subjects sub ON gr.subject_id = sub.id
		JOIN teachers t ON sub.teacher_id = t.id
  WHERE sub.teacher_id = 1  -- id викладачa
  GROUP by t.fullname;

-- за кожним предметом окремо
SELECT
		t.fullname  as teacher_name,
	    sub.name AS subject_name,
	    round(AVG(gr.grade), 2) AS average_grade
   FROM grades gr
		JOIN subjects sub ON gr.subject_id = sub.id
		JOIN teachers t ON sub.teacher_id = t.id
  WHERE sub.teacher_id = 1  -- id викладачa
  GROUP BY t.fullname, sub.id, sub.name
  ORDER BY sub.name;