-- курси, які читає певний викладач.
SELECT 
		t.fullname as teacher_name,
		s.name as subject_name
   FROM subjects s 
		JOIN teachers t on s.teacher_id = t.id 
  WHERE s.teacher_id = 3; -- id викладачa