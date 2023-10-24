INSERT INTO ActivityType (ActivityTypeId, Name)
VALUES (1, 'Кино'),
       (2, 'Выставка'),
       (3, 'Театр');

INSERT INTO Activity (ActivityId, ParentId, ActivityTypeId, Name, AreaId)
VALUES (1, NULL, 1, 'Фортуна', 1),
       (2, 1, 2, 'Современное искуство', 2),
       (3, 1, 2, 'Лебединое озеро', 3),
       (4, 2, 1, 'Форсаж', 1),
       (5, 2, 3, 'Ван Гог', 3),
       (6, NULL, 3, 'Щелкунчик', 2);

INSERT INTO Program (ActivityId)
VALUES (1),
       (2),
       (3),
       (6);

INSERT INTO SubProgram (ActivityId)
VALUES (4),
       (5);

INSERT INTO Project (ActivityId)
VALUES (2),
       (3),
       (4),
       (5);

INSERT INTO Contract (ActivityId, AreaId)
VALUES (3, 1),
       (4, 2),
       (6, 3);

INSERT INTO Point (ActivityId)
VALUES (1),
       (2),
       (3),
       (4),
       (5),
       (6);
