/*
 Band: Jaymes Young
 Artist: Jaymes Young
 Genre: Alternative Rock, Indie Pop
 Label: Atlantic Records
 Album: Habits Of My Heart EP
 Song: Moondust, I'll Be Good, What Should I Do, Come Back For Me, Habits Of My Heart
 Concert: Jaymes Young, Phil Good
 Playlist: Favorites
 */
insert into Band (bandId, name, size) VALUES ('B0001', 'Jaymes Young', 1);
insert into Artist (artistId, name) VALUES ('R0001', 'Jaymes Young');
insert into Genre (genreId, name) VALUES ('G0001', 'Alternative Rock');
insert into Genre (genreId, name) VALUES ('G0002', 'Indie Pop');
insert into Label (labelId, name) VALUES ('L0001', 'Atlantic Records');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0001', 'Habits Of My Heart', 'Studio', 'G0001', 'L0001')
insert into Songs (songId, duration, name, lyrics) VALUES ('S0001', '00:03:37', 'Moondust-Stripped', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0002', '00:03:17', 'I\'ll Be Good' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0003', '00:03:40', 'What Should I Do' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0004', '00:02:29', 'Come Back For Me' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0005', '00:03:31', 'Habits Of My Heart' , null);
insert into BandArtist (bandId, artistId) VALUES ('B0001', 'R0001');
insert into BandConcert (bandId, concertId) VALUES ('B0001', 'C0001');
insert into Concert (concertId, location, date) VALUES ('C0001', 'Seattle, Wa', '2019-11-10');
insert into Playlist (playlistId, name) VALUES ('P0001', 'Favorites');
insert into SongAlbum (songId, albumId) VALUES ('S0001', 'A0001');
insert into SongAlbum (songId, albumId) VALUES ('S0002', 'A0001');
insert into SongAlbum (songId, albumId) VALUES ('S0003', 'A0001');
insert into SongAlbum (songId, albumId) VALUES ('S0004', 'A0001');
insert into SongAlbum (songId, albumId) VALUES ('S0005', 'A0001');
insert into SongBand (songId, bandId) VALUES ('S0001', 'B0001');
insert into SongBand (songId, bandId) VALUES ('S0002', 'B0001');
insert into SongBand (songId, bandId) VALUES ('S0003', 'B0001');
insert into SongBand (songId, bandId) VALUES ('S0004', 'B0001');
insert into SongBand (songId, bandId) VALUES ('S0005', 'B0001');
insert into SongConcert (songId, concertId) VALUE ('S0001', 'C0001');
insert into SongConcert (songId, concertId) VALUE ('S0002', 'C0001');
insert into SongConcert (songId, concertId) VALUE ('S0005', 'C0001');
insert into SongPlaylist (songId, playlistId) VALUE ('S0002', 'P0001');
