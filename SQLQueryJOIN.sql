DROP  TABLE StudentSports
CREATE TABLE StudentSports (
    student_id INT PRIMARY KEY,
    sport VARCHAR(100),
    is_professional_player BIT  -- BIT data type for representing true/false or 1/0
);

-- Inserting sample data into StudentSports table
INSERT INTO StudentSports (student_id, sport, is_professional_player)
VALUES (1, 'Basketball', 0),  -- Student with ID 1 plays Basketball and is not a professional player
       (2, 'Soccer', 1),      -- Student with ID 2 plays Soccer and is a professional player
       (3, 'Tennis', 0);      -- Student with ID 3 plays Tennis and is not a professional player



-- Inserting more data into StudentSports table
INSERT INTO StudentSports (student_id, sport, is_professional_player)
VALUES (4, 'Swimming', 0),   -- Student with ID 4 plays Swimming and is not a professional player
       (5, 'Golf', 1),       -- Student with ID 5 plays Golf and is a professional player
       (6, 'Cricket', 0);    -- Student with ID 6 plays Cricket and is not a professional player
SELECT * FROM StudentSports
SELECT * FROM STUDENT_INFORMATION
SELECT * FROM STUDENT_ACADAMIC_DATA
SELECT * FROM DEPARTMENT
SELECT * FROM STUDENT_INFORMATION SI INNER JOIN STUDENT_ACADAMIC_DATA SAD ON SI.STUDENT_ID=SAD.STUDNET_ID INNER JOIN DEPARTMENT D ON SI.DEPARTMENT_ID=D.DEPARTMENT_ID
SELECT FIRST_NAME ,LAST_NAME,FE_CGPA,SE_CGPA,TE_CGPA,BE_CGPA,sport FROM STUDENT_INFORMATION SI INNER JOIN STUDENT_ACADAMIC_DATA SAD ON SI.STUDENT_ID=SAD.STUDNET_ID RIGHT JOIN StudentSports SS ON SI.STUDENT_ID=SS.student_id