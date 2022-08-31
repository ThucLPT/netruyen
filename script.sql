CREATE SCHEMA netruyen ;
USE netruyen ;

-- -----------------------------------------------------
-- Table `netruyen`.`author`
-- -----------------------------------------------------
CREATE TABLE author (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
insert into author(name) value("Fokuda");
insert into author(name) value("Alic");
insert into author(name) value("Alexender");

-- -----------------------------------------------------
-- Table `netruyen`.`category`
-- -----------------------------------------------------
CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));


-- -----------------------------------------------------
-- Table `netruyen`.`status`
-- -----------------------------------------------------
CREATE TABLE status (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));
INSERT INTO status (name) VALUES ('incomplete');
INSERT INTO status (name) VALUES ('complete');


-- -----------------------------------------------------
-- Table `netruyen`.`comic`
-- -----------------------------------------------------
CREATE TABLE comic (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  views INT NOT NULL,
  content VARCHAR(45) NOT NULL,
  thumbnail VARCHAR(45) NOT NULL,
  author_id INT NOT NULL,
  status_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_comic_author1
    FOREIGN KEY (author_id)
    REFERENCES author (id),
  CONSTRAINT fk_comic_status1
    FOREIGN KEY (status_id)
    REFERENCES status (id));
insert comic(name, views, content, thumbnail, author_id, status_id) value ("Doreamon", 112, "Mèo máy đến từ tương lai", "", 1, 2);
insert comic(name, views, content, thumbnail, author_id, status_id) value ("Mèo và chuột", 111, "Mào bắt chuột", "", 1, 2);
insert comic(name, views, content, thumbnail, author_id, status_id) value ("Chú bé bút chì", 200, "Chú bé và cây bút chì", "", 2, 1);
insert comic(name, views, content, thumbnail, author_id, status_id) value ("Sakura thủ lĩnh thẻ bài", 100, "Một cô bé chơi bài", "", 3, 1);
insert comic(name, views, content, thumbnail, author_id, status_id) value ("Thủy thủ mặt trăng", 112, "Những cô gái bay vào mặt trăng", "", 3, 2);

DELIMITER //
create procedure get_comics_by_name(name_ varchar(45))
begin
	select c.name, c.views, c.thumbnail,  group_concat(ch.name separator ', ') Chuong
    from comic c 
    join chapter ch on ch.comic_id = c.id 
    where locate(name_, c.name) > 0
    group by c.id;
end//
DELIMITER ;

DELIMITER //
create procedure get_comics_by_author_name(name_ varchar(45))
begin
	select c.name, c.views, c.thumbnail, group_concat(ch.name separator ', ') Chuong
	from comic c 
    join chapter ch on ch.comic_id = c.id 
	join author au on au.id = c.author_id 
	where au.name= name_
    group by c.id;
end//
DELIMITER ;

call get_comics_by_name("M");
call get_comics_by_author_name("fokuda");

-- -----------------------------------------------------
-- Table `netruyen`.`chapter`
-- -----------------------------------------------------
CREATE TABLE chapter (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  description VARCHAR(45) NOT NULL,
  upload_date DATETIME DEFAULT NOW(),
  source VARCHAR(45) NOT NULL,
  comic_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_chapter_comic1
    FOREIGN KEY (comic_id)
    REFERENCES comic (id));
insert into chapter(name, description, source, comic_id) value("Chap 1", "", "", 1);
insert into chapter(name, description, source, comic_id) value("Chap 2", "", "", 1);
insert into chapter(name, description, source, comic_id) value("Chap 3", "", "", 1);
insert into chapter(name, description, source, comic_id) value("Chap 1", "", "", 2);
insert into chapter(name, description, source, comic_id) value("Chap 2", "", "", 2);
insert into chapter(name, description, source, comic_id) value("Chap 3", "", "", 2);
insert into chapter(name, description, source, comic_id) value("Chap 1", "", "", 3);
insert into chapter(name, description, source, comic_id) value("Chap 2", "", "", 3);
insert into chapter(name, description, source, comic_id) value("Chap 3", "", "", 3);
insert into chapter(name, description, source, comic_id) value("Chap 4", "", "", 3);
insert into chapter(name, description, source, comic_id) value("Chap 1", "", "", 4);
insert into chapter(name, description, source, comic_id) value("Chap 1", "", "", 5);
-- -----------------------------------------------------
-- Table `netruyen`.`comic_category`
-- -----------------------------------------------------
CREATE TABLE comic_category (
  comic_id INT NOT NULL,
  category_id INT NOT NULL,
  PRIMARY KEY (comic_id, category_id),
  CONSTRAINT fk_comic_has_category_category1
    FOREIGN KEY (category_id)
    REFERENCES category (id),
  CONSTRAINT fk_comic_has_category_comic
    FOREIGN KEY (comic_id)
    REFERENCES comic (id));