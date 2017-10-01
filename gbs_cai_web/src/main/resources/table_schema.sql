CREATE TABLE CLASS (
   idx			INT(10) NOT NULL auto_increment,
   class_id		VARCHAR(100) NOT NULL,
   title		VARCHAR(100) NOT NULL,
   room			VARCHAR(100) NOT NULL,
   speaker		VARCHAR(100) NOT NULL,
   session		VARCHAR(100)  NOT NULL,
   capacity		INT(3) DEFAULT 0,
   detail		MEDIUMTEXT,
   speaker_img	VARCHAR(100),
   attend_code  VARCHAR(100),
   PRIMARY KEY(idx),
   UNIQUE KEY(class_id),
   UNIQUE KEY(title, session)
);


#ENROLLMENT TABLE
CREATE TABLE ENROLLMENT (
	idx 		 INT(10) NOT NULL auto_increment,
	user_id		 VARCHAR(100) NOT NULL,
    morning_room VARCHAR(100),	
	session1	 VARCHAR(100),
    session2	 VARCHAR(100),
    session3	 VARCHAR(100),
	room1		 VARCHAR(100),
    room2		 VARCHAR(100),
    room3		 VARCHAR(100),
    PRIMARY KEY(idx),
	UNIQUE KEY(user_id)
);


#USER TABLE
#type[Learner, Speaker]
CREATE TABLE USER (
	idx 		INT(10) NOT NULL auto_increment,
	user_id		VARCHAR(100) NOT NULL,
	user_nm		VARCHAR(100) NOT NULL,
	type		VARCHAR(100) DEFAULT 'Learner',
	PRIMARY KEY(idx),
    UNIQUE KEY(user_id)
);


#ATTEND TABLE
CREATE TABLE ATTEND (
	idx 		INT(10) NOT NULL auto_increment,
	user_id		VARCHAR(100) NOT NULL,
	class_id	VARCHAR(100) NOT NULL,	
	attend_code	VARCHAR(100) NOT NULL,
    PRIMARY KEY(idx),
    UNIQUE KEY(user_id, class_id)
);


#BOARD TABLE
CREATE TABLE BOARD (
	idx 			INT(10) NOT NULL auto_increment,
	board_id		VARCHAR(100) NOT NULL,
	class_id		VARCHAR(100) NOT NULL,	
	user_id			VARCHAR(100) NOT NULL,
	detail			MEDIUMTEXT	 NOT NULL,
	type			VARCHAR(10)   NOT NULL,
	step			INT(3) 		 DEFAULT 0,
	indent			INT(3)		 DEFAULT 0,
	PRIMARY KEY(idx)
);


#NOTICE TABLE
CREATE TABLE NOTICE (
	idx 			INT(10) NOT NULL auto_increment,
	content			MEDIUMTEXT NOT NULL,
	PRIMARY KEY(idx)
);



## Board Schema 1차 변경 ##
CREATE TABLE `board` (
  `idx` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `crt_dttm` varchar(45) NOT NULL,
  `mod_dttm` varchar(45) NOT NULL,
  `detail` mediumtext NOT NULL,
  `type` varchar(45) DEFAULT 'DETAIL',
   PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

## File Table Schema
CREATE TABLE `file` (
  `idx` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` varchar(45) NOT NULL,
  `file_nm` varchar(45) NOT NULL,
  `file_size` varchar(45) NOT NULL,
  `crt_dttm` varchar(45) NOT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
