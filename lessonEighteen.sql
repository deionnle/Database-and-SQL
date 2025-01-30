1.
SELECT d.dwarf_id, d.name AS dwarf_name, d.age, d.profession, s.name AS squad_name, s.mission
FROM Dwarves d
JOIN Squads s ON d.squad_id = s.squad_id;
WHERE Dwarves.squad_id IS NOT NULL;

2.
SELECT * FROM Dwarves
WHERE profession = 'miner' AND squad_id IS NULL;

3.
SELECT task_id, description, priority, assigned_to, status
FROM Tasks
WHERE priority = (SELECT MAX(priority) FROM Tasks)
AND status = 'pending';

 4.
 SELECT d.dwarf_id, d.name, COUNT(i.item_id) AS item_count
 FROM Dwarves d
 JOIN Items i ON d.dwarf_id = i.owner_id
 GROUP BY d.dwarf_id, d.name;

 5.
 SELECT s.squad_id, s.name AS squad_name, COUNT(d.dwarf_id) AS dwarf_count
 FROM Squads s
 LEFT JOIN Dwarves d ON s.squad_id = d.squad_id
 GROUP BY s.squad_id, s.name;

 6.
 SELECT d.profession, COUNT(t.task_id) AS task_count
 FROM Dwarves d
 JOIN Tasks t ON d.dwarf_id = t.assigned_to
 WHERE t.status IN ('pending', 'in_progress')
 GROUP BY d.profession
 ORDER BY task_count DESC;

 7.
 SELECT i.type, AVG(d.age) AS average_age
 FROM Items i
 JOIN Dwarves d ON i.owner_id = d.dwarf_id
 GROUP BY i.type;

8.
 SELECT * FROM Dwarves d
 LEFT JOIN Items i ON d.dwarf_id = i.owner_id
 WHERE i.owner_id IS NULL
   AND d.age > (SELECT AVG(age) FROM Dwarves);