SELECT TOP 10 [Id] FROM [Course]
SELECT * FROM [Student]
SELECT * FROM [StudentCourse]

INSERT INTO
    [Student] ([Id], [Name], [Email], [Document], [Phone], [Birthdate], [CreateDate])
VALUES
    (NEWID(), 'Zeca Pagodinho', 'zeca.pagodinho@gmail.com', '12345678901', '123456', '2003-06-10 12:54:09', GETDATE())

INSERT INTO
    [StudentCourse] ([CourseId], [StudentId], [Progress], [Favorite], [StartDate], [LastUpdateDate])
VALUES
    ('5c34a0a9-e717-9a7d-1241-14ac00000000', 'd142e28a-b481-43b6-9902-c0128f632c78', 90, 1, '2023-06-08', GETDATE())