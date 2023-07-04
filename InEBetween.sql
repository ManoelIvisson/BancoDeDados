SELECT TOP 10
    [Id] AS [Matrícula],
    [Nome]
FROM
    [Curso]
WHERE
    -- [Id] In (1, 4, 2)
    [Id] BETWEEN 2 AND 4
