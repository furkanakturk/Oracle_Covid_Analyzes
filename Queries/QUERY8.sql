-- TÜM ÜLKELER TOPLAM VAKA TOPLAM TEST

SELECT MAX(CC.TOTAL_CASES), MAX(TOTAL_TESTS), C.COUNTRYNAME
	FROM COUNTRYCASES CC
	INNER JOIN COUNTRY C ON C.COUNTRYID=CC.COUNTRY_ID
	GROUP BY C.COUNTRYNAME
	HAVING MAX(CC.TOTAL_DEATHS) IS NOT NULL
	AND MAX(TOTAL_TESTS) IS NOT NULL
	ORDER BY 1 DESC;