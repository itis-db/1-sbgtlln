---
WITH RECURSIVE Hierarchy AS (
  SELECT P.ActivityId, A.ActivityTypeId, A.Name, 1 AS Level
  FROM Program P
  INNER JOIN Activity A ON P.ActivityId = A.ActivityId
  
  UNION ALL
  
  SELECT A.ActivityId, A.ActivityTypeId, A.Name, EH.Level + 1
  FROM Activity A
  INNER JOIN Hierarchy EH ON A.ParentId = EH.ActivityId
)
SELECT *
FROM Hierarchy
ORDER BY Level, ActivityId;
