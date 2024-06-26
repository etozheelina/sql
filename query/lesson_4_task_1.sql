SELECT Имя, Фамилия, Направление, Балл, 
    CASE 
        WHEN Балл >= Направления.[Минимальный балл] THEN 'Да'
        WHEN Балл < Направления.[Минимальный балл] THEN 'Нет'
        ELSE NULL
    END AS Зачислен
FROM Студенты
LEFT JOIN Направления ON Студенты.Направление = Направления.Наименование;