drop database if exists adlister_db;
create database adlister_db;
use adlister_db;

-- users table
-- user id (primary key), username, email, password
DROP TABLE if exists users;
CREATE TABLE users(
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  username varchar(50) UNIQUE NOT NULL,
  email varchar(50) UNIQUE NOT NULL,
  password varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- ads table
-- id (primary key), title, description, date_created, user_id to match user that created
DROP TABLE if exists ads;
create TABLE ads(
  id int unsigned not null auto_increment,
  title varchar(100) not null,
  description text,
  date_created datetime,
  user_id int unsigned not null,
  primary key (id),
  foreign key (user_id) references users(id)
);

-- categories table
-- holds list of possible categories and their id's
-- category id and catergory name (desc)
drop table if exists categories;
create table categories (
  category_id int unsigned not null auto_increment,
  category_desc varchar (50) not null,
  primary key (category_id)
);

-- categories / ads joiner table
-- links each ad to its categories
-- foreign keys ad_id and category_id
drop table if exists ad_categories;
create table ad_categories(
  category_id int unsigned not null,
  ad_id int unsigned not null,
  foreign key (ad_id) references ads(ad_id),
  foreign key (category_id) references categories(category_id)
);
