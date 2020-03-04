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