/*
 Band: Jaymes Young
 Artist: Jaymes Young
 Genre: Alternative Rock, 2. Indie Pop
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
insert into BandAlbum (bandId, albumId) VALUES ('B0001', 'A0001');
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
insert into BandAlbum (bandId, albumId) VALUES ('B0002', 'A0002');
insert into SongBand (songId, bandId) VALUES ('S0006', 'B0002');
insert into SongConcert (songId, concertId) VALUE ('S0006', 'C0001');


/*
 Band: Phil Good
 Artist: Phil Good
 Genre: Electronic
 Label: Heard Well
 Album: Growing Up
 Songs: Be Somebody, Growing Up, I'll Fix It, I Miss You, Sleeping In, Better
 Concert: Jaymes Young, Phil Good
 Playlist: None
 */
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0003', 'Growing Up', 'Studio', 'G0003', 'L0002');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0007', '00:03:07', 'Be Somebody', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0008', '00:02:45', 'Growing Up', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0009', '00:03:07', 'I''ll Fix It', null);  insert into Songs (songId, duration, name, lyrics) VALUES ('S0010', '00:02:37', 'I Miss You', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0011', '00:02:38', 'Sleeping In', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0012', '00:02:17', 'Better (Stripped)', null);
insert into SongAlbum (songId, albumId) VALUES ('S0007', 'A0003');
insert into SongAlbum (songId, albumId) VALUES ('S0008', 'A0003');
insert into SongAlbum (songId, albumId) VALUES ('S0009', 'A0003');
insert into SongAlbum (songId, albumId) VALUES ('S0010', 'A0003');
insert into SongAlbum (songId, albumId) VALUES ('S0011', 'A0003');
insert into SongAlbum (songId, albumId) VALUES ('S0012', 'A0003');
insert into BandAlbum (bandId, albumId) VALUES ('B0002', 'A0003');
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
 Concert: None
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
insert into SongAlbum (songId, albumId) VALUES ('S0013', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0014', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0015', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0016', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0017', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0018', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0019', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0020', 'A0004');
insert into SongAlbum (songId, albumId) VALUES ('S0021', 'A0004');
insert into BandAlbum (bandId, albumId) VALUES ('B0003', 'A0004');
insert into SongBand (songId, bandId) VALUES ('S0013', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0014', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0015', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0016', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0017', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0018', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0019', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0020', 'B0003');
insert into SongBand (songId, bandId) VALUES ('S0021', 'B0003');
insert into SongPlaylist (songId, playlistId) VALUE ('S0014', 'P0001');
insert into SongPlaylist (songId, playlistId) VALUE ('S0018', 'P0001');


/*
 Band: Parachute
 Artists: Will Anderson, Nate McFarland, Alex Hargrave, Johnny Stubblefield, Kit French
 Genre: Pop Rock
 Label: Mercury Records
 Album: The Way It Was
 Songs: White Dress, You And Me, Something To Believe In, Forever And Always, What I Know, American Secrets, Kiss Me Slowly, Halfway, Philadelphia
 Concert: None
 Playlist: NOne
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
insert into BandAlbum (bandId, albumId) VALUES ('B0004', 'A0005');
insert into SongBand (songId, bandId) VALUES ('S0022', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0023', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0024', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0025', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0026', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0027', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0028', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0029', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0030', 'B0004');
insert into SongPlaylist (songId, playlistId) VALUES ('S0025', 'P0002');


/*
 Band: AJJ
 Artists: Sean Bonnette, Ben Gallaty, Preston Bryant, Mark Glick
 Genre: Indie Rock
 Label: SideOneDummy
 Album: Back In The Jazz Coffee
 Songs: Lots
 Concert: None
 Playlist: None
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
insert into BandAlbum (bandId, albumId) VALUES ('B0005', 'A0006');
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
 Concert: None
 Playlist: None
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
insert into BandAlbum (bandId, albumId) VALUES ('B0006', 'A0007');
insert into SongBand (songId, bandId) VALUES ('S0035', 'B0006');
insert into SongBand (songId, bandId) VALUES ('S0036', 'B0006');
insert into SongBand (songId, bandId) VALUES ('S0037', 'B0006');
insert into SongBand (songId, bandId) VALUES ('S0038', 'B0006');
insert into SongBand (songId, bandId) VALUES ('S0039', 'B0006');


/*
 Band: Parachute
 Genre: Pop Rock
 Label: Mercury
 Album: Wide Awake
 Songs: Lonely With Me
 Concert: None
 Playlist: Emma's Songs
*/
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
insert into BandAlbum (bandId, albumId) VALUES ('B0004', 'A0008');
insert into SongBand (songId, bandId) VALUES ('S0040', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0041', 'B0004');
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


/*
 Band: Parachute
 Artists: 5
 Genre: 5
 Label: 4
 Album: Parachute
 Songs: Dance Around It
 Concert: Parachute
 Playlist: Emma's Songs
*/
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0009', 'Parachute', 'Studio', 'G0005', 'L0004');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0052', '00:03:44', 'Young', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0053', '00:03:42', 'Ocean', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0054', '00:03:37', 'Had It All', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0055', '00:03:22', 'Finally Got It Right', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0056', '00:03:27', 'Talk To Me', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0057', '00:04:33', 'Better', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0058', '00:03:25', 'Dance Around It', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0059', '00:03:52', 'Someday', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0060', '00:02:49', 'Say You Will', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0061', '00:04:52', 'Looking Back', null);
insert into SongAlbum (songId, albumId) VALUES ('S0052', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0053', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0054', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0055', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0056', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0057', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0058', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0059', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0060', 'A0009');
insert into SongAlbum (songId, albumId) VALUES ('S0061', 'A0009');
insert into BandAlbum (bandId, albumId) VALUES ('B0004', 'A0009');
insert into SongBand (songId, bandId) VALUES ('S0052', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0053', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0054', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0055', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0056', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0057', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0058', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0059', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0060', 'B0004');
insert into SongBand (songId, bandId) VALUES ('S0061', 'B0004');
insert into SongPlaylist (songId, playlistId) VALUES ('S0058', 'P0002');
insert into Concert (concertId, location, date) VALUES ('C0002', 'Washington, DC', '2019-05-01');
insert into BandConcert (bandId, concertId) VALUES ('B0004', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0052', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0046', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0040', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0055', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0044', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0026', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0042', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0024', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0025', 'C0002');
insert into SongConcert (songId, concertId) VALUE ('S0054', 'C0002');


/*
 Band: Mumford & Sons
 Members: 4
 Genre: Rock
 Label: Gentlemen Of The Road'
 Album: Babel
 Songs: Hopeless Wanderer, Below My Feet, Not With Haste
 Concert: None
 Playlist: Emma's Songs
*/
insert into Band (bandId, name, size) VALUES ('B0007', 'Mumford & Sons', 4);
insert into Artist (artistId, name) VALUES ('R0015', 'Marcus Mumford');
insert into Artist (artistId, name) VALUES ('R0016', 'Winston Marshall');
insert into Artist (artistId, name) VALUES ('R0017', 'Ben Lovett');
insert into Artist (artistId, name) VALUES ('R0018', 'Ted Dwane');
insert into BandArtist (bandId, artistId) VALUES ('B0007', 'R0015');
insert into BandArtist (bandId, artistId) VALUES ('B0007', 'R0016');
insert into BandArtist (bandId, artistId) VALUES ('B0007', 'R0017');
insert into BandArtist (bandId, artistId) VALUES ('B0007', 'R0018');
insert into Genre (genreId, name) VALUES ('G0006', 'Rock');
insert into Label (labelId, name) VALUES ('L0006', 'Gentlemen Of The Road');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0010', 'Babel', 'Studio', 'G0006', 'L0006');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0062', '00:03:29', 'Babel', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0063', '00:03:16', 'Whispers In The Dark' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0064', '00:04:37', 'I Will Wait' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0065', '00:04:11', 'Holland Road' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0066', '00:05:40', 'Ghosts That Know' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0067', '00:05:15', 'Lover Of The Night' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0068', '00:05:21', 'Lover''s Eyes' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0069', '00:02:05', 'Reminder' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0070', '00:05:08', 'Hopeless Wanderer' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0071', '00:04:16', 'Broken Crown' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0072', '00:04:51', 'Below My Feet' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0073', '00:04:09', 'Not With Haste' , null);
insert into SongAlbum (songId, albumId) VALUES ('S0062', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0063', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0064', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0065', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0066', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0067', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0068', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0069', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0070', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0071', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0072', 'A0010');
insert into SongAlbum (songId, albumId) VALUES ('S0073', 'A0010');
insert into BandAlbum (bandId, albumId) VALUES ('B0007', 'A0010');
insert into SongBand (songId, bandId) VALUES ('S0062', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0063', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0064', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0065', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0066', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0067', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0068', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0069', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0070', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0071', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0072', 'B0007');
insert into SongBand (songId, bandId) VALUES ('S0073', 'B0007');
insert into SongPlaylist (songId, playlistId) VALUE ('S0070', 'P0002');
insert into SongPlaylist (songId, playlistId) VALUE ('S0072', 'P0002');
insert into SongPlaylist (songId, playlistId) VALUE ('S0073', 'P0002');


/*
 Band: Coldplay
 Members: 5
 Genre: Alternative Rock
 Label: Capitol Records
 Album: A Head Full Of Dreams
 Songs: Everglow, Hymn For The Weekend
 Concert: None
 Playlist: Emma's Songs
*/
insert into Band (bandId, name, size) VALUES ('B0008', 'Coldplay', 5);
insert into Artist (artistId, name) VALUES ('R0019', 'Chris Martin');
insert into Artist (artistId, name) VALUES ('R0020', 'Will Champion');
insert into Artist (artistId, name) VALUES ('R0021', 'Phil Harvey');
insert into Artist (artistId, name) VALUES ('R0022', 'Guy Berryman');
insert into Artist (artistId, name) VALUES ('R0023', 'Johnny Buckland');
insert into BandArtist (bandId, artistId) VALUES ('B0008', 'R0019');
insert into BandArtist (bandId, artistId) VALUES ('B0008', 'R0020');
insert into BandArtist (bandId, artistId) VALUES ('B0008', 'R0021');
insert into BandArtist (bandId, artistId) VALUES ('B0008', 'R0022');
insert into BandArtist (bandId, artistId) VALUES ('B0008', 'R0023');
insert into Label (labelId, name) VALUES ('L0007', 'Capitol Records');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0011', 'A Head Full Of Dreams', 'Studio', 'G0001', 'L0007');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0074', '00:03:44', 'A Head Full Of Dreams', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0075', '00:03:49', 'Birds' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0076', '00:04:19', 'Hymn For The Weekend' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0077', '00:04:43', 'Everglow' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0078', '00:04:24', 'Adventure Of A Lifetime' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0079', '00:04:28', 'Fun (ft. Tove Lo)', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0080', '00:01:52', 'Kaleidoscope' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0081', '00:06:17', 'Army Of One' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0082', '00:04:21', 'Amazing Day' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0083', '00:01:00', 'Color Spectrum' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0084', '00:06:45', 'Up&Up' , null);
insert into SongAlbum (songId, albumId) VALUES ('S0074', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0075', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0076', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0077', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0078', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0079', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0080', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0081', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0082', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0083', 'A0011');
insert into SongAlbum (songId, albumId) VALUES ('S0084', 'A0011');
insert into BandAlbum (bandId, albumId) VALUES ('B0008', 'A0011');
insert into SongBand (songId, bandId) VALUES ('S0074', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0075', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0076', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0077', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0078', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0079', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0080', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0081', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0082', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0083', 'B0008');
insert into SongBand (songId, bandId) VALUES ('S0084', 'B0008');
insert into SongPlaylist (songId, playlistId) VALUE ('S0076', 'P0002');
insert into SongPlaylist (songId, playlistId) VALUE ('S0077', 'P0002');


/*
 Band: Tove Lo
 Artist: Tove Lo
 Genre: 1
 Label: 7
 Album: 11, A Head Full Of Dreams
 Songs: 79, Fun
 Concert: None
 Playlist: None
*/
insert into Band (bandId, name, size) VALUES ('B0009', 'Tove Lo', 1);
insert into Artist (artistId, name) VALUES ('R0024', 'Tove Lo');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0024');
insert into BandAlbum (bandId, albumId) VALUES ('B0009', 'A0011');
insert into SongBand (songId, bandId) VALUES ('S0079', 'B0009');


/*
 Band: Panic! At The Disco
 Artist: Brendon Urie
 Genre: Pop Punk
 Label: Fueled By Ramen
 Album: Vices & Virtues
 Songs: Sarah Smiles
 Concert: None
 Playlist: Emma's Songs
*/
insert into Band (bandId, name, size) VALUES ('B0010', 'Panic! At The Disco', 6);
insert into Artist (artistId, name) VALUES ('R0025', 'Brendon Urie');
insert into Artist (artistId, name) VALUES ('R0026', 'Dallon Weekes');
insert into Artist (artistId, name) VALUES ('R0027', 'Jon Walker');
insert into Artist (artistId, name) VALUES ('R0028', 'Spencer Smith');
insert into Artist (artistId, name) VALUES ('R0029', 'Brent Wilson');
insert into Artist (artistId, name) VALUES ('R0030', 'Ryan Ross');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0025');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0026');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0027');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0028');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0029');
insert into BandArtist (bandId, artistId) VALUES ('B0009', 'R0030');
insert into Label (labelId, name) VALUES ('L0008', 'Fueled By Ramen');
insert into Genre (genreId, name) VALUES ('G0007', 'Pop Punk');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0012', 'Vices & Virtues', 'Studio', 'G0007', 'L0008');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0085', '00:03:44', 'The Ballad Of Mona Lisa', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0086', '00:03:49', 'Let''s Kill Tonight'  , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0087', '00:04:19', 'Hurricane' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0088', '00:04:43', 'Memories' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0089', '00:04:24', 'Trade Mistakes' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0090', '00:04:28', 'Ready To Go (Get Me Out Of My Mind' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0091', '00:01:52', 'Always' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0092', '00:06:17', 'The Calendar' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0093', '00:04:21', 'Sarah Smiles' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0094', '00:01:00', 'Nearly Witches (Ever Since We Met...' , null);
insert into SongAlbum (songId, albumId) VALUES ('S0085', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0086', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0087', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0088', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0089', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0090', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0091', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0093', 'A0012');
insert into SongAlbum (songId, albumId) VALUES ('S0094', 'A0012');
insert into BandAlbum (bandId, albumId) VALUES ('B0010', 'A0012');
insert into SongBand (songId, bandId) VALUES ('S0085', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0086', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0087', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0088', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0089', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0090', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0091', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0092', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0093', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0094', 'B0010');
insert into SongPlaylist (songId, playlistId) VALUE ('S0093', 'P0002');


/*
 Band: Panic! At The Disco
 Artists: 6
 Genre: Pop Punk
 Label: Fueled By Ramen
 Album: Too Weird To Live, Too Rare To Die!
 Songs: This Is Gospel
 Concert: None
 Playlist: Emma's Songs
*/
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0013', 'Too Weird To Live, Too Rare To Die!', 'Studio', 'G0007', 'L0008');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0095', '00:03:07', 'This Is Gospel', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0096', '00:03:12', 'Miss Jackson (feat. LOLO)', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0097', '00:03:09', 'Vegas Lights', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0098', '00:03:09', 'Girl That You Love', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0099', '00:03:07', 'Nicotine', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0100', '00:03:27', 'Girls/Girls/Boys', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0101', '00:03:18', 'Casual Affair', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0102', '00:03:17', 'Far Too Young To Die', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0103', '00:03:18', 'Collar Full', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0104', '00:03:32', 'The End Of All Things', null);
insert into SongAlbum (songId, albumId) VALUES ('S0095', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0096', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0097', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0098', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0099', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0100', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0101', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0102', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0103', 'A0013');
insert into SongAlbum (songId, albumId) VALUES ('S0104', 'A0013');
insert into BandAlbum (bandId, albumId) VALUES ('B0010', 'A0013');
insert into SongBand (songId, bandId) VALUES ('S0095', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0096', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0097', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0098', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0099', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0100', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0101', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0102', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0103', 'B0010');
insert into SongBand (songId, bandId) VALUES ('S0104', 'B0010');
insert into SongPlaylist (songId, playlistId) VALUES ('S0095', 'P0002');


/*
 Band: LOLO
 Artist: 1
 Genre: Pop Punk
 Label: Fueled By Ramen
 Album: Too Weird To Live, Too Rare To Die!
 Songs: 96, Miss Jackson
 Concert: None
 Playlist: Emma's Songs
*/
insert into Band (bandId, name, size) VALUES ('B0011', 'LOLO', 1);
insert into Artist (artistId, name) VALUES ('R0031', 'LOLO');
insert into BandArtist (bandId, artistId) VALUES ('B0011', 'R0031');
insert into BandAlbum (bandId, albumId) VALUES ('B0011', 'A0013');
insert into SongBand (songId, bandId) VALUES ('S0096', 'B0011');


/*
 Band: The Front Bottoms
 Artists: 3
 Genre: Indie
 Label: Atlantic Records
 Album: Rose
 Songs: Lots
 Concerts: None
 Playlist: None
*/
insert into Band (bandId, name, size) VALUES ('B0012', 'The Front Bottoms', 3);
insert into Artist (artistId, name) VALUES ('R0032', 'Brian Stella');
insert into Artist (artistId, name) VALUES ('R0033', 'Matthew Uychich');
insert into Artist (artistId, name) VALUES ('R0034', 'Tom Warren');
insert into BandArtist (bandId, artistId) VALUES ('B0012', 'R0032');
insert into BandArtist (bandId, artistId) VALUES ('B0012', 'R0033');
insert into BandArtist (bandId, artistId) VALUES ('B0012', 'R0034');
insert into Genre (genreId, name) VALUES ('G0008', 'Indie');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0014', 'Rose', 'Studio', 'G0008', 'L0001');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0105', '00:03:44', 'Flying Model Rockets', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0106', '00:03:49', 'Lipstick Covered Magnet' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0107', '00:04:19', '12 Feet Deep' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0108', '00:04:43', 'Jim Bogart' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0109', '00:04:24', 'Be Nice To Me' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0110', '00:04:24', 'Awkward Conversations' , null);
insert into SongAlbum (songId, albumId) VALUES ('S0105', 'A0014');
insert into SongAlbum (songId, albumId) VALUES ('S0106', 'A0014');
insert into SongAlbum (songId, albumId) VALUES ('S0107', 'A0014');
insert into SongAlbum (songId, albumId) VALUES ('S0108', 'A0014');
insert into SongAlbum (songId, albumId) VALUES ('S0109', 'A0014');
insert into SongAlbum (songId, albumId) VALUES ('S0110', 'A0014');
insert into BandAlbum (bandId, albumId) VALUES ('B0012', 'A0014');
insert into SongBand (songId, bandId) VALUES ('S0105', 'B0012');
insert into SongBand (songId, bandId) VALUES ('S0106', 'B0012');
insert into SongBand (songId, bandId) VALUES ('S0107', 'B0012');
insert into SongBand (songId, bandId) VALUES ('S0108', 'B0012');
insert into SongBand (songId, bandId) VALUES ('S0109', 'B0012');
insert into SongBand (songId, bandId) VALUES ('S0110', 'B0012');


/*
 Band: Matt Maeson
 Artists: 1
 Genre: 8, Indie
 Label: Atlantic Records
 Album: Who Killed Matt Maeson-Live
 Songs: Lots
 Concert: None
 Playlist: Favorites
*/
insert into Band (bandId, name, size) VALUES ('B0013', 'Matt Maeson', 1);
insert into Artist (artistId, name) VALUES ('R0035', 'Matt Maeson');
insert into BandArtist (bandId, artistId) VALUES ('B0013', 'R0035');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0015', 'Who Killed Matt Maeson', 'Live', 'G0008', 'L0001');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0111', '00:03:58', 'Grave Digger', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0112', '00:03:35', 'Cringe' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0113', '00:03:00', 'Me And My Friends Are Lonely' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0114', '00:04:27', 'Straight Razor' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0115', '00:03:10', 'Tribulation' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0116', '00:02:54', 'Twenty Twelve' , null);
insert into SongAlbum (songId, albumId) VALUES ('S0111', 'A0015');
insert into SongAlbum (songId, albumId) VALUES ('S0112', 'A0015');
insert into SongAlbum (songId, albumId) VALUES ('S0113', 'A0015');
insert into SongAlbum (songId, albumId) VALUES ('S0114', 'A0015');
insert into SongAlbum (songId, albumId) VALUES ('S0115', 'A0015');
insert into SongAlbum (songId, albumId) VALUES ('S0116', 'A0015');
insert into BandAlbum (bandId, albumId) VALUES ('B0013', 'A0015');
insert into SongBand (songId, bandId) VALUES ('S0111', 'B0013');
insert into SongBand (songId, bandId) VALUES ('S0112', 'B0013');
insert into SongBand (songId, bandId) VALUES ('S0113', 'B0013');
insert into SongBand (songId, bandId) VALUES ('S0114', 'B0013');
insert into SongBand (songId, bandId) VALUES ('S0115', 'B0013');
insert into SongBand (songId, bandId) VALUES ('S0116', 'B0013');


/*
 Band: Pentatonix
 Artists: 5
 Genre: a capella
 Label: RCA Records
 Album: A Pentatonix Christmas Deluxe
 Songs: Lots
 Concert: None
 Playlist: Covers
*/
insert into Band (bandId, name, size) VALUES ('B0014', 'Pentatonix', 1);
insert into Artist (artistId, name) VALUES ('R0036', 'Scott Hoying');
insert into Artist (artistId, name) VALUES ('R0037', 'Mitch Grassi');
insert into Artist (artistId, name) VALUES ('R0038', 'Kirstin Maldonado');
insert into Artist (artistId, name) VALUES ('R0039', 'Kevin Olusola');
insert into Artist (artistId, name) VALUES ('R0040', 'Matt Sallee');
insert into BandArtist (bandId, artistId) VALUES ('B0014', 'R0036');
insert into BandArtist (bandId, artistId) VALUES ('B0014', 'R0037');
insert into BandArtist (bandId, artistId) VALUES ('B0014', 'R0038');
insert into BandArtist (bandId, artistId) VALUES ('B0014', 'R0039');
insert into BandArtist (bandId, artistId) VALUES ('B0014', 'R0040');
insert into Genre (genreId, name) VALUES ('G0009', 'A Capella');
insert into Label (labelId, name) VALUES ('L0009', 'RCA Records');
insert into Album (albumId, name, recordingType, genreId, labelId) VALUES('A0016', 'A Pentatonix Christmas Deluxe', 'Studio', 'G0009', 'L0009');
insert into Songs (songId, duration, name, lyrics) VALUES ('S0117', '00:03:58', 'O Come, All Ye Faithful', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0118', '00:03:35', 'God Rest Ye Merry Gentlemen' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0119', '00:03:00', 'White Christmas (feat. The Manhattan Transfer' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0120', '00:04:27', 'I''ll Be Home For Christmas', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0121', '00:03:10', 'Up On The Housetop' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0122', '00:02:54', 'The Christmas Sing-Along' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0123', '00:03:58', 'Coventry Carol', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0124', '00:03:35', 'Hallelujah' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0125', '00:03:00', 'Coldest Winter' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0126', '00:04:27', 'Good To Be Bad' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0127', '00:03:10', 'Merry Christmas, Happy Holidays' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0128', '00:02:54', 'Deck The Halls' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0129', '00:03:58', 'How Great Thou Art (feat. Jennifer Hudson', null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0130', '00:03:35', 'Away In A Manger' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0131', '00:03:00', 'Let It Snow! Let It Snow! Let It Snow!' , null);
insert into Songs (songId, duration, name, lyrics) VALUES ('S0132', '00:04:27', 'Hallelujah (feat. The String Mob' , null);
insert into SongAlbum (songId, albumId) VALUES ('S0117', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0118', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0119', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0120', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0121', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0122', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0123', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0124', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0125', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0126', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0127', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0128', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0129', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0130', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0131', 'A0016');
insert into SongAlbum (songId, albumId) VALUES ('S0132', 'A0016');
insert into BandAlbum (bandId, albumId) VALUES ('B0014', 'A0016');
insert into SongBand (songId, bandId, ownership) VALUES ('S0117', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0118', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0119', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0120', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0121', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0122', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0123', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0124', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0125', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0126', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0127', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0128', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0129', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0130', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0131', 'B0014', 'Cover');
insert into SongBand (songId, bandId, ownership) VALUES ('S0132', 'B0014', 'Cover');


/*
 Band: The Manhattan Transfer
 Artist: 4
 Genre: a capella
 Label: RCA Records
 Album: A Pentatonix Christmas Deluxe
 Songs: 119
 Concert: None
 Playlist: Covers
*/
insert into Band (bandId, name, size) VALUES ('B0015', 'The Manhattan Transfer', 4);
insert into Artist (artistId, name) VALUES ('R0041', 'Alan Paul');
insert into Artist (artistId, name) VALUES ('R0042', 'Janis Siegel');
insert into Artist (artistId, name) VALUES ('R0043', 'Cheryl Bentyne');
insert into Artist (artistId, name) VALUES ('R0044', 'Trist Curless');
insert into BandArtist (bandId, artistId) VALUES ('B0015', 'R0041');
insert into BandArtist (bandId, artistId) VALUES ('B0015', 'R0042');
insert into BandArtist (bandId, artistId) VALUES ('B0015', 'R0043');
insert into BandArtist (bandId, artistId) VALUES ('B0015', 'R0044');
insert into BandAlbum (bandId, albumId) VALUES ('B0015', 'A0016');
insert into SongBand (songId, bandId, ownership) VALUES ('S0119', 'B0015', 'Cover');

/*
 Band: Jennifer Hudson
 Artist: 1
 Genre: a capella
 Label: RCA Records
 Album: A Pentatonix Christmas Deluxe
 Songs: 129
 Concert: None
 Playlist: Covers
*/
insert into Band (bandId, name, size) VALUES ('B0016', 'Jennifer Hudson', 1);
insert into Artist (artistId, name) VALUES ('R0045', 'Jennifer Hudson');
insert into BandArtist (bandId, artistId) VALUES ('B0016', 'R0045');
insert into BandAlbum (bandId, albumId) VALUES ('B0016 ', 'A0016');
insert into SongBand (songId, bandId, ownership) VALUES ('S0129', 'B0016', 'Cover');


/*
 Band: The String Mob
 Genre: a capella
 Label: RCA Records
 Album: A Pentatonix Christmas Deluxe
 Songs: 132
 Concert: None
 Playlist: Covers
*/
insert into Band (bandId, name, size) VALUES ('B0017', 'The String Mob', 5);
insert into Artist (artistId, name) VALUES ('R0046', 'Ben Bram');
insert into Artist (artistId, name) VALUES ('R0047', 'Andrew Kessler');
insert into Artist (artistId, name) VALUES ('R0048', 'Quincy Jones');
insert into Artist (artistId, name) VALUES ('R0049', 'Matt Perkins');
insert into Artist (artistId, name) VALUES ('R0050', 'Curline Olusola');
insert into BandArtist (bandId, artistId) VALUES ('B0017', 'R0046');
insert into BandArtist (bandId, artistId) VALUES ('B0017', 'R0047');
insert into BandArtist (bandId, artistId) VALUES ('B0017', 'R0048');
insert into BandArtist (bandId, artistId) VALUES ('B0017', 'R0049');
insert into BandArtist (bandId, artistId) VALUES ('B0017', 'R0050');
insert into BandAlbum (bandId, albumId) VALUES ('B0017', 'A0016');
insert into SongBand (songId, bandId, ownership) VALUES ('S0132', 'B0017', 'Cover');
