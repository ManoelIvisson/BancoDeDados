CREATE TABLE [Curso] (
    [Id] UNIQUEIDENTIFIER NOT NULL,
    [Tag] NVARCHAR(20) NOT NULL,
    [Titulo] NVARCHAR(160) NOT NULL,
    [Resumo] NVARCHAR(2000) NOT NULL,
    [Url] NVARCHAR(1024) NOT NULL,
    [Nivel] TINYINT NOT NULL,
    [DuracaoEmMimnutos] INT NOT NULL,
    [DataCriacao] DATETIME NOT NULL,
    [UltimaDataDeAtualizacao] DATETIME NOT NULL,
    [Ativo] BIT NOT NULL,
    [Gratis] BIT NOT NULL,
    [Destaque] BIT NOT NULL,
    [AutorId] UNIQUEIDENTIFIER NOT NULL,
    [CategoriaId] UNIQUEIDENTIFIER NOT NULL,

    CONSTRAINT [PK_Curso] PRIMARY KEY([Id]),
    CONSTRAINT [FK_Curso_Autor_AutorId] FOREIGN KEY([AutorId]) REFERENCES [Autor]([Id]) ON DELETE NO ACTION,
    CONSTRAINT [FK_Curso_Categoria_CategoriaId] FOREIGN KEY([CategoriaId]) REFERENCES [Categoria]([Id]) ON DELETE NO ACTION,
);

CREATE TABLE [ItemCarreira] (
    [CarreiraId] UNIQUEIDENTIFIER NOT NULL,
    [CursoId] UNIQUEIDENTIFIER NOT NULL,
    [Titulo] NVARCHAR(160) NOT NULL,
    [Descricao] TEXT NOT NULL,
    [Ordem] TINYINT NOT NULL,

    CONSTRAINT [PK_ItemCarreira] PRIMARY KEY([CarreiraId], [CursoId]),
    CONSTRAINT [FK_ItemCarreira_Carreira_CarrairaId] FOREIGN KEY([CarreiraId]) REFERENCES [Carreira] ([Id]),
    CONSTRAINT [FK_ItemCarreira_Curso_CursoId] FOREIGN KEY([CursoId]) REFERENCES [Curso] ([Id])
);

CREATE TABLE [CursoEstudante] (
    [CursoId] UNIQUEIDENTIFIER NOT NULL,
    [EstudanteId] UNIQUEIDENTIFIER NOT NULL,
    [Titulo] NVARCHAR(160) NOT NULL,
    [Descricao] TEXT NOT NULL,
    [Ordem] TINYINT NOT NULL,

    CONSTRAINT [PK_ItemCarreira] PRIMARY KEY([CarreiraId], [CursoId]),
    CONSTRAINT [FK_ItemCarreira_Carreira_CarrairaId] FOREIGN KEY([CarreiraId]) REFERENCES [Carreira] ([Id]),
    CONSTRAINT [FK_ItemCarreira_Curso_CursoId] FOREIGN KEY([CursoId]) REFERENCES [Curso] ([Id])
);