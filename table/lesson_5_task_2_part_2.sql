CREATE TABLE Направления (
    [Код направления] INT PRIMARY KEY IDENTITY(1,1),
    Наименование VARCHAR(100),
    [Минимальный балл] INT
)

INSERT INTO Направления (Наименование, [Минимальный балл])
VALUES 
    ((SELECT Направление FROM Студенты WHERE Идентификатор = 1), 160),
    ((SELECT Направление FROM Студенты WHERE Идентификатор = 2), 180),
    ((SELECT Направление FROM Студенты WHERE Идентификатор = 3), 200);