DELIMITER $$
CREATE PROCEDURE UPDATE_NAME(OUT RESULT INT) 
BEGIN
	DECLARE _user_id VARCHAR(255);
    DECLARE _parsing VARCHAR(255);
    DECLARE _idx INT;
  
	DECLARE _done INT DEFAULT FALSE;
    DECLARE _row_count INT DEFAULT 0;
    
    DECLARE CURSOR_ROOM CURSOR FOR SELECT idx,user_id FROM user;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET _done = TRUE;
    
    OPEN CURSOR_ROOM;
    REPEAT
		FETCH CURSOR_ROOM INTO _idx,_user_id;
        IF NOT _done THEN
				SELECT SUBSTRING_INDEX(_user_id, '@', 1) INTO _parsing;
                UPDATE USER SET user_id = _parsing WHERE idx = _idx;
                SET _idx = _idx +1;         
                         
                SET _row_count = _row_count + 1;
				SET _done = FALSE;
		END IF;
UNTIL _done END REPEAT;

CLOSE CURSOR_ROOM; 
SET RESULT = _row_count;       
END$$
DELIMITER ;

