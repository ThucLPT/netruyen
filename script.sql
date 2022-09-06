CREATE SCHEMA netruyen ;
USE netruyen ;

-- -----------------------------------------------------
-- Table `netruyen`.`user`
-- -----------------------------------------------------
CREATE TABLE user (
	id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(45) NOT NULL,
    password VARCHAR(95) NOT NULL,
    PRIMARY KEY (id));
INSERT INTO user (email, password) values ('admin@gmail.com', '$2a$12$iOlIOmmUjs4RLtr3nFjVqu59Ww85Us7oDLEJSq2uJqqAOO4JcMWFW');


-- -----------------------------------------------------
-- Table `netruyen`.`author`
-- -----------------------------------------------------
CREATE TABLE author (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  PRIMARY KEY (id));


-- -----------------------------------------------------
-- Table `netruyen`.`category`
-- -----------------------------------------------------
CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  description TEXT NOT NULL,
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
  views INT NOT NULL DEFAULT 0,
  content TEXT NOT NULL,
  thumbnail VARCHAR(45) NOT NULL,
  author_id INT NOT NULL,
  status_id INT NOT NULL DEFAULT 1,
  PRIMARY KEY (id),
  CONSTRAINT fk_comic_author1
    FOREIGN KEY (author_id)
    REFERENCES author (id),
  CONSTRAINT fk_comic_status1
    FOREIGN KEY (status_id)
    REFERENCES status (id));


-- -----------------------------------------------------
-- Table `netruyen`.`chapter`
-- -----------------------------------------------------
CREATE TABLE chapter (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(45) NOT NULL,
  description TEXT NOT NULL,
  upload_date DATETIME NOT NULL DEFAULT NOW(),
  source VARCHAR(45) NOT NULL,
  comic_id INT NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_chapter_comic1
    FOREIGN KEY (comic_id)
    REFERENCES comic (id));


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


DELIMITER //
create procedure search_comic(keyword varchar(45))
begin
	select c.name, c.views, c.thumbnail,  group_concat(ch.name separator ', ') Chuong
    from comic c 
    join chapter ch on ch.comic_id = c.id 
    join author au on au.id = c.author_id
    where locate(keyword, c.name) > 0 or locate(keyword, au.name) > 0
    group by c.id;
end//
DELIMITER ;