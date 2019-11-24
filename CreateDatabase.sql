create table Songs
(
	songId int auto_increment,
	duration TIME default NULL null,
	name varchar(100) not null,
	lyrics longtext default NULL null,
	constraint Songs_pk
		primary key (songId)
);

create table Label
(
	labelId int auto_increment,
	name varchar(100) null,
	constraint Label_pk
		primary key (labelId)
);

create table Genre
(
	genreId int auto_increment,
	name varchar(100) null,
	constraint Genre_pk
		primary key (genreId)
);

create table Album
(
	albumId int not null,
	name varchar(100) default NULL null,
	recordingType ENUM('Studio', 'Live', 'Solo', 'Tribute', 'Cover') default 'Studio' null,
	genreId int null,
	labelId int null,
	constraint Album_pk
		primary key (albumId),
	constraint Album_Genre_genreId_fk
		foreign key (genreId) references Genre (genreId)
			on update cascade on delete set null,
	constraint Album_Label_labelId_fk
		foreign key (labelId) references Label (labelId)
			on update cascade on delete set null
);

create table SongAlbum
(
	songId int null,
	albumId int null,
	constraint SongAlbum_pk
		primary key (songId, albumId),
	constraint SongAlbum_pk
		unique (songId),
	constraint SongAlbum_Album_albumId_fk
		foreign key (albumId) references Album (albumId)
			on update cascade on delete cascade,
	constraint SongAlbum_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update cascade on delete cascade
);

create table Playlist
(
	playlistId int auto_increment,
	name varchar(100) null,
	constraint Playlist_pk
		primary key (playlistId)
);

create table SongPlaylist
(
	songId int null,
	playlistId int null,
	constraint SongPlaylist_pk
		primary key (songId, playlistId),
	constraint SongPlaylist_Playlist_playlistId_fk
		foreign key (playlistId) references Playlist (playlistId)
			on update cascade on delete cascade,
	constraint SongPlaylist_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update cascade on delete cascade
);

create table Concert
(
	concertId int auto_increment,
	location varchar(100) null,
	date date null,
	constraint Concert_pk
		primary key (concertId)
);

create table SongConcert
(
	songId int null,
	concertId int null,
	constraint SongConcert_pk
		primary key (songId, concertId),
	constraint SongConcert_Concert_concertId_fk
		foreign key (concertId) references Concert (concertId)
			on update cascade on delete cascade,
	constraint SongConcert_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update cascade on delete cascade
);

create table Band
(
	bandId int auto_increment,
	name varchar(100) null,
	size int default 1 not null,
	constraint Band_pk
		primary key (bandId)
);

create table BandConcert
(
	bandId int null,
	concertId int null,
	constraint BandConcert_pk
		primary key (bandId, concertId),
	constraint BandConcert_Band_bandId_fk
		foreign key (bandId) references Band (bandId)
			on update cascade on delete cascade,
	constraint BandConcert_Concert_concertId_fk
		foreign key (concertId) references Concert (concertId)
			on update cascade on delete cascade
);

create table SongBand
(
	songId int null,
	bandId int null,
	constraint SongBand_pk
		primary key (songId, bandId),
	constraint SongBand_Band_bandId_fk
		foreign key (bandId) references Band (bandId)
			on update cascade on delete cascade,
	constraint SongBand_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update cascade on delete cascade
);

create table Artist
(
	artistId int auto_increment,
	name varchar(100) null,
	constraint Artist_pk
		primary key (artistId)
);

create table BandArtist
(
	bandId int null,
	artistId int null,
	constraint BandArtist_pk
		primary key (bandId, artistId),
	constraint BandArtist_Artist_artistId_fk
		foreign key (artistId) references Artist (artistId)
			on update cascade on delete set null,
	constraint BandArtist_Band_bandId_fk
		foreign key (bandId) references Band (bandId)
			on update cascade on delete cascade
);
