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
values('Miseru mitsumeru futarid ake', 'Cô gái tóc trắng', 'miseru-mitsumeru-futari-dake.jpg', 2);
insert into comic (name, content, thumbnail, author_id) 
values('Oujo denka wa oikari no you', 'Câu chuyện học đường đầy rẫy drama', 'oujo-denka-wa-oikari-no-you.jpg', 3);
