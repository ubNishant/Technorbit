-- joins 
-- used to establish relationship between two tables rows 
-- Steps to identify when to use join
-- Check output column are from which table 
-- if they are from more than one table then you have to use join
-- then find common column between two tables to establish relationship between them 
-- then apply inner or left join according to required outuput 


-- joins 
-- 2 tables relationship 
-- common column 
--base 
--student_data 
--hoste_inforamation

select * from STUDENT_DATA
select * from STUDENT_HOSTEL_INFORMATION


select 





SELECT * FROM STUDENT_INFORMATION
SELECT * FROM StudentSports

-- STUDENT ALONG WITH SPORT WHICH HE/SHE PLYAS
-- FIRST_NAME , LAST_NAME , SPORTS NAME
--2 JOIN
-- COMMON COLUMN 

--STUDENT_ID 

-- WHICH JOIN 


-- INNER JOIN 


SELECT * FROM STUDENT_INFORMATION
SELECT * FROM StudentSports


SELECT * FROM STUDENT_INFORMATION SI
INNER JOIN StudentSports SS ON SI.STUDENT_ID=SS.STUDENT_ID


SELECT  FROM STUDENT_INFORMATION SI
LEFT JOIN StudentSports SS ON SI.STUDENT_ID=SS.STUDENT_ID





SELECT * FROM STUDENT_INFORMATION SI 
SELECT * FROM STUDENT_ACADAMIC_DATA
SELECT * FROM StudentSports

-- rushikesh , sgpg, sport

SELECT * FROM STUDENT_INFORMATION SI 
INNER JOIN STUDENT_ACADAMIC_DATA SAD ON SI.STUDENT_ID= SAD.STUDNET_ID
INNER JOIN DEPARTMENT D ON SI.DEPARTMENT_ID= D.DEPARTMENT_ID

-- STUDNET REOCRD WHO PLAYS SPORTS ALONG WIT THEIR ACADMEMIC RESULTS.

-- first_name, last_name, fe_sgpa,se_sgpa, te_sgpa, be_sgpa, sport

-- STUDENT_INFORMATION
--STUDENT_ACADAMIC_DATA
--StudentSports

select * from STUDENT_INFORMATION si 
inner join STUDENT_ACADAMIC_DATA sad
on si.STUDENT_ID= sad.STUDNET_ID

SELECT * FROM StudentSports

SELECT * FROM STUDENT_INFORMATION si 
inner join STUDENT_ACADAMIC_DATA sad
on si.STUDENT_ID= sad.STUDNET_ID
inner join StudentSports ss on sad.STUDNET_ID = SS.STUDENT_ID


-- FIRST LAST NAME , SGPA , IF SPORST PLAY THEN SPORT NAME

SELECT SI.CITY, SI.FIRST_NAME, SI.LAST_NAME, SAD.FE_CGPA, SAD.SE_CGPA FROM STUDENT_INFORMATION SI
LEFT JOIN STUDENT_ACADAMIC_DATA SAD 
ON SAD.STUDNET_ID= SI.STUDENT_ID
LEFT JOIN StudentSports SS ON SS.STUDENT_ID=SI.STUDENT_ID 









-- DEPRTEMTN

-- DEPRATMENT 







SELECT * FROM STUDENT_ACADAMIC_DATA
SELECT * FROM StudentSports



