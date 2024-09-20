-- список студентів у певній групі.
SELECT 
		g.name as group_name,
		s.fullname as student
   FROM students s 
		JOIN "groups" g on s.group_id = g.id 
  WHERE s.group_id = 1; -- id групи