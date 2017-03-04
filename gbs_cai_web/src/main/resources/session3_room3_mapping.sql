DELIMITER $$
CREATE PROCEDURE UPDATE_ROOM3(IN _TRACK1 VARCHAR(255),IN _TRACK2 VARCHAR(255),IN _TRACK3 VARCHAR(255),IN _TRACK4 VARCHAR(255),IN _TRACK5 VARCHAR(255),IN _TRACK6 VARCHAR(255),OUT RESULT INT) 
BEGIN
	DECLARE _session3 VARCHAR(255);
    DECLARE _room3 VARCHAR(255);
    DECLARE _idx INT;
  
	DECLARE _done INT DEFAULT FALSE;
    DECLARE _row_count INT DEFAULT 0;
    
    DECLARE CURSOR_ROOM CURSOR FOR SELECT idx,session3 FROM enrollment;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET _done = TRUE;
    
    OPEN CURSOR_ROOM;
    REPEAT
		FETCH CURSOR_ROOM INTO _idx,_session3;
        IF NOT _done THEN
				IF _session3 ='Accelerated App Dev' THEN SET _room3 = _TRACK1;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
                    SET _idx = _idx +1;
				ELSEIF _session3 ='BlockChain' THEN SET _room3 = _TRACK2;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
                    SET _idx = _idx +1;
                ELSEIF _session3 ='Cognitive Solution' THEN SET _room3 = _TRACK3;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
                    SET _idx = _idx +1;
                ELSEIF _session3 ='Industry 4.0' THEN SET _room3 = _TRACK4;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
                    SET _idx = _idx +1;
                ELSEIF _session3 ='Continuous Improvement' THEN SET _room3 = _TRACK5;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
                    SET _idx = _idx +1;
                ELSEIF _session3 ='Digital Foundation' THEN SET _room3 = _TRACK6;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
                    SET _idx = _idx +1;
                ELSEIF _session3='' THEN SET _room3 =NULL;
					UPDATE enrollment SET room3 = _room3 WHERE idx = _idx;
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