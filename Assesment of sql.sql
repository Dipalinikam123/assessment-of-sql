CREATE TABLE `nobel_win` (
  YEAR int(11) DEFAULT NULL,
  SUBJECT varchar(100) DEFAULT NULL,
  WINNER varchar(100) DEFAULT NULL,
  COUNTRY varchar(100) DEFAULT NULL,
  CATEGORY varchar(50) DEFAULT NULL
);

INSERT INTO `nobel_win` (`YEAR`, `SUBJECT`, `WINNER`, `COUNTRY`, `CATEGORY`) VALUES
(1970, 'physics', 'Hannes Alfven', 'Sweden', 'Scientist'),
(1970, 'physics', 'Louis Neel', 'France', 'Scientist'),
(1970, 'Chemistry', 'Luis Federico Leloir', 'France', 'Scientist'),
(1970, 'physiology', 'Ulf Von Euler', 'Sweden', 'Scientist'),
(1970, 'physiology', 'Bernard Katz', 'Germany', 'Scientist'),
(1970, 'Literature', 'Aleksandr Solzhenitsyn', 'Russia', 'Linguist'),
(1970, 'Econimics', 'Paul Samuelson', 'USA', 'Economist'),
(1970, 'physiology', 'Julius Axelrod', 'USA', 'Scientist'),
(1971, 'physics', 'Dennis Gabor', 'Hungary', 'Scientist'),
(1971, 'Chemistry', 'Gerhard Herzberg', 'Germany', 'Scientist'),
(1971, 'Peace', 'Willy Brandt', 'Germany', 'Chancellor'),
(1971, 'Literature', 'Pablo Neruda', 'Chile', 'Linguist'),
(1971, 'Economics', 'Simon Kuznets', 'Russia', 'Economist'),
(1978, 'Peace', 'Anwar al-Sadat', 'Egypt', 'President'),
(1978, 'Peace', 'Menachem Begin', 'Israel', 'Prime Minister'),
(1987, 'Chemistry', 'Donald J.Cram', 'USA', 'Scientist'),
(1987, 'Chemistry', 'Jean-marie Lehn', 'France', 'Scientist'),
(1987, 'Physiology', 'Susumu Tonegawa', 'Japan', 'Scientist'),
(1994, 'Economics', 'Reinhard Selten', 'Germany', 'Economist'),
(1994, 'Peace', 'Yitzhak Rabin', 'Israel', 'Prime Minister'),
(1987, 'Physics', 'Johannes Georg Bednorz', 'Germany', 'Scientist'),
(1987, 'Literature', 'Joseph Brodsky', 'Russia', 'Linguist'),
(1987, 'Economics', 'Robert Solow', 'USA', 'Economist'),
(1994, 'Literature', 'Kenzaburo Oe', 'Japan', 'Linguist');

SELECT YEAR,SUBJECT,WINNER 
FROM nobel_win WHERE YEAR=1970;

SELECT YEAR,SUBJECT,WINNER,COUNTRY
FROM nobel_win
WHERE SUBJECT='chemistry'
AND YEAR BETWEEN 1965 AND 1975;

SELECT*FROM nobel_win
WHERE firstname='louis';

SELECT*FROM nobel_win
WHERE SUBJECT NOT LIKE 'P%'
ORDER BY YEAR DESC, WINNER ASC;

SELECT YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY
FROM nobel_win
WHERE YEAR=1970
ORDER BY CASE WHEN SUBJECT='chemistry'
THEN 1 ELSE 0 END
CASE WHEN SUBJECT='Economics' THEN 1 ELSE 0 END,
SUBJECT ASC;