use netruyen;

insert into author (name) values ('Risa Tachibana');
insert into author (name) values ('Takizawa Laura');
insert into author (name) values ('Erika Momotani');
insert into author (name) values ('Megu Fujiura');
insert into author (name) values ('Tsukasa Aoi');
insert into author (name) values ('Yua Mikami');
insert into author (name) values ('Emiri Suzuhara');
insert into author (name) values ('Aizawa Minami');
insert into author (name) values ('Arina Hashimoto');
insert into author (name) values ('Eimi Fukada');

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
values('Du thuyền đẫm máu', 'Một nhóm học sinh lên du thuyền và có vài sự kiện đẫm máu xảy ra', 'du-thuyen-dam-mau.jpg', 1);
insert into comic (name, content, thumbnail, author_id) 
values('Không đời nào một nhân vật phụ như tôi có thể nổi tiếng', 'Chuyện tình giữa chàng trai nhạt nhẽo và em gái thằng bạn thân', 'khong-doi-nao-mot-nhan-vat-phu-nhu-toi.jpg', 1);
insert into comic (name, content, thumbnail, author_id) 
values('Koko wa ima kara rinri desu', 'Đến giờ học tiết đạo đức rồi', 'koko-wa-ima-kara-rinri-desu.jpg', 2);
insert into comic (name, content, thumbnail, author_id) 
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

