CREATE TABLE CLASS (
   class_id		VARCHAR(255) not null,
   title		VARCHAR(255) NOT NULL,
   room			VARCHAR(255) NOT NULL,
   speaker		VARCHAR(255) NOT NULL,
   session		VARCHAR(10)  NOT NULL,
   capacity		INT(3)  NOT NULL,
   detail		MEDIUMTEXT,
   speaker_img	VARCHAR(255),
   attend_code VARCHAR(225),
   PRIMARY KEY(class_id),
   UNIQUE KEY(title, room)
);


#ENROLLMENT TABLE
CREATE TABLE ENROLLMENT (
	idx 		INT(11) not null auto_increment,
	user_id		 VARCHAR(255) not null,
    morning_room VARCHAR(255),	
	session1	VARCHAR(255),
    session2	VARCHAR(255),
    session3	VARCHAR(255),
	room1		VARCHAR(255),
    room2		VARCHAR(255),
    room3		VARCHAR(255),
	PRIMARY KEY(IDX)
);


#USER TABLE
#type[Learner, Speaker]
CREATE TABLE USER (
	user_id		VARCHAR(255) not null  	,
	user_nm		VARCHAR(255) NOT NULL  	,	
	password	VARCHAR(255) NOT NULL	,
	type		VARCHAR(2)	 DEFAULT 'Learner',
	PRIMARY KEY(user_id)
);

INSERT INTO USER (user_id, user_nm, password) VALUES ('hyejshin', '신혜정', '055194');
#ATTEND TABLE
CREATE TABLE ATTEND (
	user_id		VARCHAR(255) not null  	,
	class_id	VARCHAR(255) NOT NULL  	,	
	attend_cod	VARCHAR(255) NOT NULL	,
    PRIMARY KEY(user_id, class_id)
);


#BOARD TABLE
CREATE TABLE BOARD (
	idx 			INT(11) not null auto_increment,
	board_id		VARCHAR(255) not null  	,
	class_id		VARCHAR(255) NOT NULL  	,	
	user_id			VARCHAR(255) NOT NULL	,
	detail			MEDIUMTEXT	 NOT NULL	,
	type			VARCHAR(2)   NOT NULL	,
	step			INT(2) 		 DEFAULT 0,
	indent			INT(2)		 DEFAULT 0,
	PRIMARY KEY(IDX)
);