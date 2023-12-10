USE VIMEO
--Account
INSERT INTO Account (FirstName, LastName, Email)
VALUES ('John', 'Orlins', 'jorlins@gmail.com');
INSERT INTO Account (FirstName, LastName, Email)
VALUES ('Mike', 'Hanson', 'mikey@gmail.com');
INSERT INTO Account (FirstName, LastName, Email)
VALUES ('Jane', 'Smith', 'janesmith2@gmail.com'),
('Michael', 'Johnson', 'mjohnson3@gmail.com'),
('Jane', 'Doe', 'janedoe@gmail.com'),
('Michael', 'Smith', 'michaelsmith@gmail.com'),
('Emily', 'Johnson', 'emilyjohnson@gmail.com'),
('David', 'Williams', 'davidwilliams@gmail.com'),
('Sarah', 'Brown', 'sarahbrown@gmail.com'),
('Matthew', 'Jones', 'matthewjones@gmail.com'),
('Olivia', 'Miller', 'oliviamiller@gmail.com'),
('Daniel', 'Davis', 'danieldavis@gmail.com'),
('Sophia', 'Garcia', 'sophiagarcia@gmail.com'),
('Jane', 'Smith', 'janesmith@gmail.com'),
('Michael', 'Johnson', 'mjohnson@gmail.com'),
('Emily', 'Davis', 'edavis@gmail.com'),
('David', 'Wilson', 'dwilson@gmail.com'),
('Sarah', 'Anderson', 'sarahanderson@gmail.com'),
('Matthew', 'Taylor', 'mtaylor@gmail.com'),
('Olivia', 'Brown', 'obrown@gmail.com'),
('Daniel', 'Miller', 'dmiller@gmail.com'),
('Sophia', 'Clark', 'sophiaclark@gmail.com'),
('James', 'Walker', 'jwalker@gmail.com');
GO

--Channel
EXEC uspInsertChannel @Name = 'JohnAndFriends', @About = 'We entertain people.', @UserId = 1;
EXEC uspInsertChannel @Name = 'MikeLifts', @About = 'It is all about the grind.', @UserId = 2;
EXEC uspInsertChannel @Name = 'JohnyGaming', @About = 'No game is too hard for me!', @UserId = 1;
EXEC uspInsertChannel @Name = 'CreativeVision', @About = 'Welcome to our channel where we share our passion for [topic].', @UserId = 3;
EXEC uspInsertChannel @Name = 'TechTalks', @About = 'Join us as we explore the world of [topic] and share our experiences.', @UserId = 4;
EXEC uspInsertChannel @Name = 'LifeHacksUnleashed', @About = 'Our channel is dedicated to providing informative and entertaining content about [topic].', @UserId = 5;
EXEC uspInsertChannel @Name = 'TravelAdventures', @About = 'Get ready to dive into the fascinating world of [topic] with our channel.', @UserId = 6;
EXEC uspInsertChannel @Name = 'FoodieFrenzy', @About = 'We''re here to inspire, educate, and entertain you with our videos on [topic].', @UserId = 7;
EXEC uspInsertChannel @Name = 'FitnessJourney', @About = 'Discover the latest trends and insights in [topic] through our channel.', @UserId = 8;
EXEC uspInsertChannel @Name = 'MusicMasters', @About = 'Our mission is to create engaging and thought-provoking content about [topic].', @UserId = 9;
EXEC uspInsertChannel @Name = 'DIYGenius', @About = 'Join our community of [number] subscribers as we embark on exciting adventures in [topic].', @UserId = 10;
EXEC uspInsertChannel @Name = 'ComedyCentral', @About = 'We strive to bring you high-quality videos that showcase the beauty and intricacies of [topic].', @UserId = 11;
EXEC uspInsertChannel @Name = 'NatureExplorer', @About = 'Subscribe to our channel for regular updates on all things [topic] and join the conversation.', @UserId = 12;
EXEC uspInsertChannel @Name = 'ArtisticExpressions', @About = 'Welcome to our channel where we share our passion for [topic/interest].', @UserId = 13;
EXEC uspInsertChannel @Name = 'GamingGurus', @About = 'Join us as we explore the world of [topic/interest] and share our experiences.', @UserId = 14;
EXEC uspInsertChannel @Name = 'FashionFusion', @About = 'Our channel is dedicated to providing informative and entertaining content about [topic/interest].', @UserId = 15;
EXEC uspInsertChannel @Name = 'HealthHub', @About = 'We strive to inspire and educate our viewers through our videos on [topic/interest].', @UserId = 16;
EXEC uspInsertChannel @Name = 'ScienceSimplified', @About = 'Get ready to embark on a journey of [topic/interest] with us, where we share tips, tricks, and insights.', @UserId = 17;
EXEC uspInsertChannel @Name = 'BookwormChronicles', @About = 'Our mission is to create engaging and enjoyable content that brings joy to our viewers.', @UserId = 18;
EXEC uspInsertChannel @Name = 'TechTrends', @About = 'We are a community of [topic/interest] enthusiasts, and we''re excited to have you join us on this adventure.', @UserId = 19;
EXEC uspInsertChannel @Name = 'CookingCraze', @About = 'Discover the latest trends and updates in the world of [topic/interest] through our channel.', @UserId = 20;
EXEC uspInsertChannel @Name = 'MotivationNation', @About = 'Our goal is to entertain, inform, and inspire our viewers through our unique perspective on [topic/interest].', @UserId = 21;
EXEC uspInsertChannel @Name = 'PetPals', @About = 'Thank you for being a part of our channel, where we aim to create a positive and inclusive community centered around [topic/interest].', @UserId = 22;
GO

--Subscription
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 2;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 1;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 3;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 4;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 5;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 6;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 7;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 8;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 9;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 10;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 11;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 12;
EXEC uspInsertSubscription @SubscriberID = 1, @ContentCreatorID = 13;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 10;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 11;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 12;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 13;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 14;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 15;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 16;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 17;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 18;
EXEC uspInsertSubscription @SubscriberID = 2, @ContentCreatorID = 19;
EXEC uspInsertSubscription @SubscriberID = 10, @ContentCreatorID = 2;
EXEC uspInsertSubscription @SubscriberID = 11, @ContentCreatorID = 2;
EXEC uspInsertSubscription @SubscriberID = 12, @ContentCreatorID = 2;
EXEC uspInsertSubscription @SubscriberID = 13, @ContentCreatorID = 2;
EXEC uspInsertSubscription @SubscriberID = 14, @ContentCreatorID = 2;
EXEC uspInsertSubscription @SubscriberID = 15, @ContentCreatorID = 2;
GO

--Playlist
INSERT INTO Playlist ([Name], Visibility, ChannelID)
VALUES ('Favorite songs', 'Private', 1);
INSERT INTO Playlist ([Name], Visibility, ChannelID)
VALUES ('Study Focus: Instrumental Edition', 'Public', 2),
('Feel-Good R&B Grooves', 'Public', 3),
('Indie Folk Gems: Acoustic Delights', 'Public', 4),
('Energetic EDM Bangers', 'Private', 5),
('Classic Rock Anthems: Timeless Hits', 'Public', 6),
('Soothing Jazz Melodies', 'Private', 7),
('Hip Hop Hits: Current Chart Toppers', 'Public', 8),
('Latin Dance Party: Salsa, Merengue, and More', 'Public', 9),
('Mellow Pop: Relaxing Melodies', 'Public', 10),
('Country Hits: Top Tracks of Today"', 'Private', 11),
('Motivational Workout Mix: Pump Up Your Energy', 'Private', 12),
('Soulful Blues: Emotional Guitar Solos', 'Unlisted', 13),
('EDM Festival Vibes: High-Energy Electronic Beats', 'Public', 14),
('Throwback Hip Hop: Old School Rap Classics', 'Public', 15),
('Acoustic Covers: Unique Interpretations of Popular Songs', 'Public', 16),
('Relaxing Piano Melodies: Peaceful Instrumental Music', 'Public', 17),
('Reggae Rhythms: Island Vibes and Positive Energy', 'Unlisted', 18),
('Alternative Rock Essentials: Modern and Classic Hits', 'Unlisted', 19),
('Smooth Jazz: Elegant and Sophisticated Sounds', 'Public', 20),
('Tropical House: Laid-Back Beats for Summer Vibes', 'Private', 21);
GO

--Video
EXEC uspInsertVideo @Title = 'My new Toyota', @Length = 640, @Views = 7425, 
@Description = 'I bought this new car and I want to talk about how good it is.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 1;
EXEC uspInsertVideo @Title = 'My workout routine', @Length = 620, @Views = 33220, 
@Description = 'Hi guys, today I will show you how I train.',
@CommentExistence = 0, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 2;
EXEC uspInsertVideo @Title = '10 Tips for Effective Time Management', @Length = 678, @Views = 123, 
@Description = 'Discover the breathtaking beauty of nature as we take you on a mesmerizing journey through lush forests, cascading waterfalls, and serene landscapes. Join us in this immersive experience that will leave you feeling connected to the wonders of the natural world.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 3;
EXEC uspInsertVideo @Title = 'Exploring the Wonders of the Amazon Rainforest', @Length = 33, @Views = 1114, 
@Description = 'Unleash your inner chef with our mouthwatering cooking tutorials! From decadent desserts to savory dishes, our step-by-step videos will guide you through the art of culinary excellence. Get ready to impress your taste buds and become a culinary aficionado!',
@CommentExistence = 1, @Type = 'Short', @Visibility = 'Public', @ChannelID = 4;
EXEC uspInsertVideo @Title = 'Mastering the Art of Photography: Composition Techniques', @Length = 1032, @Views = 52436, 
@Description = 'Embark on an adrenaline-fueled adventure with our extreme sports series! Watch as skilled athletes conquer gravity-defying stunts, epic jumps, and jaw-dropping tricks that will leave you on the edge of your seat. Don''t miss out on the thrill!',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 5;
EXEC uspInsertVideo @Title = 'The Science Behind Meditation and Its Benefits', @Length = 712, @Views = 14025, 
@Description = 'Uncover the secrets of the universe with our mind-blowing space exploration videos! Journey through galaxies, witness breathtaking phenomena, and learn about the vast mysteries that lie beyond our planet. Get ready to expand your cosmic knowledge!',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Private', @ChannelID = 6;
EXEC uspInsertVideo @Title = 'Delicious and Easy Vegan Recipes for Beginners', @Length = 978, @Views = 99472, 
@Description = 'Join us on a virtual tour of fascinating historical landmarks around the world! From ancient ruins to majestic castles, we''ll transport you through time as we explore the stories, architecture, and cultural significance of these iconic sites.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Private', @ChannelID = 7;
EXEC uspInsertVideo @Title = 'Unboxing and Review: Latest Tech Gadgets', @Length = 5, @Views = 682, 
@Description = 'Get inspired by our motivational series that will ignite your passion and propel you towards success! Through powerful interviews, personal stories, and practical tips, we''ll equip you with the tools and mindset to achieve your goals and live your best life.',
@CommentExistence = 0, @Type = 'Short', @Visibility = 'Public', @ChannelID = 8;
EXEC uspInsertVideo @Title = 'Travel Guide: Discovering the Hidden Gems of Paris', @Length = 689, @Views = 4545, 
@Description = 'Are you a fan of fashion? Step into the world of style with our fashion-forward videos! Discover the latest trends, learn innovative styling tips, and dive into the world of haute couture. Get ready to elevate your wardrobe game!',
@CommentExistence = 0, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 9;
EXEC uspInsertVideo @Title = 'Introduction to Astrophysics: Understanding the Universe', @Length = 10, @Views = 7413, 
@Description = 'Calling all music enthusiasts! Tune in to our electrifying music sessions featuring talented artists from around the globe. From soul-stirring ballads to energetic beats, we''ll introduce you to a diverse range of musical genres that will make your heart sing.',
@CommentExistence = 1, @Type = 'Short', @Visibility = 'Unlisted', @ChannelID = 10;
EXEC uspInsertVideo @Title = 'DIY Home Decor: Creative Ideas for a Stylish Space', @Length = 763, @Views = 9589, 
@Description = 'Looking to unleash your creativity? Our DIY and craft tutorials are here to inspire your inner artist! From upcycling projects to handmade gifts, we''ll guide you through fun and imaginative activities that will bring out your artistic flair.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Private', @ChannelID = 11;
EXEC uspInsertVideo @Title = 'Mindfulness Meditation: Cultivating Inner Peace and Clarity', @Length = 1098, @Views = 22401, 
@Description = 'Laugh, cry, and experience a rollercoaster of emotions with our heartwarming short films! Dive into captivating stories that explore the human condition, celebrate the power of love and friendship.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 12;
EXEC uspInsertVideo @Title = '10 Essential Tips for Successful Job Interviews', @Length = 20, @Views = 50000, 
@Description = 'Join us on a thrilling adventure as we explore hidden gems and off-the-beaten-path destinations around the world. Get ready for epic travel vlogs that will inspire your wanderlust and leave you craving your next unforgettable journey!',
@CommentExistence = 1, @Type = 'Short', @Visibility = 'Public', @ChannelID = 13;
EXEC uspInsertVideo @Title = 'Exploring Ancient Civilizations: Uncovering Lost Worlds', @Length = 15, @Views = 1424756, 
@Description = 'Calling all fitness enthusiasts! Get your heart pumping and your body moving with our high-energy workout routines. From intense HIIT sessions to calming yoga flows, we''ve got something for everyone looking to stay fit and feel fabulous.',
@CommentExistence = 0, @Type = 'Short', @Visibility = 'Unlisted', @ChannelID = 14;
EXEC uspInsertVideo @Title = 'Mastering the Art of Makeup: Pro Techniques and Tips', @Length = 1011, @Views = 96666, 
@Description = 'Discover the art of storytelling through our captivating short films series. Immerse yourself in narratives that will transport you to different worlds, tug at your heartstrings, and leave you pondering the deeper meaning of life.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Unlisted', @ChannelID = 15;
EXEC uspInsertVideo @Title = 'The Power of Positive Thinking: Transform Your Life', @Length = 60, @Views = 147854, 
@Description = 'Step into the world of technology with our in-depth reviews and tech tutorials. From the latest gadgets to cutting-edge innovations, we''ll keep you up-to-date with the ever-evolving world of technology and help you unlock its full potential.',
@CommentExistence = 1, @Type = 'Short', @Visibility = 'Public', @ChannelID = 16;
EXEC uspInsertVideo @Title = 'Delicious and Healthy Meal Prep Ideas for Busy People', @Length = 1045, @Views = 2040, 
@Description = 'Unleash your inner fashionista with our style makeover series! Join us as we revamp wardrobes, provide fashion tips, and empower individuals to embrace their unique style. Get ready to slay the fashion game!',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Private', @ChannelID = 17;
EXEC uspInsertVideo @Title = 'Unboxing and Review: Top Gaming Consoles of 2021', @Length = 923, @Views = 54074, 
@Description = 'Prepare to be amazed by our mind-bending magic tricks and illusions! From card tricks to mind reading, we''ll leave you scratching your head in wonder and questioning the very fabric of reality.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 18;
EXEC uspInsertVideo @Title = 'Travel Vlog: Adventures in the Serengeti', @Length = 1089, @Views = 924563, 
@Description = 'Let''s dive into the world of gaming and embark on epic virtual adventures together! Join us as we explore the latest game releases, provide gaming tips and tricks, and engage in friendly banter with fellow gamers from across the globe.',
@CommentExistence = 1, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 19;
EXEC uspInsertVideo @Title = 'Introduction to Quantum Mechanics: Understanding the Quantum World', @Length = 802, @Views = 407, 
@Description = 'Ready to indulge your taste buds? Join us on a culinary journey where we dive into diverse cuisines, whip up delectable recipes, and explore the rich cultural heritage behind each dish. Get ready for a feast for the senses!',
@CommentExistence = 0, @Type = 'Normal', @Visibility = 'Private', @ChannelID = 20;
EXEC uspInsertVideo @Title = 'DIY Crafts: Fun and Easy Projects for Creative Minds', @Length = 45, @Views = 958, 
@Description = 'Calling all DIY enthusiasts! Join us as we transform ordinary spaces into extraordinary masterpieces. From home renovations to creative crafts, we''ll inspire you to unleash your inner handyman and make your surroundings truly remarkable.',
@CommentExistence = 1, @Type = 'Short', @Visibility = 'Private', @ChannelID = 21;
EXEC uspInsertVideo @Title = 'Yoga and Meditation: Finding Balance and Inner Harmony', @Length = 1097, @Views = 11410, 
@Description = 'Get ready for some laugh-out-loud moments with our hilarious skits and comedy sketches! Our talented team of comedians will have you rolling on the floor with laughter as they take on relatable situations and bring humor to everyday life.',
@CommentExistence = 0, @Type = 'Normal', @Visibility = 'Public', @ChannelID = 21;
GO

--VideoPlaylist
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (1, 1);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (2, 2);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (3, 2);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (4, 2);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (5, 3);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (6, 4);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (6, 5);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (6, 6);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (7, 7);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (7, 8);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (7, 9);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (8, 9);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (9, 9);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (10, 10);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (11, 12);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (11, 13);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (12, 12);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (13, 13);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (14, 14);
INSERT INTO VideoPlaylist (VideoID, PlaylistID)
VALUES (15, 15);
GO

--VideoNotification
EXEC uspInsertVideoNotifications @VideoID = 1;
EXEC uspInsertVideoNotifications @VideoID = 2;
EXEC uspInsertVideoNotifications @VideoID = 3;
EXEC uspInsertVideoNotifications @VideoID = 4;
EXEC uspInsertVideoNotifications @VideoID = 5;
EXEC uspInsertVideoNotifications @VideoID = 6;
EXEC uspInsertVideoNotifications @VideoID = 7;
EXEC uspInsertVideoNotifications @VideoID = 8;
EXEC uspInsertVideoNotifications @VideoID = 9;
EXEC uspInsertVideoNotifications @VideoID = 10;
EXEC uspInsertVideoNotifications @VideoID = 11;
EXEC uspInsertVideoNotifications @VideoID = 12;
EXEC uspInsertVideoNotifications @VideoID = 13;
EXEC uspInsertVideoNotifications @VideoID = 14;
EXEC uspInsertVideoNotifications @VideoID = 15;
EXEC uspInsertVideoNotifications @VideoID = 16;
EXEC uspInsertVideoNotifications @VideoID = 17;
EXEC uspInsertVideoNotifications @VideoID = 18;
EXEC uspInsertVideoNotifications @VideoID = 19;
EXEC uspInsertVideoNotifications @VideoID = 20;
GO

--VideoLike
INSERT INTO VideoLike (ChannelID, VideoID)
VALUES (2, 1);
INSERT INTO VideoLike (ChannelID, VideoID)
VALUES (1, 2),
(1, 3),
(1, 4),
(1, 5),
(3, 2),
(4, 2),
(5, 2),
(6, 5),
(7, 5),
(8, 5),
(9, 6),
(10, 7),
(11, 7),
(12, 2),
(13, 1),
(14, 1),
(15, 1),
(17, 18),
(18, 19),
(19, 20);
GO

--Comment
EXEC uspInsertComment @Content = 'Wow, it looks gorgeous!', @ChannelID = 2, @VideoID = 1
EXEC uspInsertCommentReply @Content = 'Thanks, bro!', @ReplyID = 1, @ChannelID = 1
EXEC uspInsertCommentReply @Content = 'I really think I found the right car.', @ReplyID = 1, @ChannelID = 1
EXEC uspInsertComment @Content = 'Also, have you thought of repainting the car?', @ChannelID = 2, @VideoID = 1
EXEC uspInsertComment @Content = 'Wow, this video is absolutely mind-blowing! The visuals and editing are top-notch. Keep up the fantastic work!', @ChannelID = 3, @VideoID = 1
EXEC uspInsertComment @Content = 'This tutorial was a game-changer for me! I had been struggling with this concept, but you explained it so clearly. Thank you!', @ChannelID = 4, @VideoID = 1
EXEC uspInsertComment @Content = 'I can''t stop laughing! Your comedy sketches always brighten up my day. You guys are comedy geniuses!', @ChannelID = 5, @VideoID = 1
EXEC uspInsertComment @Content = 'I''ve been following your channel for a while now, and I''m constantly amazed by the quality of your content. You truly have a knack for storytelling!', @ChannelID = 6, @VideoID = 3
EXEC uspInsertComment @Content = 'This song is on repeat! Your voice is so mesmerizing, and the lyrics are incredibly powerful. Can''t wait for more music from you!', @ChannelID = 7, @VideoID = 3
EXEC uspInsertComment @Content = 'I appreciate how inclusive and diverse your channel is. It''s so refreshing to see representation and hear different perspectives. Keep up the great work!', @ChannelID = 8, @VideoID = 4
EXEC uspInsertComment @Content = 'Your travel vlogs always give me serious wanderlust. I love how you capture the essence of each place and make me feel like I''m right there with you!', @ChannelID = 9, @VideoID = 4
EXEC uspInsertComment @Content = 'I''ve learned so much from your educational videos. You have a talent for breaking down complex topics into easily understandable bites. Thank you for sharing your knowledge!', @ChannelID = 10, @VideoID = 4
EXEC uspInsertComment @Content = 'This workout routine kicked my butt, but in the best way possible! I feel so energized and motivated to keep pushing myself. Thanks for the challenge!', @ChannelID = 11, @VideoID = 5
EXEC uspInsertComment @Content = 'I''ve tried out your recipe, and it turned out absolutely delicious! Your cooking skills are on another level. Can''t wait to try more of your recipes!', @ChannelID = 12, @VideoID = 6
EXEC uspInsertComment @Content = 'This video made me smile from ear to ear! Your contagious enthusiasm and positive vibes brightened my day. Keep spreading the joy!', @ChannelID = 13, @VideoID = 6
EXEC uspInsertComment @Content = 'The cinematography in this video is absolutely stunning. It feels like I''m watching a cinematic masterpiece. You truly have an eye for beauty!', @ChannelID = 14, @VideoID = 6
EXEC uspInsertComment @Content = 'Your DIY project gave me some serious inspiration. I can''t wait to try it out myself and add my own creative twist. Thanks for sharing your genius ideas!', @ChannelID = 15, @VideoID = 6
EXEC uspInsertComment @Content = 'I''ve been binge-watching your channel for hours now, and I just can''t get enough. Your content is so addictive and entertaining. Keep up the amazing work!', @ChannelID = 16, @VideoID = 7
EXEC uspInsertComment @Content = 'Your dance moves are out of this world! You''ve got incredible talent and stage presence. I could watch you perform all day!', @ChannelID = 17, @VideoID = 7
EXEC uspInsertComment @Content = 'This video was so thought-provoking. It really got me reflecting on my own life and inspired me to make positive changes. Thank you for sharing such meaningful content!', @ChannelID = 17, @VideoID = 10
EXEC uspInsertComment @Content = 'I''ve been following your makeup tutorials for ages, and I''ve learned so many valuable tips and tricks. You''re like a magician with those brushes!', @ChannelID = 18, @VideoID = 10
EXEC uspInsertComment @Content = 'Your voice is like honey to my ears! I could listen to you sing all day long. You''ve got a gift!', @ChannelID = 18, @VideoID = 11
EXEC uspInsertComment @Content = 'Your comedy skits are pure gold! You have a natural comedic timing that never fails to make me burst out laughing. Keep shining with your humor!', @ChannelID = 19, @VideoID = 11
EXEC uspInsertComment @Content = 'Your gaming skills are absolutely legendary. I''m in awe of how smooth and flawless your gameplay is. You''re a true gaming maestro!', @ChannelID = 20, @VideoID = 12
GO
EXEC uspInsertCommentReply @Content = 'Thank you so much for your kind words! I''m thrilled to hear that my video brought a smile to your face. Your support means the world to me!', @ReplyID = 1, @ChannelID = 3
EXEC uspInsertCommentReply @Content = 'I''m glad you enjoyed the cinematography in the video! It was a labor of love. Stay tuned for more visually stunning content!', @ReplyID = 1, @ChannelID = 4
EXEC uspInsertCommentReply @Content = 'That''s fantastic! I''m so glad my DIY project inspired you. I can''t wait to see what creative twist you add to it. Best of luck!', @ReplyID = 2, @ChannelID = 5
EXEC uspInsertCommentReply @Content = 'Wow, thank you for the binge-watching session! I''m honored that you find my content addictive and entertaining. I''ll keep bringing more fun stuff your way!', @ReplyID = 2, @ChannelID = 6
EXEC uspInsertCommentReply @Content = 'Thank you so much for the kind words about my dance moves! I''m thrilled that you enjoyed watching me perform. Dance on!', @ReplyID = 10, @ChannelID = 7
EXEC uspInsertCommentReply @Content = 'I''m truly touched that my video got you reflecting and inspired you to make positive changes. It means a lot to know that my content has a meaningful impact!', @ReplyID = 20, @ChannelID = 8
EXEC uspInsertCommentReply @Content = 'I''m delighted to hear that my makeup tutorials have been helpful to you. Remember, you''re the artist, and those brushes are your magic wands!', @ReplyID = 19, @ChannelID = 9
EXEC uspInsertCommentReply @Content = 'Wow, thank you for the sweet compliment about my voice! Singing is my passion, and I''m grateful that I can share it with wonderful people like you.', @ReplyID = 18, @ChannelID = 10
EXEC uspInsertCommentReply @Content = 'I''m so glad my comedy skits bring you joy and laughter! There''s nothing better than knowing I can brighten someone''s day with my humor. Stay tuned for more laughs!', @ReplyID = 17, @ChannelID = 11
EXEC uspInsertCommentReply @Content = 'Thank you for the kind words about my gaming skills! I''ve spent countless hours honing them, and it''s rewarding to know they''re appreciated. Game on!', @ReplyID = 10, @ChannelID = 12
GO

--CommentLike
INSERT INTO CommentLike (ChannelID, CommentID)
VALUES (1, 1),
(2, 1),
(2, 4),
(1, 2),
(2, 2),
(3, 2),
(4, 3),
(4, 4),
(5, 6),
(5, 5),
(5, 7),
(6, 7),
(7, 7),
(8, 7),
(10, 8),
(9, 8),
(11, 9),
(12, 10),
(13, 11),
(14, 12),
(1, 12),
(2, 12),
(15, 13),
(5, 13),
(16, 14),
(14, 16),
(17, 17);