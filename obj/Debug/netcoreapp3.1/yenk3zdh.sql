﻿IF OBJECT_ID(N'[__EFMigrationsHistory]') IS NULL
BEGIN
    CREATE TABLE [__EFMigrationsHistory] (
        [MigrationId] nvarchar(150) NOT NULL,
        [ProductVersion] nvarchar(32) NOT NULL,
        CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY ([MigrationId])
    );
END;

GO

CREATE TABLE [Jogador] (
    [Id] uniqueidentifier NOT NULL,
    [Nome] nvarchar(max) NULL,
    [Email] nvarchar(max) NULL,
    [Senha] nvarchar(max) NULL,
    [DataNasc] datetime2 NOT NULL,
    CONSTRAINT [PK_Jogador] PRIMARY KEY ([Id])
);

GO C:\Users\Lucca\Documents\API\Jogame_API\obj\Debug\netcoreapp3.1\yenk3zdh.sql

CREATE TABLE [Jogo] (
    [Id] uniqueidentifier NOT NULL,
    [Nome] nvarchar(max) NULL,
    [Descricao] nvarchar(max) NULL,
    [DataLancamento] datetime2 NOT NULL,
    CONSTRAINT [PK_Jogo] PRIMARY KEY ([Id])
);

GO

CREATE TABLE [JogosJogador] (
    [Id] uniqueidentifier NOT NULL,
    [IdJogo] uniqueidentifier NOT NULL,
    [IdJogador] uniqueidentifier NOT NULL,
    CONSTRAINT [PK_JogosJogador] PRIMARY KEY ([Id]),
    CONSTRAINT [FK_JogosJogador_Jogador_IdJogador] FOREIGN KEY ([IdJogador]) REFERENCES [Jogador] ([Id]) ON DELETE CASCADE,
    CONSTRAINT [FK_JogosJogador_Jogo_IdJogo] FOREIGN KEY ([IdJogo]) REFERENCES [Jogo] ([Id]) ON DELETE CASCADE
);

GO

CREATE INDEX [IX_JogosJogador_IdJogador] ON [JogosJogador] ([IdJogador]);

GO

CREATE INDEX [IX_JogosJogador_IdJogo] ON [JogosJogador] ([IdJogo]);

GO

INSERT INTO [__EFMigrationsHistory] ([MigrationId], [ProductVersion])
VALUES (N'20200914200005_initial create', N'3.1.8');

GO

