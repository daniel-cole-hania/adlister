use adlister_db;


INSERT INTO users (username, email, password)
VALUES ('snoopy', 'snoopy@peanuts.com', '$2a$12$eJrHxpzBprq6IbLUKHtxCeYZebbeIvLJq3URHm974N2TXZjSQSqhu'),
('linus', 'linus@peanuts.com', '$2a$12$Izgh3O4YEGcNCS4KOyF0cOZPGXV67mmQrPLDT3xk911VZBYo40Zka'),
('sally', 'sally@peanuts.com', '$2a$12$oApHPUSERYlfwiGDt5p14eiCSBHcoj7mjPSXs34rD24FIWc3qNLAO'),
('franklin', 'franklin@peanuts.com', '$2a$12$i4V4luOk7to19QWhhSJemOYJqqdDnAJPL8hJT5/l8WdcVsf4j.OYO'),
('marcie', 'marcie@peanuts.com', '$2a$12$1.M.y58AetPgLod4VPL5beXZ2a4vkWHwfWlQsya2zBGdByr393XXy'),
('peppermint_patty', 'peppermint_patty@peanuts.com', '$2a$12$WS0Khh2SoHYxxNc9dPGgyOzn7MhWkZOf0l8P2XUglr4S7XWqYw5GK'),
('pigpen', 'pigpen@peanuts.com', '$2a$12$j2MfR9XTmRnxAJ.c6Ysyeea3yYjtUVod0RzPkALBkNz6Unt4HgMa6'),
('schroeder', 'schroeder@peanuts.com', '$2a$12$/yBb1hhIVX39N/Ecce4LS.KGqWAjM7u/g4no.bOpWnv1dbdHUqc7a'),
('lucy ', 'lucy@peanuts.com', '$2a$12$6Ef3hNnMvx5uJvo6FR7L1eszXJe1TKpN4xLP7AW1YaJ9YLj5o5p7m');

INSERT INTO ads (title, description, date_created, user_id)
VALUES ('Great American Novel', 'Pre-order your copy of the next Great American Novel by the one and only Snoopy', '2018-10-22 08:44:00', 1),
       ('used Christmas Tree', 'My brother bought this ugly tree and I need it gone. Free to any home, good or bad.', '2018-10-22 09:14:00', 3),
       ('In need of Piano lessons', 'Good afternoon. For reasons I would rather not say, I need to learn any Beethoven song for the piano, and I need to learn before the end of Thursday night. Serious applicants only please. Thank you.', '2018-10-23 04:06:00', 9),
       ('Baseball Lessons', 'Does your game lack skill? GREAT because mine doesn''t! I will help you improve your game skills, but only if you do my math homework.', '2018-10-23 07:41:00', 6 ),
       ('Psychiatric Help', 'My psychiatric booth is booming with business, but I could always use more experience. Stop by any time the doctor is in and I will fix all of your problems. Listen to me and your life will be sweet.', '2018-10-23 12:05:00', 9),
       ('Need binoculars', 'The Great Pumpkin will be here next week, and I need binoculars to keep an eye out for him.', '2018-10-23 07:38:00', 2),
       ('Suitcase for sale', 'My dumb brother won''t let me take his room, and I need to sell this suitcase so I can buy my sweet babboo his binoculars', '2018-10-24 06:11:00', 3),
       ('Sand Castle for Sale', 'I built this sand castle with my friend Charlie Brown!', '2018-10-24 11:15:00', 4),
       ('Baseball glove', 'Somebody buy this baseball glove. There are other things I would rather own. Do it now!', '2018-10-24 08:41:00', 9),
       ('Air Travel', 'Now that I am a licensed pilot, I can take one passenger anywhere in the world they want to go', '2018-10-24 08:44:00', 1),
       ('Need mud pies by Violet', 'Someone please convince Violet to make some more mud pies', '2018-10-24 09:25:00', 7),
       ('Book for sale', 'I purchased this book for sir and she does not care to read it. She is egregiously bad with reading.', '2018-10-25 11:56:00', 5),
       ('Bowl for Dinner', 'Need a second bowl for dinner. Be sure to include the food in the bowl', '2018-10-25 01:44:00', 1),
       ('Equipment', 'This is my old hockey stick that is still in good condition.', '2018-10-25 04:04:00', 4),
       ('Need pie', 'Beethoven''s birthday is coming up in a few months, and I need a cake to celebrate the holiday.', '2018-10-25 07:44:00', 8),
       ('Need throw', 'Somebody take my brother''s blanket I don''t care what you do with it just take it away!', '2018-10-25 08:22:00', 9),
       ('Never worn dress', 'Sir was given a dress, and she does not like it. She has asked me to list it for sale.', '2018-10-26 07:46:00', 5),
       ('Autograph for sale', 'My family is famous so I have signed a copy of our book called the Phonebook', '2018-10-26 10:22:00',  3),
       ('Baseballs for sale', 'I am tired of getting hit in the head with baseballs, so I am selling all of the baseballs.', '2018-10-26 10:49:00',  9),
       ('Throw', 'I need an exact replica of Linus'' blanket', '2018-10-26 12:49:00', 1);

INSERT INTO categories (name)
VALUES ('Free'),
       ('For Sale'),
       ('Services'),
       ('Home'),
       ('Hobbies'),
       ('Jobs');

INSERT INTO category_ad (category_id, ad_id)
VALUES (2, 1),
       (2, 1),
       (1, 2),
       (4, 2),
       (3, 3),
       (3, 4),
       (5, 4),
       (3, 5),
       (2, 5),
       (5, 6),
       (4, 7),
       (2, 7),
       (2, 8),
       (2, 9),
       (5, 9),
       (3, 10),
       (3, 11),
       (2, 12),
       (2, 12),
       (2, 13),
       (2, 14),
       (5, 14),
       (2, 15),
       (1, 16),
       (4, 16),
       (2, 17),
       (2, 17),
       (2, 18),
       (2, 18),
       (2, 19),
       (5, 19),
       (4, 20);

