-- середній бал на потоці (по всій таблиці оцінок).
SELECT 
	    round(AVG(grade), 2) AS overall_average_grade
   FROM grades;
