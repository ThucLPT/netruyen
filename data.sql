use netruyen;

insert into author (name) values ('Yuna Ogura');
insert into author (name) values ('Remu Suzumori');
insert into author (name) values ('Rikka Ono');
insert into author (name) values ('Hikari Aozora');
insert into author (name) values ('Nozomi Sasaki');

insert into category (name, description) values ('Action', 'thường có nội dung về đánh nhau, bạo lực, hỗn loạn, với diễn biến nhanh');
insert into category (name, description) values ('Adult', 'đề cập đến vấn đề nhạy cảm, chỉ dành cho tuổi 17+');
insert into category (name, description) values ('Adventure', 'Thể loại phiêu lưu, mạo hiểm, thường là hành trình của các nhân vật');
insert into category (name, description) values ('Comedy', 'có nội dung trong sáng và cảm động, thường có các tình tiết gây cười, các xung đột nhẹ nhàng');
insert into category (name, description) values ('Drama', 'mang đến cho người xem những cảm xúc khác nhau: buồn bã, căng thẳng thậm chí là bi phẫn');
insert into category (name, description) values ('Ecchi', 'Thường có những tình huống nhạy cảm nhằm lôi cuốn người xem');
insert into category (name, description) values ('Fantasy', 'xuất phát từ trí tưởng tượng phong phú, từ pháp thuật đến thế giới trong mơ thậm chí là những câu chuyện thần tiên');
insert into category (name, description) values ('Harem', 'truyện tình cảm, lãng mạn mà trong đó, nhiều nhân vật nữ thích một nam nhân vật chính');
insert into category (name, description) values ('Horror', 'làm cho bạn kinh hãi, khiếp sợ, ghê tởm, run rẩy, có thể gây shock - một thể loại không dành cho người yếu tim');
insert into category (name, description) values ('Romance', 'Thường là những câu chuyện về tình yêu, tình cảm lãng mạn, kích thích trí tưởng tượng của bạn về tình yêu');


insert into comic (name, content, thumbnail, author_id) 
values ('One Piece', 'Ra mắt vào năm 1997, One Piece vẫn luôn được xem là bộ truyện tranh nổi tiếng nhất mọi thời đại. Với 102 tập truyện và 490 triệu bản manga bán ra, khó có series nào có thể bắt kịp được One Piece.', 'op.jpg', 1);
insert into comic (name, content, thumbnail, author_id) 
values ('Golgo 13', 'Golgo 13 có tổng cộng hơn 200 tập, khiến nó trở thành một trong những bộ truyện lớn nhất trong lịch sử manga. Được ra mắt lần đầu vào năm 1968, Golgo 13 tiếp tục xuất bản trên tạp chí Seinen, Big Comic.', 'golgo.jpg', 1);
insert into comic (name, content, thumbnail, author_id) 
values ('Dragon Ball', 'Khi nói đến thể loại Shonen thì fan manga chân chính không thể không nhắc đến bộ manga này. Dragon Ball bắt đầu như một manga hành động, không có nhiều cuộc chiến khốc liệt. Nhưng theo thời gian, câu chuyện phát triển thành manga Shonen và tập trung vào chiến đấu hơn.', 'db.jpg', 2);
insert into comic (name, content, thumbnail, author_id) 
<<<<<<< HEAD
values('Miseru mitsumeru futarid ake', 'Cô gái tóc trắng', 'miseru-mitsumeru-futari-dake.jpg', 3);
insert into comic (name, content, thumbnail, author_id) 
values('Oujo denka wa oikari no you', 'Câu chuyện học đường đầy rẫy drama', 'oujo-denka-wa-oikari-no-you.jpg', 4);
insert into comic (name, content, thumbnail, author_id) 
values('Kẻ được triệu hồi đến thế giới giả tưởng vô số lần', 'Isekai vui ve', 'ke-duoc-trieu-hoi-toi-the-gioi-gia-tuong-vo-so-lan.jpg', 5);
insert into comic (name, content, thumbnail, author_id) 
values('Kumo desu ka nani ka daily life of the four spider sisters', 'Isekai thành nhện', 'kumo-desu-ka-nani-ka-daily-life-of-the-four-spider-sisters.jpg', 6);
insert into comic (name, content, thumbnail, author_id) 
values('Komori-san trầm lặng và oobayashi-kun ồn ào', 'Một con nói bé một thằng nói to', 'komori-san-tram-lang-va-oobayashi-kun-on-ao.jpg', 7);


insert into comic_category(comic_id, category_id) value(1, 1);
insert into comic_category(comic_id, category_id) value(1, 2);
insert into comic_category(comic_id, category_id) value(2, 3);
insert into comic_category(comic_id, category_id) value(2, 4);
insert into comic_category(comic_id, category_id) value(3, 5);
insert into comic_category(comic_id, category_id) value(3, 6);
insert into comic_category(comic_id, category_id) value(4, 7);
insert into comic_category(comic_id, category_id) value(4, 8);
insert into comic_category(comic_id, category_id) value(5, 9);
insert into comic_category(comic_id, category_id) value(5, 10);
insert into comic_category(comic_id, category_id) value(6, 1);
insert into comic_category(comic_id, category_id) value(6, 3);
insert into comic_category(comic_id, category_id) value(7, 5);
insert into comic_category(comic_id, category_id) value(7, 7);
insert into comic_category(comic_id, category_id) value(8, 9);
insert into comic_category(comic_id, category_id) value(8, 10);


insert into chapter(name, description, source, comic_id) value('Chap 1', '', 'du-thuyen-dam-mau_Chap1-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 2', '', 'du-thuyen-dam-mau_Chap2-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 3', '', 'du-thuyen-dam-mau_Chap3-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 4', '', 'du-thuyen-dam-mau_Chap4-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 5', '', 'du-thuyen-dam-mau_Chap5-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 6', '', 'du-thuyen-dam-mau_Chap6-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 7', '', 'du-thuyen-dam-mau_Chap7-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 8', '', 'du-thuyen-dam-mau_Chap8-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 9', '', 'du-thuyen-dam-mau_Chap9-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 10', '', 'du-thuyen-dam-mau_Chap10-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 11', '', 'du-thuyen-dam-mau_Chap11-0.txt', 1);
insert into chapter(name, description, source, comic_id) value('Chap 1', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap1-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 2', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap2-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 3', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap3-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 4', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap4-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 5', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap5-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 6', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap6-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 7', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap7-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 8', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap8-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 9', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap9-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 10', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap10-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 11', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap11-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 12', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap12-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 13', '', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi-co-the-noi-tieng-nhi_Chap13-0.txt', 2);
insert into chapter(name, description, source, comic_id) value('Chap 7', '', 'koko-wa-ima-kara-rinri-desu_Chap7-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 8', '', 'koko-wa-ima-kara-rinri-desu_Chap8-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 9', '', 'koko-wa-ima-kara-rinri-desu_Chap9-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 10', '', 'koko-wa-ima-kara-rinri-desu_Chap10-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 11', '', 'koko-wa-ima-kara-rinri-desu_Chap11-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 12', '', 'koko-wa-ima-kara-rinri-desu_Chap12-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 13', '', 'koko-wa-ima-kara-rinri-desu_Chap13-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 14', '', 'koko-wa-ima-kara-rinri-desu_Chap14-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 15', '', 'koko-wa-ima-kara-rinri-desu_Chap15-0.txt', 3);
insert into chapter(name, description, source, comic_id) value('Chap 1', '', 'miseru-mitsumeru-futari-dake_Chap1-0.txt', 4);
insert into chapter(name, description, source, comic_id) value('Chap 1', '', 'ojou-denka-wa-oikari-no-you-desu_Chap1-0.txt', 5);
insert into chapter(name, description, source, comic_id) value('Chap 1-1', '', 'ke-duoc-trieu-hoi-toi-the-gioi-gia-tuong-vo-so-lan_Chap1-1.txt', 6);
insert into chapter(name, description, source, comic_id) value('Chap 1', '', 'kumo-desu-ka-nani-ka-daily-life-of-the-four-spider-sisters_Chap1-0.txt', 7);
insert into chapter(name, description, source, comic_id) value('Chap 1', '', 'komori-san-tram-lang-va-oobayashi-kun-on-ao_Chap1-0.txt', 8);

=======
values ('Conan', 'Thám Tử Lừng Danh Conan là một trong những manga lâu đời nhất trong làng truyện tranh Nhật Bản. Bộ truyện đã trở thành manga kinh điển của Nhật Bản, mỗi tập mới xoay quanh một vụ án mà thám tử bị teo nhỏ Shinichi Kudo phải giải quyết.', 'conan.jpg', 2);
insert into comic (name, content, thumbnail, author_id) 
values ('Doraemon', 'Doraemon của tác giả Fujiko F. Fujio là một bộ truyện tranh "quốc dân", không chỉ quen thuộc với giới trẻ Nhật Bản mà cũng được độc giả quốc tế vô cùng ưa chuộng.', 'doraemon.jpg', 3);
insert into comic (name, content, thumbnail, author_id) 
values ('Naruto', 'Trải qua 15 năm xuất bản, Naruto đã trở thành một trong những series manga nổi tiếng nhất và vẫn tiếp tục duy trì vị trí đó. Được mệnh danh là một trong "bộ ba Shonen Manga", Naruto đã có hơn 250 triệu bản bán ra và con số này vẫn chưa có dấu hiệu dừng lại.', 'naruto.jpg', 3);
insert into comic (name, content, thumbnail, author_id) 
values ('Slam Dunk', 'Slam Dunk là một trong những bộ truyện tranh kinh điển của Nhật Bản, được rất nhiều độc giả biết đến và yêu thích. Theo chân Hanamichi Sakuragi, Slam Dunk kể về hành trình của cậu và đội bóng rổ của trường Shohoku, với khao khát trở thành đội tuyển bóng rổ xuất sắc nhất Nhật Bản.', 'sd.jpg', 4);
insert into comic (name, content, thumbnail, author_id) 
values ('KochiKame', 'Bên cạnh các series đình đám của Shonen Jump, còn có series ít biết hơn nhưng cũng không kém là KochiKame: Tokyo Beat Cops. Ngoài ra, bộ truyện được xuất bản từ năm 1976 đến năm 2016, giúp nó trở thành một trong những bộ truyện tranh dài nhất mọi thời đại.', 'kk.jpg', 4);
insert into comic (name, content, thumbnail, author_id) 
values ('Demon Slayer', 'Ngôi sao mới nổi Demon Slayer cũng trở thành cái tên được nhiều người quan tâm những năm qua. Dù có tuổi đời ít hơn các manga khác rất nhiều, Demon Slayer vẫn lọt vào top manga bán chạy nhất mọi thời đại.', 'ds.jpg', 5);
insert into comic (name, content, thumbnail, author_id) 
values ('Shin-Chan', 'Một bộ truyện tranh gắn với tuổi thơ khác của độc giả Việt là Shin-Chan Cậu Bé Bút Chì. Shin-Chan Cậu Bé Bút Chì hướng đến đối tượng độc giả là trẻ em, nhưng điều đó không ngăn được cả những bạn đọc lớn tuổi hơn yêu thích bộ truyện tranh này.', 'shin.jpg', 5);

insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 1);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 1);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 2);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 2);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 3);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 3);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 4);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 4);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 5);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 5);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 6);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 6);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 7);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 7);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 8);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 8);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 9);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 9);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 10);
insert into chapter (name, description, source, comic_id) 
values ('Chapter 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam convallis libero eu nisi lacinia, sit amet ultrices ante fringilla. Proin porttitor libero lorem, dapibus sagittis diam iaculis quis.', '', 10);

insert into comic_category (comic_id, category_id) values (1, 1);
insert into comic_category (comic_id, category_id) values (1, 2);
insert into comic_category (comic_id, category_id) values (2, 2);
insert into comic_category (comic_id, category_id) values (2, 3);
insert into comic_category (comic_id, category_id) values (3, 3);
insert into comic_category (comic_id, category_id) values (3, 4);
insert into comic_category (comic_id, category_id) values (4, 4);
insert into comic_category (comic_id, category_id) values (4, 5);
insert into comic_category (comic_id, category_id) values (5, 5);
insert into comic_category (comic_id, category_id) values (5, 6);
insert into comic_category (comic_id, category_id) values (6, 6);
insert into comic_category (comic_id, category_id) values (6, 7);
insert into comic_category (comic_id, category_id) values (7, 7);
insert into comic_category (comic_id, category_id) values (7, 8);
insert into comic_category (comic_id, category_id) values (8, 8);
insert into comic_category (comic_id, category_id) values (8, 9);
insert into comic_category (comic_id, category_id) values (9, 9);
insert into comic_category (comic_id, category_id) values (9, 10);
insert into comic_category (comic_id, category_id) values (10, 10);
insert into comic_category (comic_id, category_id) values (10, 1);
>>>>>>> 451d9ba3a12c3dfbba7f6adc61f6cf1637d3799f
