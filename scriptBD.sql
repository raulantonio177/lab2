create table video(
idVideo int,
titulo varchar(100),
repro int, 
link varchar(100))

create proc sp_video_insertar
@idVideo int,
@titulo varchar(100),
@repro int,
@link varchar(100)
as
begin

insert into video values (@idVideo,@titulo,@repro,@link);

end

create proc sp_video_eliminar
@idVideo int
as 
begin 
delete from video where @idVideo=idVideo
end


create proc sp_video_editar
@idVideo int,
@titulo varchar(100),
@repro int,
@link varchar(100)
as
begin

update video set idVideo=@idVideo,titulo=@titulo,repro=@repro,link=@link where idVideo=@idVideo;

end

create proc sp_video_consultar
as
begin 
select * from video;
end
