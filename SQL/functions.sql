Function 1:
DELIMITER //

CREATE FUNCTION modelid(id INT) 

RETURNS text

DETERMINISTIC
BEGIN
  
DECLARE model_id text;
    
SELECT model_id INTO model_id
FROM TABLE_NAME 
WHERE model_id = id;
  
RETURN model_id;

END//

DELIMITER ;

Function 2:
DELIMITER //

CREATE FUNCTION runtime(id INT) 

RETURNS int

DETERMINISTIC
BEGIN
  
DECLARE runtime text;
    
SELECT runtime INTO runtime
FROM TABLE_NAME 
WHERE model_id = id;
  
RETURN runtime;

END//

DELIMITER ;


Function 3:
DELIMITER //


CREATE FUNCTION rmse(a INT)
    
RETURNS FLOAT
    
DETERMINISTIC
    
BEGIN
        
DECLARE c FLOAT;
        
SET c = avg(rmse);
        
RETURN c;
    
END//
DELIMITER ;

DELIMITER ;

Function 4:
DELIMITER //

CREATE FUNCTION columntypeandrecord(id INT) 

RETURNS varchar(100)

DETERMINISTIC
BEGIN
  
DECLARE col_name text;
    
SELECT col_name INTO col_name
FROM TABLE_NAME 
WHERE datset_id = id;
  
RETURN col_name;

END//

DELIMITER ;
