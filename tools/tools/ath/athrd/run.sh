# $FreeBSD: releng/10.3/tools/tools/ath/athrd/run.sh 187322 2009-01-15 23:38:21Z sam $

COUNTRIES=${@:-"
	DB NA AL DZ AR AM AU AT AZ BH BY BE BZ BO BR BN BG
	CA CL CN CO CR HR CY CZ DK DO EC EG SV EE FI FR GE
	DE GR GT HN HK HU IS IN ID IR IE IL IT JP J1 J2 J3
	J4 J5 JO KZ KP KR K2 KW LV LB LI LT LU MO MK MY MX
	MC MA NL NZ NO OM PK PA PE PH PL PT PR QA RO RU SA
	SG SK SI ZA ES SE CH SY TW TH TT TN TR UA AE GB US
	UY UZ VE VN YE ZW WOR0_WORLD WOR1_WORLD WOR2_WORLD WOR3_WORLD
	WOR4_WORLD, WOR5_ETSIC EU1_WORLD WOR01_WORLD WOR02_WORLD
"}

for i in $COUNTRIES
do
	./athrd -o $i
done
