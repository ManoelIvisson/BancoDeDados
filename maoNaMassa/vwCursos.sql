CREATE OR ALTER VIEW vwCourses As

    SELECT TOP 100
        [Course].[Id],
        [Tag],
        [Course].[Title],
        [Course].[URL],
        [Course].[Summary],
        [Course].[CreateDate],
        [Category].[Title] AS [Categoria],
        [Author].[Name]
    FROM 
        [Course]
        INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id]
        INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
    WHERE
        [Active] = 1