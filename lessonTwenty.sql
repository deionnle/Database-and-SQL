1.
SELECT squad_id, s.name  AS Squad_name
FROM Squads s
WHERE leader_id IS NULL;

2.
SELECT d.dwarf_id, d.name AS Dwarf_name, d.age, d.profession
FROM Dwarves d
WHERE d.age > 150 AND d.profession = 'Warrior';

3.
SELECT DISTINCT d.dwarf_id, d.name AS Dwarf_name
FROM Dwarves d
JOIN Items i ON d.dwarf_id = i.owner_id
WHERE i.type = 'weapon';

4.
SELECT d.dwarf_id, d.name AS Dwarf_name, t.status, COUNT(t.task_id) AS Tasks_count
FROM Dwarves d
LEFT JOIN Tasks t ON d.dwarf_id = t.assigned_to
GROUP BY d.dwarf_id, d.name, t.status;

5.
SELECT t.task_id, t.description, t.status
FROM Tasks t
JOIN Dwarves d ON t.assigned_to = d.dwarf_id
JOIN Squads s ON d.squad_id = s.squad_id
WHERE s.name = 'Guardians';

6.
SELECT d1.name AS dwarf_name, d2.name AS relative_name, r.relationship
FROM Relationships r
JOIN Dwarves d1 ON r.dwarf_id = d1.dwarf_id
JOIN Dwarves d2 ON r.related_to = d2.dwarf_id;
