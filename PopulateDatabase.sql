/*
 Band: Jaymes Young
 Artist: Jaymes Young
 Genre: Alternative Rock, Indie Pop
 Label: Atlantic Records
 Album: Habits Of My Heart EP
 Songs: Moondust, I'll Be Good, What Should I Do, Come Back For Me, Habits Of My Heart
 Concert: Jaymes Young, Phil Good
 Playlist: Favorites
 */
insert into Band (bandId, name, size) VALUES ('B0001', 'Jaymes Young', 1);
insert into Artist (artistId, name) VALUES ('R0001', 'Jaymes Young');
insert into Genre (genreId, name) VALUES ('G0001', 'Alternative Rock');
insert into Genre (genreId, name) VALUES ('G0002', 'Indie Pop');
insert into Label (labelId, name) VALUES ('L0001', 'Atlantic Records');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0001', 'Habits Of My Heart', 'Studio', 'G0001', 'L0001');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0001', '00:03:37', 'Moondust-Stripped', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0002', '00:03:17', 'I''ll Be Good' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0003', '00:03:40', 'What Should I Do' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0004', '00:02:29', 'Come Back For Me' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0005', '00:03:31', 'Habits Of My Heart' , null);
insert into BandArtist (bandId, artistId) VALUES ('B0001', 'R0001');
insert into BandConcert (bandId, concertId) VALUES ('B0001', 'C0001');
insert into Concert (concertId, location, date) VALUES ('C0001', 'Seattle, Wa', '2019-11-10');
insert into Playlist (playlistId, name) VALUES ('P0001', 'Kelby''s Songs');
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

/*
 Band: Phil Good
 Artist: Phil Good
 Genre: Electronic
 Label: Heard Well
 Album: Do You Ever?
 Song: Do You Ever?
 Concert: Jaymes Young, Phil Good
 Playlist: Favorites
 */
 insert into Band (bandId, name, size) VALUES ('B0002', 'Phil Good', 1);
 insert into Artist (artistId, name) VALUES ('R0002', 'Phil Good');
 insert into BandArtist (bandId, artistId) VALUES ('B0002', 'R0002');
 insert into Genre (genreId, name) VALUES ('G0003', 'Electronic');
 insert into Label (labelId, name) VALUES ('L0002', 'Heard Well');
 insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0002', 'Do You Ever?', 'Studio', 'G0003', 'L0002');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0006', '00:02:30', 'Do You Ever?', null);
 insert into BandConcert (bandId, concertId) VALUES ('B0002', 'C0001');
 insert into SongPlaylist (songId, playlistId) VALUE ('S0006', 'P0001');
 insert into SongAlbum (songId, albumId) VALUES ('S0006', 'A0002');
 insert into SongBand (songId, bandId) VALUES ('S0006', 'B0002');
 insert into SongConcert (songId, concertId) VALUE ('S0006', 'C0001');

/*
 Band: Phil Good
 Genre: Electronic
 Label: Heard Well
 Album: Growing Up
 Songs: Be Somebody, Growing Up, I'll Fix It, I Miss You, Sleeping In, Better
 Concert: Jaymes Young, Phil Good
 */
  insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0003', 'Growing Up', 'Studio', 'G0003', 'L0002');
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0007', '00:03:07', 'Be Somebody', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0008', '00:02:45', 'Growing Up', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0009', '00:03:07', 'I''ll Fix It', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0010', '00:02:37', 'I Miss You', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0011', '00:02:38', 'Sleeping In', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0012', '00:02:17', 'Better (Stripped)', null);
  insert into SongAlbum (songId, albumId) VALUES ('S0007', 'A0003');
  insert into SongAlbum (songId, albumId) VALUES ('S0008', 'A0003');
  insert into SongAlbum (songId, albumId) VALUES ('S0009', 'A0003');
  insert into SongAlbum (songId, albumId) VALUES ('S0010', 'A0003');
  insert into SongAlbum (songId, albumId) VALUES ('S0011', 'A0003');
  insert into SongAlbum (songId, albumId) VALUES ('S0012', 'A0003');
  insert into SongBand (songId, bandId) VALUES ('S0007', 'B0002');
  insert into SongBand (songId, bandId) VALUES ('S0008', 'B0002');
  insert into SongBand (songId, bandId) VALUES ('S0009', 'B0002');
  insert into SongBand (songId, bandId) VALUES ('S0010', 'B0002');
  insert into SongBand (songId, bandId) VALUES ('S0011', 'B0002');
  insert into SongBand (songId, bandId) VALUES ('S0012', 'B0002');
  insert into SongConcert (songId, concertId) VALUE ('S0008', 'C0001');
  insert into SongConcert (songId, concertId) VALUE ('S0009', 'C0001');
  insert into SongConcert (songId, concertId) VALUE ('S0010', 'C0001');
  insert into SongConcert (songId, concertId) VALUE ('S0007', 'C0001');

/*
 Band: Sleeping At Last
 Artist: Ryan O'Neal, Chad O'Neal, Dan Perdue
 Genre: Indie Rock
 Label: Asteroid B-612
 Album: Atlas: Enneagram
 Songs: One, Two, Three, Four, Five, Six, Seven, Eight, Nine
 Playlist: Favorites
 */
 insert into Band (bandId, name, size) VALUES ('B0003', 'Sleeping At Last', 3);
 insert into Artist (artistId, name) VALUES ('R0003', 'Ryan O''Neal');
 insert into Artist (artistId, name) VALUES ('R0004', 'Chad O''Neal');
 insert into Artist (artistId, name) VALUES ('R0005', 'Dan Perdue');
 insert into BandArtist (bandId, artistId) VALUES ('B0003', 'R0003');
 insert into BandArtist (bandId, artistId) VALUES ('B0003', 'R0004');
 insert into BandArtist (bandId, artistId) VALUES ('B0003', 'R0005');
 insert into Genre (genreId, name) VALUES ('G0004', 'Indie Rock');
 insert into Label (labelId, name) VALUES ('L0003', 'Asteroid B-612');
 insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0004', 'Atlas: Enneagram', 'Studio', 'G0004', 'L0003');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0013', '00:03:23', 'One', 'Hold on for a minute
''Cause I believe that we can fix this over time
That every imperfection is a lie
Or at least an interruption
Now hold on, let me finish
No, I''m not saying perfect exists in this life
But we''ll only know for certain if we try
I, I want to sing a song worth singing
I''ll write an anthem worth repeating
I, I want to feel the transformation
A melody of reformation
But the list goes on forever
Of all the ways I could be better, in my mind
As if I could earn God''s favor given time
Or at least congratulations
Now, I have learned my lesson
The price of this so called perfection is everything
I''ve spent my whole life searching desperately
To find out that grace requires nothing of me
I, I want to sing a song worth singing
I''ll write an anthem worth repeating
I, I want to feel the transformation
A melody of reformation
I''ll hold it all more loosely
And yet somehow much more dearly
''Cause I''ve spent my whole life searching desperately
To find out that grace requires nothing
Grace requires nothing of me');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0014', '00:04:19', 'Two', 'Sweetheart, you look a little tired
When did you last eat?
Come in and make yourself right at home
Stay as long as you need
Tell me, is something wrong?
If something''s wrong, you can count on me
You know I''ll take my heart clean apart if it helps yours beat
It''s okay if you can''t find the words
Let me take your coat
And this weight off of your shoulders
Like a force to be reckoned with
A mighty ocean or a gentle kiss
I will love you with every single thing I have
Like a tidal wave, I''ll make a mess
Or calm waters, if that serves you best
I will love you without any strings attached
It''s okay if you can''t catch your breath
You can take the oxygen straight out of my own chest
I know exactly how the rule goes
Put my mask on first
No, I don''t want to talk about myself
Tell me where it hurts
I just want to build you up, build you up
''Til you''re good as new
And maybe one day I will get around to fixing myself too
I don''t even know where to start
Already tired of trying to recall when it all fell apart
I just want to love you, to love you, to love you well
I just want to learn how, somehow, to be loved myself
Like a force to be reckoned with
A mighty ocean or a gentle kiss
I will love you without any strings attached
And what a privilege it is to love
A great honor to hold you up
Like a force to be reckoned with
A mighty ocean or a gentle kiss
I will love you with every single thing I have
Like a tidal wave, I''ll make a mess
Or calm waters if that serves you best
I will love you without any strings attached
I will love you without a single string attached');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0015', '00:04:07', 'Three', 'Maybe I''ve done enough
And your golden child grew up
Maybe this trophy isn''t real love
And with or without it I''m good enough
Maybe I''ve done enough
Finally catching up
For the first time I see an image of my brokenness
Utterly worthy of love
Maybe I''ve done enough
And I finally see myself
Through the eyes of no one else
It''s so exhausting on this silver screen
Where I play the role of anyone but me
And I finally see myself
Unabridged and overwhelmed
A mess of a story I''m ashamed to tell
But I''m slowly learning how to break this spell
And I finally see myself
Now I only want what''s real
To let my heart feel what it feels
Gold, silver, or bronze hold no value here
Where work and rest are equally revered
I only want what''s real
I set aside the highlight reel
And leave my greatest failures on display with an asterisk
Worthy of love anyway');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0016', '00:04:52', 'Four', 'I''m turning out the lights
To remember how to see
Until a renaissance takes place
And resuscitates the color of paint and divinity
As if God hid the building blocks
Of every beautiful thing
In this game of hide and seek
I can''t help but think that ordinary has swallowed the key
Bodies fashioned out of dirt and dust
For a moment we get to be glorious
Ice sculptures adorned in light
Sand castles built tall in between the tides
Maybe I''m hiding behind metaphor
Maybe my heart needs to break to be sure
One day I''ll wear it all on my sleeve
The insignificant with the sacred unique
But I''ve fallen in love with a ghost
And I lost my balance when I needed it most
And this blurry photograph is proof
Of what I''m not sure but it feels like truth
I''m stuck swimming in shadows down here
It''s been forever since I came up for air
Flashlight in hand determined to find
Authenticity only poetry could even begin to try to describe
Bodies fashioned out of dirt and dust
For a moment we get to be glorious
Get to be glorious
Get to be glorious
What if we already are
Who we''ve been dying to become
In certain light I can plainly see
A reflection of magnificence
Hidden in you
Maybe even in me');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0017', '00:05:55', 'Five', 'I want to watch the universe expand
I want to break it into pieces, small enough to understand
And put it all back together again
In the quiet of my private collection
It feels like an out of body experience
But something gets lost from a safe distance
And now I can''t put my mind to rest
And I can''t help but second guess
Living behind this one-way mirror
I''m hypnotized by this anomaly
Such strange uncharted territory
A white flag waves in the dark between my head and my heart
My armor falls apart
As if I could let myself be seen, even deeply known
Like I was already brave enough to let go
And now I want to generously lose
This energy that I''ve been hanging onto so desperately
I finally feel the universe expand
It''s hidden in heartbeats, exhales
And in the hope of open hands');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0018', '00:04:15', 'Six', 'I had the most vivid dream
My feet had left the ground
I was floating to heaven
But I could only look down
My mind was heavy
Running ragged with worst case scenarios
Emergency exits and the distance below
I woke up so worried that the angels let go
Oh God I''m so tired
Of being afraid
What would it feel like
To put this baggage down?
If I''m being honest
I''m not sure I''d know how
I want to take shelter but I''m ready, ready to fight
And somewhere in the middle I feel a little paralyzed
But maybe I''m stronger than I realize
I want to believe
No, I choose to believe
That I was made to become
A sanctuary
Fear won''t go away
But I can keep it at bay
And these invisible walls
Just might keep us safe
With vigilant heart
I''ll push into the dark
But I''ll learn to breathe deep
And make peace with the stars
Is that courage or faith
To show up every day?
To trust that there will be light
Always waiting behind
Even the darkest of nights
And no matter what
Somehow we''ll be okay
Don''t be afraid');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0019', '00:04:22', 'Seven', 'How nice it''d be if we could try everything
I''m serious, let''s make a list and just begin
"What about danger?" So what. "What about risk?"
Let''s climb this mountain before we cross that bridge
''Cause I''m restless, I''m restless, I''m restless
For whatever comes next
How wonderful to see a smile on your face
It costs farewell tears for a welcome-home parade
A secret handshake between me and my one life
I''ll find the silver lining no matter what the price
''Cause I''m hungry, I''m hungry, I''m hungry
For whatever comes next
Let me tell you another secret of the trade
It feels like sinking when I''m standing in one place
So I look to the future and I book another flight
When everything feels heavy, I''ve learned to travel light
But I want to be here
Truly, be here
To watch the ones that I love bloom
And I want to make room
To love them through and through and through and through
The slow and barren seasons too
I feel hope
Deep in my bones
Tomorrow will be beautiful
And I''m ready, God I''m ready, oh I''m ready
Restless and hungry, I''m ready
For whatever comes next');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0020', '00:04:10', 'Eight', 'I remember the minute
It was like a switch was flipped
I was just a kid who grew up strong enough
To pick this armor up
And suddenly it fit
God, that was so long ago, long ago, long ago
I was little, I was weak, perfectly naive
And I grew up too quick
Now you won''t see all that I have to lose
And all I''ve lost in the fight to protect it
I won''t let you in, I swore never again
I can''t afford, no, I refuse to be rejected
I want to break these bones ''til they''re better
I want to break them right and feel alive
You were wrong, you were wrong, you were wrong
My healing needed more than time
When I see fragile things, helpless things, broken things
I see the familiar
I was little, I was weak, I was perfect too
Now I''m a broken mirror
But I can''t let you see all that I have to lose
All I''ve lost in the fight to protect it
I can''t let you in, I swore never again
I can''t afford to let myself be blindsided
I''m standing guard, I''m falling apart
And all I want is to trust you
Show me how to lay my sword down
For long enough to let you through
Here I am, pry me open
What do you want to know?
I''m just a kid who grew up scared enough
To hold the door shut
And bury my innocence
But here''s a map, here''s a shovel
Here''s my Achilles'' heel
I''m all in, palms out, I''m at your mercy now and I''m ready to begin
I am strong, I am strong, I am strong enough to let you in
I''ll shake the ground with all my might
I will pull my whole heart up to the surface
For the innocent, for the vulnerable
I''ll show up on the front lines with a purpose
And I''ll give all I have, I''ll give my blood, I''ll give my sweat
An ocean of tears will spill for what is broken
I''m shattered porcelain, glued back together again
Invincible like I''ve never been');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0021', '00:05:20', 'Nine', 'Who am I
To say what any of this means?
I have been sleepwalking
Since I was fourteen
Now as I write my song
I retrace my steps
Honestly, it''s easier
To let myself forget
Still, I check my vital signs
Choked up, I realize
I''ve been less than half myself
For more than half my life
Wake up
Fall in love again
Wage war on gravity
There''s so much
Worth fighting for
You''ll see
Another domino falls
Either way
It looks like empathy
To understand all sides
But I''m just trying to find myself
Through someone else''s eyes
So show me what to do
To restart this heart of mine
How do I forgive myself
For losing so much time?
Wake up
Roll up your sleeves
There''s a chain reaction
In your heart
Muscle memory
Remembering who you are
Stand up
And fall in love again and again and again
Wage war on gravity
There''s so much
Worth fighting for
You''ll see
Another domino falls
And another domino falls
A little at a time
I feel more alive
I let the scale tip and feel all of it
It''s uncomfortable but right
We were born to try
To see each other through
To know and love ourselves and others well
Is the most difficult and meaningful
Work we''ll ever do');
 insert into SongAlbum (songId, albumId) VALUES ('S0013', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0014', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0015', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0016', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0017', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0018', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0019', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0020', 'A0003');
 insert into SongAlbum (songId, albumId) VALUES ('S0021', 'A0003');
 insert into SongBand (songId, bandId) VALUES ('S0013', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0014', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0015', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0016', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0017', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0018', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0019', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0020', 'B0002');
 insert into SongBand (songId, bandId) VALUES ('S0021', 'B0002');
 insert into SongPlaylist (songId, playlistId) VALUE ('S0014', 'P0001');
 insert into SongPlaylist (songId, playlistId) VALUE ('S0018', 'P0001');

/*
 Band: Parachute
 Artists: Will Anderson, Nate McFarland, Alex Hargrave, Johnny Stubblefield, Kit French
 Genre: Pop Rock
 Label: Mercury Records
 Album: The Way It Was
 Songs: White Dress, You And Me, Something To Believe In, Forever And Always, What I Know, American Secrets, Kiss Me Slowly, Halfway, Philadelphia
 */
  insert into Band (bandId, name, size) VALUES ('B0004', 'Parachute', 5);
  insert into Artist (artistId, name) VALUES ('R0006', 'Will Anderson');
  insert into Artist (artistId, name) VALUES ('R0007', 'Nate McFarland');
  insert into Artist (artistId, name) VALUES ('R0008', 'Alex Hargrave');
  insert into Artist (artistId, name) VALUES ('R0009', 'Johnny Stubblefield');
  insert into Artist (artistId, name) VALUES ('R0010', 'Kit French');
  insert into BandArtist (bandId, artistId) VALUES ('B0004', 'R0006');
  insert into BandArtist (bandId, artistId) VALUES ('B0004', 'R0007');
  insert into BandArtist (bandId, artistId) VALUES ('B0004', 'R0008');
  insert into BandArtist (bandId, artistId) VALUES ('B0004', 'R0009');
  insert into BandArtist (bandId, artistId) VALUES ('B0004', 'R0010');
  insert into Genre (genreId, name) VALUES ('G0005', 'Pop Rock');
  insert into Label (labelId, name) VALUES ('L0004', 'Mercury Records');
  insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0005', 'The Way It Was', 'Studio', 'G0005', 'L0004');
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0022', '00:03:36', 'White Dress', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0023', '00:03:37', 'You And Me', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0024', '00:04:44', 'Something To Believe In', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0025', '00:04:13', 'What I Know', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0026', '00:04:09', 'Forever And Always', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0027', '00:06:19', 'American Secrets', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0028', '00:03:56', 'Kiss Me Slowly', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0029', '00:03:10', 'Halfway', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0030', '00:06:17', 'Philadelphia', null);
  insert into SongAlbum (songId, albumId) VALUES ('S0022', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0023', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0024', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0025', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0026', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0027', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0028', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0029', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0030', 'A0005');
  insert into SongBand (songId, bandId) VALUES ('S0022', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0023', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0024', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0025', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0026', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0027', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0028', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0029', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0030', 'B0004');


/*
 Band: AJJ
 Artists: Sean Bonnette, Ben Gallaty, Preston Bryant, Mark Glick
 Genre: Indie Rock
 Label: SideOneDummy
 Album: Back In The Jazz Coffee
 */
 insert into Band (bandId, name, size) VALUES ('B0005', 'AJJ', 4);
 insert into Artist (artistId, name) VALUES ('R0011', 'Sean Bonnette');
 insert into Artist (artistId, name) VALUES ('R0012', 'Ben Gallaty');
 insert into Artist (artistId, name) VALUES ('R0013', 'Preston Bryant');
 insert into Artist (artistId, name) VALUES ('R0014', 'Mark Glick');
 insert into BandArtist (bandId, artistId) VALUES ('B0005', 'R0011');
 insert into BandArtist (bandId, artistId) VALUES ('B0005', 'R0012');
 insert into BandArtist (bandId, artistId) VALUES ('B0005', 'R0013');
 insert into BandArtist (bandId, artistId) VALUES ('B0005', 'R0014');
 insert into Label (labelId, name) VALUES ('L0005', 'SideOneDummy');
 insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0006', 'Back In The Jazz Coffin', 'Studio', 'G0004', 'L0005');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0031', '00:00:50', 'American Body Rentals', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0032', '00:02:02', 'Blood, Hatred, Money, and Rage 2', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0033', '00:01:29', 'Border Patrol (Yuma)', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0034', '00:02:26', 'My Crooked Leg', null);
 insert into SongAlbum (songId, albumId) VALUES ('S0031', 'A0006');
 insert into SongAlbum (songId, albumId) VALUES ('S0032', 'A0006');
 insert into SongAlbum (songId, albumId) VALUES ('S0033', 'A0006');
 insert into SongAlbum (songId, albumId) VALUES ('S0034', 'A0006');
 insert into SongBand (songId, bandId) VALUES ('S0031', 'B0005');
 insert into SongBand (songId, bandId) VALUES ('S0032', 'B0005');
 insert into SongBand (songId, bandId) VALUES ('S0033', 'B0005');
 insert into SongBand (songId, bandId) VALUES ('S0034', 'B0005');

 /*
 Band: Mark Glick
 Artists: Will Anderson, Nate McFarland, Alex Hargrave, Johnny Stubblefield, Kit French
 Genre: Pop Rock
 Label: Mercury Records
 Album: The Way It Was
 Songs: White Dress, You And Me, Something To Believe In, Forever And Always, What I Know, American Secrets, Kiss Me Slowly, Halfway, Philidelphia
 */
 insert into Band (bandId, name, size) VALUES ('B0006', 'Anxiety Machine', 1);
 insert into BandArtist (bandId, artistId) VALUES ('B0006', 'R0014');
 insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0007', 'More Everything', 'Studio', 'G0003', 'L0005');
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0035', '00:00:50', 'Broken Idiot Seeks Same', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0036', '00:02:02', 'Housey', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0037', '00:01:29', 'Caffeine Jitters', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0038', '00:02:26', 'Isolation Drill', null);
 insert into Songs (songId, duration, name, lyrics) VALUES ('S0039', '00:02:26', 'Abandoned Factory Revelation', null);
 insert into SongAlbum (songId, albumId) VALUES ('S0035', 'A0007');
 insert into SongAlbum (songId, albumId) VALUES ('S0036', 'A0007');
 insert into SongAlbum (songId, albumId) VALUES ('S0037', 'A0007');
 insert into SongAlbum (songId, albumId) VALUES ('S0038', 'A0007');
 insert into SongAlbum (songId, albumId) VALUES ('S0039', 'A0007');
 insert into SongBand (songId, bandId) VALUES ('S0035', 'B0006');
 insert into SongBand (songId, bandId) VALUES ('S0036', 'B0006');
 insert into SongBand (songId, bandId) VALUES ('S0037', 'B0006');
 insert into SongBand (songId, bandId) VALUES ('S0038', 'B0006');
 insert into SongBand (songId, bandId) VALUES ('S0039', 'B0006');

insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0008', 'Wide Awake', 'Studio', 'G0005', 'L0004');
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0040', '00:03:49', 'Without You', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0041', '00:03:46', 'What Side Of Love', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0042', '00:04:31', 'Jennie', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0043', '00:04:00', 'Everything', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0044', '00:03:39', 'Lonely With Me', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0045', '00:03:24', 'Love Me Anyway', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0046', '00:04:06', 'New Orleans', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0047', '00:04:01', 'When You Move', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0048', '00:04:46', 'Getaway', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0049', '00:02:45', 'Crave', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0050', '00:04:33', 'What Breaks My Heart', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0051', '00:04:09', 'Waking Up', null);
  insert into SongAlbum (songId, albumId) VALUES ('S0040', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0041', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0042', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0043', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0044', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0045', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0046', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0047', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0048', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0049', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0050', 'A0008');
  insert into SongAlbum (songId, albumId) VALUES ('S0051', 'A0008');
  insert into SongBand (songId, bandId) VALUES ('S0040', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0041', 'B0004')
  insert into SongBand (songId, bandId) VALUES ('S0042', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0043', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0044', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0045', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0046', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0047', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0048', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0049', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0050', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0051', 'B0004');
  insert into Playlist (playlistId, name) VALUES ('P0002', 'Emma''s Songs');
  insert into SongPlaylist (songId, playlistId) VALUES ('S0044', 'P0002');


insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0005', 'The Way It Was', 'Studio', 'G0005', 'L0004');
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0022', '00:03:36', 'White Dress', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0023', '00:03:37', 'You And Me', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0024', '00:04:44', 'Something To Believe In', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0025', '00:04:13', 'What I Know', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0026', '00:04:09', 'Forever And Always', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0027', '00:06:19', 'American Secrets', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0028', '00:03:56', 'Kiss Me Slowly', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0029', '00:03:10', 'Halfway', null);
  insert into Songs (songId, duration, name, lyrics) VALUES ('S0030', '00:06:17', 'Philadelphia', null);
  insert into SongAlbum (songId, albumId) VALUES ('S0022', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0023', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0024', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0025', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0026', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0027', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0028', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0029', 'A0005');
  insert into SongAlbum (songId, albumId) VALUES ('S0030', 'A0005');
  insert into SongBand (songId, bandId) VALUES ('S0022', 'B0004');
  insert into SongBand (songId, bandId) VALUES ('S0023', 'B0004');
/*
 Band: Parachute
 Genre:
 Label:
 Album: Wide Awake
 Songs: Lonely With Me
 Playlist: Emma's Songs
 */

/*
 Band: Parachute
 Genre:
 Label:
 Album: Parachute
 Songs: Lonely With Me
 Playlist: Emma's Songs
 */

/*
 Band: Mumford & Sons
 Genre:
 Label:
 Album: Babel
 Songs: Hopeless Wanderer, Below My Feet, Not With Haste
 Playlist: Emma's Songs
 */

/*
 Band: Coldplay
 Genre:
 Label:
 Album: A Head Full Of Dreams
 Songs: Everglow, Hymn For The Weekend
 Playlist: Emma's Songs
 */

/*
 Band: Panic! At The Disco
 Genre:
 Label:
 Album: Nearly Witches
 Songs: Sarah Smiles
 Playlist: Emma's Songs
 */

 /*
 Band: Panic! At The Disco
 Genre:
 Label:
 Album: Too Weird To Live, Too Rare To Die!
 Songs: This Is Gospel
 Playlist: Emma's Songs
 */

 /*
 Band: The Front Bottoms
 Genre:
 Label:
 Album: Rose
 Songs: This Is Gospel
 Playlist: Kelby's Songs
 */
