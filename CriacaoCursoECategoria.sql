-- DROP TABLE [Categoria]

CREATE TABLE [Categoria] (
    [Id] INT NOT NULL IDENTITY(1, 1),
    [Nome] NVARCHAR(100),

    CONSTRAINT [PK_Categoria] PRIMARY KEY([Id])
);
GO

CREATE TABLE [Curso] (
    [Id] INT NOT NULL IDENTITY(1, 1),
    [Nome] NVARCHAR(100) NOT NULL,
    [CategoriaId] INT NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [categoria]([Id])
);
GO

