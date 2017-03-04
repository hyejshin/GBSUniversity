
# 인사팀이 전달해준 엑셀파일 -> CSV로 변환 -> Table에 Import
load data local infile 'C://ProgramData//MySQL//MySQL Server 5.7//Uploads//enrollment.csv' into table ibm.enrollment fields terminated by ',' ENCLOSED BY '"' LINES TERMINATED BY '\r' (user_id,morning_room,session1,session2,session3);

# session과 room mapping해서 Update하는 Procedure
CALL UPDATE_ROOM1('Track1','Track2','Track3','Track4','Track5','Track6',@RESULT);
CALL UPDATE_ROOM2('Track1','Track2','Track3','Track4','Track5','Track6',@RESULT);
CALL UPDATE_ROOM3('Track1','Track2','Track3','Track4','Track5','Track6',@RESULT);