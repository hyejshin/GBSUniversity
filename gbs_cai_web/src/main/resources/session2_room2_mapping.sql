DELIMITER $$
CREATE PROCEDURE UPDATE_ROOM2(IN _TRACK1 VARCHAR(255),IN _TRACK2 VARCHAR(255),IN _TRACK3 VARCHAR(255),IN _TRACK4 VARCHAR(255),IN _TRACK5 VARCHAR(255),IN _TRACK6 VARCHAR(255),OUT RESULT INT) 
BEGIN
	DECLARE _session2 VARCHAR(255);
    DECLARE _room2 VARCHAR(255);
    DECLARE _idx INT;
        
	DECLARE _done INT DEFAULT FALSE;
    DECLARE _row_count INT DEFAULT 0;
    
    DECLARE CURSOR_ROOM CURSOR FOR SELECT idx,session2 FROM enrollment;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET _done = TRUE;
    
    OPEN CURSOR_ROOM;
    REPEAT
		FETCH CURSOR_ROOM INTO _idx,_session2;
        IF NOT _done THEN
				IF _session2 = 'BlockChain' THEN SET _room2 = _TRACK1;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session2 ='Bluemix' THEN SET _room2 = _TRACK2;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session2 ='CIO Advisory' THEN SET _room2 = _TRACK3;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session2 ='LEAN/Kaban' THEN SET _room2 = _TRACK4;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session2 ='CAI Offering' THEN SET _room2 = _TRACK5;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session2 ='Mobile@Scale' THEN SET _room2 = _TRACK6;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
					SET _idx = _idx +1;
                ELSEIF _session2='' THEN SET _room2 =NULL;
					UPDATE enrollment SET room2 = _room2 WHERE idx = _idx;
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