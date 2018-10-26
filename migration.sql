drop database if exists adlister_db;
create database adlister_db;
use adlister_db;

DROP TABLE if exists users;
CREATE TABLE users(
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  username varchar(50) UNIQUE NOT NULL,
  email varchar(50) UNIQUE NOT NULL,
  password varchar(255) NOT NULL,
PRIMARY KEY (id)
);

DROP TABLE if exists ads;
CREATE TABLE ads(
  id int unsigned not null auto_increment,
  title varchar(100) not null,
  description text,
  date_created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  user_id int unsigned not null,
  primary key (id),
  foreign key (user_id) references users(id)
    on delete cascade
);

drop table if exists categories;
create table categories (
  id int unsigned not null auto_increment,
  name varchar (50) not null,
  primary key (id)
);

drop table if exists category_ad;
create table category_ad (
  category_id int unsigned not null,
  ad_id int unsigned not null,
  foreign key (ad_id) references ads(id)
    on delete cascade,
  foreign key (category_id) references categories(id)
    on delete cascade
);