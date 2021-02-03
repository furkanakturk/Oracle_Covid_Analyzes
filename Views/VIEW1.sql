CREATE OR REPLACE VIEW V_TOTALTEST (STATECODE, STATENAME, TOTAL_TEST) AS 
  SELECT SC.STATECODE, S.STATENAME, MAX(SC.TOTALTESTVIRAL) TOTAL_TEST
    FROM STATECASES SC
        INNER JOIN STATE_ S ON S.STATECODE=SC.STATECODE
        GROUP BY SC.STATECODE, S.STATENAME
        HAVING MAX(SC.TOTALTESTVIRAL) IS NOT NULL
        ORDER BY 3 DESC;


---EXECUTE
SELECT * FROM V_TOTALTEST;
