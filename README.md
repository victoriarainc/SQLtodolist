Created database and table in DataGrip successfully. Filtered by using these commands:

SELECT title
FROM todos
WHERE completed_by IS NULL;

SELECT title
FROM todos
WHERE priority > 1;

UPDATE todos
SET completed_by = 'Victoria'
WHERE id = 5;

DELETE FROM todos
WHERE completed_by IS NOT null;
