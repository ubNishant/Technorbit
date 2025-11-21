DROP TABLE IF EXISTS DEPARTMENT
GO
CREATE TABLE DEPARTMENT
(
DEPARTMENT_ID INT,
DEPARTEMENT_NAME VARCHAR(100)
)

INSERT INTO DEPARTMENT VALUES(1, 'Computer Departement')
INSERT INTO DEPARTMENT VALUES(2, 'IT Departement')
INSERT INTO DEPARTMENT VALUES(3, 'Civil Departement')
INSERT INTO DEPARTMENT VALUES(4, 'Mechanical Departement')


DROP TABLE IF EXISTS STUDENT_INFORMATION
GO
CREATE TABLE STUDENT_INFORMATION
(
STUDENT_ID INT,
FIRST_NAME VARCHAR(100),
LAST_NAME VARCHAR(100),
CITY VARCHAR(100),
DEPARTMENT_ID INT
)

DROP TABLE IF EXISTS STUDENT_SPORT_INFORMATION
GO
CREATE TABLE STUDENT_SPORT_INFORMATION (
    STUDENT_ID INT,
    SPORT_NAME VARCHAR(100),
    IS_PROFESSION_PLAYER BIT
);

DROP TABLE IF EXISTS STUDENT_ACADAMIC_INFO
GO
CREATE TABLE STUDENT_ACADAMIC_INFO(
STUDNET_ID INT,
FE_CGPA DECIMAL(18,2),
SE_CGPA DECIMAL(18,2),
TE_CGPA DECIMAL(18,2),
BE_CGPA DECIMAL(18,2)

)



INSERT INTO STUDENT_INFORMATION (STUDENT_ID, FIRST_NAME, LAST_NAME, CITY, DEPARTMENT_ID) VALUES
(1, 'Aarav', 'Sharma', 'Mumbai', 1),
(2, 'Vivaan', 'Verma', 'Delhi', 2),
(3, 'Aditya', 'Reddy', 'Hyderabad', 3),
(4, 'Vihaan', 'Nair', 'Kochi', 4),
(5, 'Arjun', 'Patel', 'Ahmedabad', 1),
(6, 'Sai', 'Iyer', 'Chennai', 2),
(7, 'Reyansh', 'Kumar', 'Bangalore', 3),
(8, 'Ayaan', 'Das', 'Kolkata', 4),
(9, 'Krishna', 'Singh', 'Jaipur', 1),
(10, 'Ishaan', 'Gupta', 'Pune', 2),
(11, 'Rohan', 'Joshi', 'Nagpur', 3),
(12, 'Ritvik', 'Mehta', 'Surat', 4),
(13, 'Aryan', 'Chauhan', 'Lucknow', 1),
(14, 'Kabir', 'Raj', 'Kanpur', 2),
(15, 'Darsh', 'Kohli', 'Indore', 3),
(16, 'Ansh', 'Khatri', 'Bhopal', 4),
(17, 'Arnav', 'Gill', 'Thane', 1),
(18, 'Atharv', 'Kapoor', 'Patna', 2),
(19, 'Yuvan', 'Malhotra', 'Vadodara', 3),
(20, 'Shaurya', 'Sethi', 'Agra', 4),
(21, 'Dhruv', 'Mishra', 'Gorakhpur', 1),
(22, 'Yash', 'Basu', 'Nashik', 2),
(23, 'Aaditya', 'Pandey', 'Varanasi', 3),
(24, 'Nirvaan', 'Bhatt', 'Faridabad', 4),
(25, 'Anay', 'Saxena', 'Amritsar', 1),
(26, 'Kiaan', 'Dutta', 'Allahabad', 2),
(27, 'Rudra', 'Bajpai', 'Meerut', 3),
(28, 'Atharva', 'Desai', 'Ranchi', 4),
(29, 'Dev', 'Mannan', 'Rajkot', 1),
(30, 'Aarush', 'Nayak', 'Jodhpur', 2),
(31, 'Aryav', 'Sarin', 'Coimbatore', 3),
(32, 'Keshav', 'Mahajan', 'Gwalior', 4),
(33, 'Rishaan', 'Chawla', 'Vijayawada', 1),
(34, 'Shaurya', 'Bhatia', 'Chandigarh', 2),
(35, 'Ayansh', 'Grover', 'Mysore', 3),
(36, 'Aarush', 'Chopra', 'Jabalpur', 4),
(37, 'Ishaan', 'Kashyap', 'Tirupati', 1),
(38, 'Vivaan', 'Menon', 'Nandur', 2),
(39, 'Ayaan', 'Mathew', 'Bhubaneswar', 3),
(40, 'Arjun', 'Pillai', 'Salem', 4),
(41, 'Ritvik', 'Pal', 'Trichy', 1),
(42, 'Arnav', 'Sen', 'Udaipur', 2),
(43, 'Aaditya', 'Rai', 'Hubli', 3),
(44, 'Kabir', 'Roy', 'Dhanbad', 4),
(45, 'Kiaan', 'Chandra', 'Guwahati', 1),
(46, 'Reyansh', 'Banerjee', 'Mangalore', 2),
(47, 'Aryan', 'Yadav', 'Noida', 3),
(48, 'Rohan', 'Saha', 'Kozhikode', 4),
(49, 'Dhruv', 'Lal', 'Madurai', 1),
(50, 'Aditya', 'Das', 'Jamshedpur', 2);




INSERT INTO STUDENT_ACADAMIC_INFO (STUDNET_ID, FE_CGPA, SE_CGPA, TE_CGPA, BE_CGPA) VALUES
(1, 7.8, 8.0, 8.2, 8.5),
(2, 8.1, 8.3, 8.4, 8.6),
(3, 7.5, 7.7, 7.9, 8.0),
(4, 8.2, 8.4, 8.5, 8.7),
(5, 7.9, 8.1, 8.3, 8.4),
(6, 8.0, 8.2, 8.4, 8.5),
(7, 7.6, 7.8, 8.0, 8.1),
(8, 8.3, 8.5, 8.6, 8.8),
(9, 7.7, 7.9, 8.1, 8.2),
(10, 8.4, 8.6, 8.7, 8.9),
(11, 7.8, 8.0, 8.2, 8.3),
(12, 8.1, 8.3, 8.5, 8.6),
(13, 7.5, 7.7, 7.9, 8.0),
(14, 8.2, 8.4, 8.5, 8.7),
(15, 7.9, 8.1, 8.3, 8.4),
(16, 8.0, 8.2, 8.4, 8.5),
(17, 7.6, 7.8, 8.0, 8.1),
(18, 8.3, 8.5, 8.6, 8.8),
(19, 7.7, 7.9, 8.1, 8.2),
(20, 8.4, 8.6, 8.7, 8.9),
(21, 7.8, 8.0, 8.2, 8.3),
(22, 8.1, 8.3, 8.5, 8.6),
(23, 7.5, 7.7, 7.9, 8.0),
(24, 8.2, 8.4, 8.5, 8.7),
(25, 7.9, 8.1, 8.3, 8.4),
(26, 8.0, 8.2, 8.4, 8.5),
(27, 7.6, 7.8, 8.0, 8.1),
(28, 8.3, 8.5, 8.6, 8.8),
(29, 7.7, 7.9, 8.1, 8.2),
(30, 8.4, 8.6, 8.7, 8.9),
(31, 7.8, 8.0, 8.2, 8.3),
(32, 8.1, 8.3, 8.5, 8.6),
(33, 7.5, 7.7, 7.9, 8.0),
(34, 8.2, 8.4, 8.5, 8.7),
(35, 7.9, 8.1, 8.3, 8.4),
(36, 8.0, 8.2, 8.4, 8.5),
(37, 7.6, 7.8, 8.0, 8.1),
(38, 8.3, 8.5, 8.6, 8.8),
(39, 7.7, 7.9, 8.1, 8.2),
(40, 8.4, 8.6, 8.7, 8.9),
(41, 7.8, 8.0, 8.2, 8.3),
(42, 8.1, 8.3, 8.5, 8.6),
(43, 7.5, 7.7, 7.9, 8.0),
(44, 8.2, 8.4, 8.5, 8.7),
(45, 7.9, 8.1, 8.3, 8.4),
(46, 8.0, 8.2, 8.4, 8.5),
(47, 7.6, 7.8, 8.0, 8.1),
(48, 8.3, 8.5, 8.6, 8.8),
(49, 7.7, 7.9, 8.1, 8.2),
(50, 8.4, 8.6, 8.7, 8.9);






INSERT INTO STUDENT_SPORT_INFORMATION (STUDENT_ID, SPORT_NAME, IS_PROFESSION_PLAYER) VALUES
(10, 'Cricket', 0),
(5, 'Football', 1),
(8, 'Boxing', 0),
(2, 'Hockey', 1),
(15, 'Badminton', 0),
(12, 'Tennis', 1),
(3, 'Cricket', 0),
(7, 'Football', 1),
(20, 'Boxing', 0),
(25, 'Hockey', 1),
(18, 'Badminton', 0),
(22, 'Tennis', 1),
(30, 'Cricket', 0),
(27, 'Football', 1),
(6, 'Boxing', 0),
(19, 'Hockey', 1),
(14, 'Badminton', 0),
(9, 'Tennis', 1),
(11, 'Cricket', 0),
(23, 'Football', 1),
(4, 'Boxing', 0),
(29, 'Hockey', 1),
(16, 'Badminton', 0),
(1, 'Tennis', 1),
(13, 'Cricket', 0),
(21, 'Football', 1),
(17, 'Boxing', 0),
(28, 'Hockey', 1),
(24, 'Badminton', 0),
(26, 'Tennis', 1);

SELECT * FROM STUDENT_INFORMATION SI WHERE SI.STUDENT_ID=1


--CREATE TABLE_NAME
-- PARAMETER
--AS 
--BEGIN
--END
CREATE PROCEDURE GET_STUDENT_INFOC

 @student_id INT 
 AS
 BEGIN


 SELECT * FROM STUDENT INFORMATION  WHERE STUDENT_ID= @student_id
 END

 --CALL

  EXECUTE GET_STUDENT_INFOC @STUDENT_ID=2
  EXECUTE GET_STUDENT_INFOC @STUDENT_ID=9


  SELECT * FROM STUDENT_INFORMATION
  SELECT * FROM STUDENT_ACADAMIC_INFO
  SELECT * FROM STUDENT_SPORT_INFORMATION
  SELECT * FROM DEPARTMENT


  SELECT SI.FIRST_NAME,SI.LAST_NAME,SAI.FE_CGPA,SAI.TE_CGPA.SAI.BE_CGPA FROM STUDENT_INFORMATION SI
  INNER JOIN STUDENT_ACADAMIC_INFO SAI
  ON SI.STUDENT_ID=SAI.STUDENT_ID
  WHERE SI.STUDENT_ID=8

  CREATE PROCEDURE GET_STUDENT_ACADAMIC_INFO_FOR_DEPARMENT
  @DEPARITMENT_ID INT 
  AS
  BEGIN

  SELECT * FROM STUDENT_INFORMATION SI
  INNER JOIN STUDENT_ACADAMIC_INFO SAI 
  ON SI.STUDENT_ID=SAI.STUDNET_ID
  WHERE SI.DEPARTMENT_ID=1 AND SAI.FE_CGPA>7 AND SAI.TE_CGPA>7 AND SAI.BE_CGPA>7
  END 
  
  EXECUTE GET_STUDENT_ACADAMIC_INFO_FOR_DEPARMENT @DEPARITMENT_ID=1




  CREATE PROCEDURE GET_STUDENT_SPORTS_INFORMATION
    @student_id INT
AS
BEGIN
    SELECT * FROM STUDENT_SPORT_INFORMATION
    WHERE STUDENT_ID = @student_id;
END;


--WE PASS THE NAME OF THE DEPARTEMENT AND WE  GET THE CONT OF STUDENT IN THAT DEPARTMET 

CREATE PROCEDURE GET_STUDENT_COUNT_BY_DEPARTMENT
    @department_name VARCHAR(100)
AS
BEGIN
    SELECT 
        COUNT(*) AS StudentCount
    FROM 
        STUDENT_INFORMATION SI
    INNER JOIN 
        DEPARTMENT D ON SI.DEPARTMENT_ID = D.DEPARTMENT_ID
    WHERE 
        D.DEPARTMENT_NAME = @department_name;
END;

EXECUTE GET_STUDENT_COUNT_BY_DEPARTMENT @department_name = 'IT Department';
EXECUTE GET_STUDENT_COUNT_BY_DEPARTMENT @department_name = 'Civil Department';
EXECUTE GET_STUDENT_COUNT_BY_DEPARTMENT @department_name = 'Mechanical Department';



CREATE PROCEDURE GET_STUDENTS_BY_SPORT
    @sport_name VARCHAR(100)
AS
BEGIN
    SELECT 
        SI.FIRST_NAME, SI.LAST_NAME
    FROM 
        STUDENT_INFORMATION SI
    INNER JOIN 
        STUDENT_SPORT_INFORMATION SSI ON SI.STUDENT_ID = SSI.STUDENT_ID
    WHERE 
        SSI.SPORT_NAME = @sport_name;
END;

EXECUTE GET_STUDENTS_BY_SPORT @sport_name = 'Cricket';



--we pass the departement name and get the student sport information 

CREATE PROCEDURE GET_STUDENTS_BY_DEPARTMENT_AND_SPORT
    @department_name VARCHAR(100)
AS
BEGIN
    SELECT 
        SI.FIRST_NAME, 
        SI.LAST_NAME, 
        SSI.SPORT_NAME
    FROM 
        STUDENT_INFORMATION SI
    INNER JOIN 
        DEPARTMENT D ON SI.DEPARTMENT_ID = D.DEPARTMENT_ID
    INNER JOIN 
        STUDENT_SPORT_INFORMATION SSI ON SI.STUDENT_ID = SSI.STUDENT_ID
    WHERE 
        D.DEPARTMENT_NAME = @department_name;
END;


EXECUTE GET_STUDENTS_BY_DEPARTMENT_AND_SPORT @department_name = 'IT Department';
EXECUTE GET_STUDENTS_BY_DEPARTMENT_AND_SPORT @department_name = 'Civil Department';
EXECUTE GET_STUDENTS_BY_DEPARTMENT_AND_SPORT @department_name = 'Mechanical Department';

