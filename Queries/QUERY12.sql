-- TÜRKİYE TOPLAM VAKA, TOPLAM VEFAT, TOPLAM TEST SAYILARI

SELECT CN.CONTINENTNAME, CS.COUNTRY_ID, CO.COUNTRYNAME, CS.NEW_TESTS, DATE_, NEW_DEATHS, CS.TOTAL_DEATHS, CS.NEW_CASES, CS.TOTAL_CASES
	FROM COUNTRYCASES CS
	INNER JOIN COUNTRY CO ON CS.COUNTRY_ID=CO.COUNTRYID
	INNER JOIN CONTINENT CN ON CN.ID=CO.CONTINENTID
	WHERE CS.COUNTRY_ID=202
	GROUP BY CN.CONTINENTNAME, CS.COUNTRY_ID, CO.COUNTRYNAME, CS.NEW_TESTS, DATE_, NEW_DEATHS, CS.TOTAL_DEATHS, CS.NEW_CASES, CS.TOTAL_CASES
	ORDER BY DATE_ DESC;