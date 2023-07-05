CREATE OR ALTER PROCEDURE spProgressoEstudante (
    @StudentId UNIQUEIDENTIFIER   
)
AS

    SELECT 
        [Student].[Name],
        [Course].[Title],
        [StudentCourse].[Progress],
        [StudentCourse].[LastUpdateDate]
    FROM
        [StudentCourse]
        INNER JOIN [Course] ON [StudentCourse].[CourseId] = [Course].[Id]
        INNER JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
    WHERE
        [Student].[Id] = @StudentId
        AND [StudentCourse].[Progress] < 100
        AND [StudentCourse].[Progress] > 0
    ORDER BY
        [StudentCourse].[LastUpdateDate]

-- SELECT 
--     [Course].[Title],
--     COUNT([Student].[Id]) AS [Quantidade alunos]
-- FROM
--     [Course]
--     LEFT JOIN [StudentCourse] ON [Course].[Id] = [StudentCourse].[CourseId]
--     LEFT JOIN [Student] ON [StudentCourse].[StudentId] = [Student].[Id]
-- GROUP BY
--     [Course].[Title]