DELETE FROM following;
INSERT INTO following
(username1,username2)
VALUES 
('cheney','jflinn'),
('cheney','michjc'),
('jflinn','cheney'),
('jflinn','michjc'),
('michjc','cheney'),
('michjc','jag'),
('jag','michjc');

DELETE FROM users;
INSERT INTO users (username, occupation, incorporation, fullname, email, filename, isvip, password)
VALUES
('cheney', 'College Student','University of Michigan', 'Cheney Chen', 'test@umich.edu', 'e1a7c5c32973862ee15173b0259e3efdb6a391af.jpg',1,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('jflinn','Professor','University of Michigan', 'Jason Flinn','jflinn@umich.edu','505083b8b56c97429a728b68f31b0b2a089e5113.jpg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('michjc','Professor','University of Michigan', 'Michael Cafarella','michjc@umich.edu','5ecde7677b83304132cb2871516ea50032ff7a4f.jpg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('jag','Professor', 'University of Michigan', 'H.V. Jagadish','jag@umich.edu','73ab33bd357c3fd42292487b825880958c595655.jpg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('mona','College Student', 'Shanghai Jiao Tong University', 'Mona Wang','MonaWang@sjtu.edu.cn','profile1.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('chelsea','College Student',  'University of Michigan', 'Chelsea Zhang','chelseaYifei@umich.edu','profile2.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('sienna','College Student', 'Shanghai Jiao Tong University', 'Sienna Zhu','SiennaZhu@sjtu.edu.cn','profile3.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('hellen','College Student',  'University of Michigan', 'Hellen Yi','hellen@umich.edu','profile4.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('lucas','College Student', 'University of Berkeley', 'lucas Qian','lucas@berkeley.edu.cn','profile5.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('flora','College Student', 'York University', 'Flora Xu','xuFlora@york.edu.cn','profile6.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('ann','Professor', 'York University', 'Ann He','HeAnn@york.edu.cn','profile7.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('krystal','College Student', 'University of Michigan', 'krystal Hu', 'krystalHu@umich.edu', 'profile8.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('allen','College Student', 'University of Michigan', 'allen zhu', 'allenzhu@umich.edu', 'profile9.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('sunny','College Student', 'Shanghai Jiao Tong University', 'sunny zhang','sunnyzhang@sjtu.edu.cn','profile10.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('tiffany','College Student', 'Shanghai Jiao Tong University', 'tiffany zhang','tiffanyz@sjtu.edu.cn','profile11.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('marina','College Student', 'Shanghai Jiao Tong University', 'marina chen','marinachen@sjtu.edu.cn','profile12.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('paul','Professor', 'Shanghai Jiao Tong University', 'paul weng','paulweng@sjtu.edu.cn','profile14.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('manuel','Professor', 'Shanghai Jiao Tong University', 'manuel charlem','charlem@sjtu.edu.cn','profile15.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('jennie','College Student', 'University of Michigan', 'jennie zhang','jennie@sjtu.edu.cn','profile16.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('mina','College Student', 'University of Michigan', 'mina zheng','mina@sjtu.edu.cn','profile17.jpeg',1,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('amber','College Student', 'University of Michigan', 'amber liu','amberl@sjtu.edu.cn','profile18.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238'),
('Philip Jarmain','Photographer', 'Photo Studio', 'Philip Jarmain','philip@gmail.com','Philip-Jarmain.jpeg',0,'sha512$66ab5b18a9e242f1b6bf377aec511266$90f5c79c083a398a2f08814bce75bc1030576af8f2903e56ba888411f1982f6d53158ca399101aafef85d4497c5b2a5f18fd048fc9c72c3a68c1cff0b0a73238');

