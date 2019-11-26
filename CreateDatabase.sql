create table Songs
(
	songId char(5) not null,
	duration TIME default NULL null,
	name varchar(100) not null,
	lyrics longtext default NULL null,
	constraint Songs_pk
		primary key (songId)
);

create table Label
(
	labelId char(5) not null,
	name varchar(100) null,
	constraint Label_pk
		primary key (labelId)
);

create table Genre
(
	genreId char(5) not null,
	name varchar(100) null,
	constraint Genre_pk
		primary key (genreId)
);

create table Album
(
	albumId char(5) not null,
	name varchar(100) default NULL null,
	recordingType ENUM('Studio', 'Live', 'Solo', 'Tribute', 'Cover') default 'Studio' null,
	genreId char(5) not null,
	labelId char(5) not null,
	constraint Album_pk
		primary key (albumId),
	constraint Album_Genre_genreId_fk
		foreign key (genreId) references Genre (genreId)
			on update restrict on delete set null,
	constraint Album_Label_labelId_fk
		foreign key (labelId) references Label (labelId)
			on update restrict on delete set null
);

create table SongAlbum
(
	songId char(5) not null,
	albumId char(5) not null,
	constraint SongAlbum_pk
		primary key (songId, albumId),
	constraint SongAlbum_pk
		unique (songId),
	constraint SongAlbum_Album_albumId_fk
		foreign key (albumId) references Album (albumId)
			on update restrict on delete restrict,
	constraint SongAlbum_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update restrict on delete restrict
);

create table Playlist
(
	playlistId char(5) not null,
	name varchar(100) null,
	constraint Playlist_pk
		primary key (playlistId)
);

create table SongPlaylist
(
	songId char(5) not null,
	playlistId char(5) not null,
	constraint SongPlaylist_pk
		primary key (songId, playlistId),
	constraint SongPlaylist_Playlist_playlistId_fk
		foreign key (playlistId) references Playlist (playlistId)
			on update restrict on delete restrict,
	constraint SongPlaylist_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update restrict on delete restrict
);

create table Concert
(
	concertId char(5) not null,
	location varchar(100) null,
	date date null,
	constraint Concert_pk
		primary key (concertId)
);

create table SongConcert
(
	songId char(5) not null,
	concertId char(5) not null,
	constraint SongConcert_pk
		primary key (songId, concertId),
	constraint SongConcert_Concert_concertId_fk
		foreign key (concertId) references Concert (concertId)
			on update restrict on delete restrict,
	constraint SongConcert_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update restrict on delete restrict
);

create table Band
(
	bandId char(5) not null,
	name varchar(100) null,
	size int default 1 not null,
	constraint Band_pk
		primary key (bandId)
);

create table BandConcert
(
	bandId char(5) not null,
	concertId char(5) not null,
	constraint BandConcert_pk
		primary key (bandId, concertId),
	constraint BandConcert_Band_bandId_fk
		foreign key (bandId) references Band (bandId)
			on update restrict on delete restrict,
	constraint BandConcert_Concert_concertId_fk
		foreign key (concertId) references Concert (concertId)
			on update restrict on delete restrict
);

create table SongBand
(
	songId char(5) not null,
	bandId char(5) not null,
	constraint SongBand_pk
		primary key (songId, bandId),
	constraint SongBand_Band_bandId_fk
		foreign key (bandId) references Band (bandId)
			on update restrict on delete restrict,
	constraint SongBand_Songs_songId_fk
		foreign key (songId) references Songs (songId)
			on update restrict on delete restrict
);

create table Artist
(
	artistId char(5) not null,
	name varchar(100) null,
	constraint Artist_pk
		primary key (artistId)
);

create table BandArtist
(
	bandId char(5) not null,
	artistId char(5) not null,
	constraint BandArtist_pk
		primary key (bandId, artistId),
	constraint BandArtist_Artist_artistId_fk
		foreign key (artistId) references Artist (artistId)
			on update restrict on delete restrict,
	constraint BandArtist_Band_bandId_fk
		foreign key (bandId) references Band (bandId)
			on update restrict on delete restrict
);
