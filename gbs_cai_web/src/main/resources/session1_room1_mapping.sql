DELIMITER $$
CREATE PROCEDURE UPDATE_ROOM1(IN _TRACK1 VARCHAR(255),IN _TRACK2 VARCHAR(255),IN _TRACK3 VARCHAR(255),IN _TRACK4 VARCHAR(255),IN _TRACK5 VARCHAR(255),IN _TRACK6 VARCHAR(255),OUT RESULT INT) 
BEGIN
	DECLARE _session1 VARCHAR(255);
    DECLARE _room1 VARCHAR(255);
    DECLARE _idx INT;
        
	DECLARE _done INT DEFAULT FALSE;
    DECLARE _row_count INT DEFAULT 0;
    
    DECLARE CURSOR_ROOM CURSOR FOR SELECT idx,session1 FROM enrollment;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET _done = TRUE;
    
    OPEN CURSOR_ROOM;
    REPEAT
		FETCH CURSOR_ROOM INTO _idx,_session1;
        IF NOT _done THEN
				IF _session1 = 'Bluemix' THEN SET _room1 = _TRACK1;
					UPDATE ENROLLMENT e SET e.room1 = _room1 WHERE idx = _idx;
                    SET _idx = _idx +1;
					
				ELSEIF _session1 ='Watson Cases, IOT' THEN SET _room1 = _TRACK2;
					UPDATE ENROLLMENT SET room1 = _room1 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session1 ='Cloud App Service' THEN SET _room1 = _TRACK3;
					UPDATE ENROLLMENT SET room1 = _room1 WHERE idx = _idx;
					 SET _idx = _idx +1;
                ELSEIF _session1 ='Lotte Watson' THEN SET _room1 = _TRACK4;
					UPDATE ENROLLMENT SET room1 = _room1 WHERE idx = _idx;
					 SET _idx = _idx +1;
                ELSEIF _session1 ='Mine the Base, CIF' THEN SET _room1 = _TRACK5;
					UPDATE ENROLLMENT SET room1 = _room1 WHERE idx = _idx;
					 SET _idx = _idx +1;
                ELSEIF _session1 ='Mobile@Scale' THEN SET _room1 = _TRACK6;
					UPDATE ENROLLMENT SET room1 = _room1 WHERE idx = _idx;
					 SET _idx = _idx +1;
                ELSEIF _session1 = '' THEN SET _room1 = NULL; 
					UPDATE ENROLLMENT SET room1 = _room1 WHERE idx = _idx;
					SET _idx = _idx +1;
				END IF;
                
                SET _row_count = _row_count + 1;
				SET _done = FALSE;
                
		END IF;
UNTIL _done END REPEAT;

CLOSE CURSOR_ROOM; 

SET RESULT = _row_count;       
END$$
DELIMITER ;