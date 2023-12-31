USE [master]
GO
/****** Object:  Database [dbs_roles]    Script Date: 12/10/2023 14:22:27 ******/
CREATE DATABASE [dbs_roles]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dbs_roles', FILENAME = N'E:\TODO\Programas\SQL SERVER 2022\MSSQL16.SQLEXPRESS\MSSQL\DATA\dbs_roles.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'dbs_roles_log', FILENAME = N'E:\TODO\Programas\SQL SERVER 2022\MSSQL16.SQLEXPRESS\MSSQL\DATA\dbs_roles_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [dbs_roles] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dbs_roles].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dbs_roles] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dbs_roles] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dbs_roles] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dbs_roles] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dbs_roles] SET ARITHABORT OFF 
GO
ALTER DATABASE [dbs_roles] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [dbs_roles] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dbs_roles] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dbs_roles] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dbs_roles] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dbs_roles] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dbs_roles] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dbs_roles] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dbs_roles] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dbs_roles] SET  ENABLE_BROKER 
GO
ALTER DATABASE [dbs_roles] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dbs_roles] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dbs_roles] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dbs_roles] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dbs_roles] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dbs_roles] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dbs_roles] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dbs_roles] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [dbs_roles] SET  MULTI_USER 
GO
ALTER DATABASE [dbs_roles] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dbs_roles] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dbs_roles] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dbs_roles] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [dbs_roles] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [dbs_roles] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [dbs_roles] SET QUERY_STORE = ON
GO
ALTER DATABASE [dbs_roles] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [dbs_roles]
GO
/****** Object:  Table [dbo].[tbl_detalle_usuario_roles]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_detalle_usuario_roles](
	[PKItem] [bigint] IDENTITY(1,1) NOT NULL,
	[FKUsuarios_tbl_usuarios] [varchar](200) NOT NULL,
	[FKcodigo_tbl_roles] [int] NOT NULL,
	[FKCodigo_tbl_estado] [char](1) NOT NULL,
	[Fecha_aprobacion] [date] NULL,
	[Fecha_caduca] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PKItem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_estado]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_estado](
	[FKCodigo] [char](1) NOT NULL,
	[Nombre] [varchar](60) NOT NULL,
	[Nomenclatura] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[FKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_personas]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_personas](
	[PKId] [varchar](10) NOT NULL,
	[p_nombre] [varchar](80) NOT NULL,
	[s_nombre] [varchar](50) NULL,
	[p_apellido] [varchar](50) NOT NULL,
	[s_apellido] [varchar](50) NULL,
	[contacto] [varchar](10) NOT NULL,
	[correo] [varchar](90) NOT NULL,
	[FK_Codigo_tbl_sexo] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PKId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_roles]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_roles](
	[PKCodigo] [int] NOT NULL,
	[Nombre] [varchar](80) NOT NULL,
	[Nomenclatura] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_sexo]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_sexo](
	[PKCodigo] [char](1) NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Momenclatura] [varchar](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[PKCodigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbl_usuarios]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbl_usuarios](
	[PKUsuario] [varchar](200) NOT NULL,
	[contraseña] [varchar](10) NOT NULL,
	[FKId_tbl_personas] [varchar](10) NOT NULL,
	[Fecha] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[PKUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbl_detalle_usuario_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalle_usuario_roles_tbl_estado] FOREIGN KEY([FKCodigo_tbl_estado])
REFERENCES [dbo].[tbl_estado] ([FKCodigo])
GO
ALTER TABLE [dbo].[tbl_detalle_usuario_roles] CHECK CONSTRAINT [FK_tbl_detalle_usuario_roles_tbl_estado]
GO
ALTER TABLE [dbo].[tbl_detalle_usuario_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalle_usuario_roles_tbl_roles] FOREIGN KEY([FKcodigo_tbl_roles])
REFERENCES [dbo].[tbl_roles] ([PKCodigo])
GO
ALTER TABLE [dbo].[tbl_detalle_usuario_roles] CHECK CONSTRAINT [FK_tbl_detalle_usuario_roles_tbl_roles]
GO
ALTER TABLE [dbo].[tbl_detalle_usuario_roles]  WITH CHECK ADD  CONSTRAINT [FK_tbl_detalle_usuario_roles_tbl_usuarios] FOREIGN KEY([FKUsuarios_tbl_usuarios])
REFERENCES [dbo].[tbl_usuarios] ([PKUsuario])
GO
ALTER TABLE [dbo].[tbl_detalle_usuario_roles] CHECK CONSTRAINT [FK_tbl_detalle_usuario_roles_tbl_usuarios]
GO
ALTER TABLE [dbo].[tbl_personas]  WITH CHECK ADD  CONSTRAINT [FK_tbl_personas_tbl_sexo] FOREIGN KEY([FK_Codigo_tbl_sexo])
REFERENCES [dbo].[tbl_sexo] ([PKCodigo])
GO
ALTER TABLE [dbo].[tbl_personas] CHECK CONSTRAINT [FK_tbl_personas_tbl_sexo]
GO
ALTER TABLE [dbo].[tbl_usuarios]  WITH CHECK ADD  CONSTRAINT [FK_tbl_usuarios_tbl_personas] FOREIGN KEY([FKId_tbl_personas])
REFERENCES [dbo].[tbl_personas] ([PKId])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[tbl_usuarios] CHECK CONSTRAINT [FK_tbl_usuarios_tbl_personas]
GO
/****** Object:  StoredProcedure [dbo].[SP_asignar_rol]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
create procedure [dbo].[SP_asignar_rol]
@usuario varchar (200),@rol int,@fecha_caduca date 
as begin
  declare  @buscar int
  select @buscar = (select count(*) from tbl_usuarios where PKUsuario = @usuario)
  if @buscar = 0
  begin
    print 'Usuario no registrado'
  end
if @buscar = 1
    begin
	   insert into tbl_detalle_usuario_roles
	   (FKUsuarios_tbl_usuarios,FKcodigo_tbl_roles,FKCodigo_tbl_estado,Fecha_aprobacion,Fecha_caduca)
	   values
	   (@usuario,@rol,2,GETDATE(),@fecha_caduca)
	   print 'rol asignado con exito'
	end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Registrar]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,Oscar>
-- Create date: <Create Date,3/10/2023>
-- Description:	<Description,SP_Registrar>
-- =============================================
CREATE PROCEDURE [dbo].[SP_Registrar]
	@id varchar(10),	
	@p_nombre varchar(80),
	@s_nombre varchar(50),
	@p_apellido varchar(50),
	@s_apellido varchar (50),
	@contacto varchar(10), 
	@correo varchar(90),
	@sexo int
as begin 
	declare @consulta int
	select @consulta = (select count(*) from tbl_personas where PKId = @id)
	if @consulta = 1
		begin
		print 'Esta persona ya se encuentra registrada'
		end
	if @consulta = 0
		begin
			insert into tbl_personas
			(PKId,p_nombre, s_nombre, p_apellido,s_apellido,contacto, correo, FK_Codigo_tbl_sexo)
			values
			(@id,@p_nombre,@s_nombre,@p_apellido, @s_apellido,@contacto,@correo, @sexo)
			print 'Persona registrada con éxito'
		end
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Retirar_Rol]    Script Date: 12/10/2023 14:22:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Jose>
-- Create date: <Create Date,,5/10/2023>
-- Description:	<Description,, Retirar Rol>
-- =============================================
CREATE PROCEDURE  [dbo].[SP_Retirar_Rol]

@usuario varchar(200),
@rol int
as begin
	delete from tbl_detalle_usuario_roles where 
	tbl_detalle_usuario_roles.FKUsuarios_tbl_usuarios = @usuario and 
	tbl_detalle_usuario_roles.FKCodigo_tbl_roles = @rol
	print 'Rol retirado con éxito'
end
GO
USE [master]
GO
ALTER DATABASE [dbs_roles] SET  READ_WRITE 
GO
