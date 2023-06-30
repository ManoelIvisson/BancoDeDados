CREATE OR ALTER VIEW vwContagemCursosPorCategoria AS
    SELECT TOP 100
        [Categoria].[Id],
        [Categoria].[Nome],
        COUNT([Curso].[CategoriaId]) AS [Cursos]
    FROM
        [Categoria]
        INNER JOIN [Curso] ON [Categoria].[Id] = [Curso].[CategoriaId]
    GROUP BY
        [Categoria].[Id],
        [Categoria].[Nome],
        [Curso].[CategoriaId]
    HAVING
        COUNT([Curso].[CategoriaId]) >= 1
