quietly {
// This do-file assigns Gledditsch and Ward country codes to country names.
// Obviously, your variable containing the country name strings
// needs to be named `country'. 

// Clean up the countrynames to decrease potential variance: 
replace country = subinstr(country, "î"		, "i", .)
replace country = subinstr(country, "é"		, "e", .)
replace country = subinstr(country, "è"		, "e", .)
replace country = subinstr(country, "á"		, "a", .)
replace country = subinstr(country, "Å"		, "A", .)
replace country = subinstr(country, "ô"		, "o", .)
replace country = subinstr(country, "ú"		, "u", .)
replace country = subinstr(country, "ñ"		, "n", .)
replace country = subinstr(country, "ç"		, "c", .)
replace country = subinstr(country, ","		, "", .)
replace country = subinstr(country, "/"		, "", .)
replace country = subinstr(country, "-"		, "", .)
replace country = subinstr(country, "_"		, "", .)
replace country = subinstr(country, "?"		, "", .)
replace country = subinstr(country, "."		, "", .)
replace country = subinstr(country, ":"		, "", .)
replace country = subinstr(country, "'"		, "", .)
replace country = subinstr(country, "("		, "", .)
replace country = subinstr(country, ")"		, "", .)
replace country = subinstr(country, "&"		, "", .)
replace country = subinstr(country, " "		, "", .)
sproper country, replace

capture gen ccode=.
label variable ccode "GW country codes"
capture order country year ccode

{
replace	ccode =	2		if inlist(country	,"Usa"	,"Unitedstates"	,"Unitedstatesofamerica"					,"United States of America"	,"United States Of America"	)	
replace	ccode =	6		if inlist(country	,"Pri"	,"Puertorico"						,"Puerto Rico"	,"Pueto Rico"	)	
replace	ccode =	20		if inlist(country	,"Can"	,"Canada"						,"Canada"		)	
replace	ccode =	31		if inlist(country	,"Bhs"	,"Bahamas"	,"Thebahamas"	,"Bahamasthe"				,"Bahamas, The"		)	
replace	ccode =	40		if inlist(country	,"Cub"	,"Cuba"						,"Cuba"		)	
replace	ccode =	41		if inlist(country	,"Hti"	,"Haiti"						,"Haiti"		)	
replace	ccode =	42		if inlist(country	,"Dom"	,"Dominicanrepublic"						,"Dominican Republic"		)	
replace	ccode =	51		if inlist(country	,"Jam"	,"Jamaica"						,"Jamaica"		)	
replace	ccode =	52		if inlist(country	,"Tto"	,"Trinidadandtobago"	,"Trinidadtobago"					,"Trinidad"		)	
replace	ccode =	53		if inlist(country	,"Brb"	,"Barbados"						,"Barbados"		)	
replace	ccode =	54		if inlist(country	,"Dma"	,"Dominica"						,"Dominica"		)	
replace	ccode =	55		if inlist(country	,"Grd"	,"Grenada"						,"Grenada"		)	
replace	ccode =	56		if inlist(country	,"Lca"	,"Saintlucia"	,"Stlucia"					,"Saint Lucia"		)	
replace	ccode =	57		if inlist(country	,"Vct"	,"Saintvincentandthegrenadines"	,"Stvincentandthegrenadines"	,"Stvincentgrenadines"				,"Saint Vincent and the Grenadines"		)	
replace	ccode =	58		if inlist(country	,"Atg"	,"Antiguaandbarbuda"	,"Antiguabarbuda"					,"Antigua and Barbuda"	,"Antigua & Barbuda"	)	
replace	ccode =	60		if inlist(country	,"Kna"	,"Saintkittsandnevis"	,"Stkittsandnevis"	,"Stkittsnevis"				,"Saint Kitts and Nevis"		)	
replace	ccode =	70		if inlist(country	,"Mex"	,"Mexico"						,"Mexico"		)	
replace	ccode =	80		if inlist(country	,"Blz"	,"Belize"						,"Belize"	,"British Honduras"	)	
replace	ccode =	90		if inlist(country	,"Gtm"	,"Guatemala"						,"Guatemala"	,"Guatamala"	)	
replace	ccode =	91		if inlist(country	,"Hnd"	,"Honduras"						,"Honduras"		)	
replace	ccode =	92		if inlist(country	,"Slv"	,"Elsalvador"						,"El Salvador"		)	
replace	ccode =	93		if inlist(country	,"Nic"	,"Nicaragua"						,"Nicaragua"		)	
replace	ccode =	94		if inlist(country	,"Cri"	,"Costarica"						,"Costa Rica"		)	
replace	ccode =	95		if inlist(country	,"Pan"	,"Panama"						,"Panama"		)	
replace	ccode =	100		if inlist(country	,"Col"	,"Colombia"						,"Colombia"		)	
replace	ccode =	101		if inlist(country	,"Ven"	,"Venezuelabolivarianrepublicof"	,"Venezuelarb"					,"Venezuela"		)	
replace	ccode =	110		if inlist(country	,"Guy"	,"Guyana"						,"Guyana"	,"Co-operative Republic of Guyana"	)	
replace	ccode =	115		if inlist(country	,"Sur"	,"Suriname"						,"Suriname"		)	
replace	ccode =	130		if inlist(country	,"Ecu"	,"Ecuador"						,"Ecuador"		)	
replace	ccode =	135		if inlist(country	,"Per"	,"Peru"						,"Peru"		)	
replace	ccode =	140		if inlist(country	,"Bra"	,"Brazil"						,"Brazil"		)	
replace	ccode =	145		if inlist(country	,"Bol"	,"Boliviaplurinationalstateof"						,"Bolivia"		)	
replace	ccode =	150		if inlist(country	,"Pry"	,"Paraguay"						,"Paraguay"		)	
replace	ccode =	155		if inlist(country	,"Chl"	,"Chile"						,"Chile"		)	
replace	ccode =	160		if inlist(country	,"Arg"	,"Argentina"						,"Argentina"		)	
replace	ccode =	165		if inlist(country	,"Ury"	,"Uruguay"						,"Uruguay"		)	
replace	ccode =	200		if inlist(country	,"Gbr"	,"Unitedkingdom"						,"United Kingdom"		)	
replace	ccode =	205		if inlist(country	,"Irl"	,"Ireland"						,"Ireland"		)	
replace	ccode =	210		if inlist(country	,"Nld"	,"Netherlands"						,"Netherlands"		)	
replace	ccode =	211		if inlist(country	,"Bel"	,"Belgium"						,"Belgium"		)	
replace	ccode =	212		if inlist(country	,"Lux"	,"Luxembourg"						,"Luxembourg"		)	
replace	ccode =	220		if inlist(country	,"Fra"	,"France"						,"France"		)	
replace	ccode =	221		if inlist(country	,"Mco"	,"Monaco"						,"Monaco"		)	
replace	ccode =	223		if inlist(country	,"Lie"	,"Liechtenstein"						,"Liechtenstein"		)	
replace	ccode =	225		if inlist(country	,"Che"	,"Switzerland"						,"Switzerland"		)	
replace	ccode =	230		if inlist(country	,"Esp"	,"Spain"						,"Spain"		)	
replace	ccode =	232		if inlist(country	,"And"	,"Andorra"						,"Andorra"		)	
replace	ccode =	235		if inlist(country	,"Prt"	,"Portugal"						,"Portugal"		)	
replace	ccode =	240		if inlist(country								,"Hanover"		)	
replace	ccode =	245		if inlist(country								,"Bavaria"		)	
replace	ccode =	260		if inlist(country	,"Deu"	,"Germany"	,"Germanfederalrepublic"	,"Federalrepublicofgermany"				,"German Federal Republic"		)	
replace	ccode =	265		if inlist(country								,"German Democratic Rep."	,"Germandemocraticrepublic"	)	
replace	ccode =	267		if inlist(country								,"Baden"		)	
replace	ccode =	269		if inlist(country								,"Saxony"		)	
replace	ccode =	271		if inlist(country								,"Wuerttemburg"		)	
replace	ccode =	273		if inlist(country								,"Hesse Electoral"		)	
replace	ccode =	275		if inlist(country								,"Hesse Grand Ducal"		)	
replace	ccode =	280		if inlist(country								,"Meckelnburg Schwerin"		)	
replace	ccode =	290		if inlist(country	,"Pol"	,"Poland"						,"Poland"		)	
replace	ccode =	300		if inlist(country								,"Austria-Hungary"		)	
replace	ccode =	305		if inlist(country	,"Aut"	,"Austria"						,"Austria"		)	
replace	ccode =	310		if inlist(country	,"Hun"	,"Hungary"						,"Hungary"		)	
replace	ccode =	315		if inlist(country								,"Czechoslavakia"		)	
replace	ccode =	316		if inlist(country	,"Cze"	,"Czechrepublic"						,"Czech Republic"		)	
replace	ccode =	317		if inlist(country	,"Svk"	,"Slovakia"	,"Slovakrepublic"					,"Slovakia"		)	
replace	ccode =	325		if inlist(country	,"Ita"	,"Italy"						,"Italy"		)	
replace	ccode =	327		if inlist(country	,"Vat"	,"Holyseevaticancitystate"						,"Vatican"		)	
replace	ccode =	329		if inlist(country								,"Two Sicilies"		)	
replace	ccode =	331		if inlist(country	,"Smr"	,"Sanmarino"						,"San Marino"		)	
replace	ccode =	332		if inlist(country								,"Modena"		)	
replace	ccode =	335		if inlist(country								,"Parma"		)	
replace	ccode =	337		if inlist(country								,"Tuscany"		)	
replace	ccode =	338		if inlist(country	,"Mlt"	,"Malta"						,"Malta"		)	
replace	ccode =	339		if inlist(country	,"Alb"	,"Albania"						,"Albania"		)	
replace	ccode =	341		if inlist(country	,"Mne"	,"Montenegro"						,"Montenegro"		)	
replace	ccode =	343		if inlist(country	,"Mkd"	,"Macedoniatheformeryugoslavrepublicof"	,"Tfyrofmacedonia"	,"Macedoniafyr"				,"Macedonia"		)	
replace	ccode =	344		if inlist(country	,"Hrv"	,"Croatia"						,"Croatia"		)	
replace	ccode =	345		if inlist(country	,"Srb"	,"Serbia"	,"Republicofserbia"					,"Yugoslavia/Serbia"		)	
replace	ccode =	346		if inlist(country	,"Bih"	,"Bosniaandherzegovina"	,"Bosniaherzegovina"					,"Bosnia/Herzogovina"		)	
replace	ccode =	347		if inlist(country								,"Kosovo"		)	
replace	ccode =	349		if inlist(country	,"Svn"	,"Slovenia"						,"Slovenia"		)	
replace	ccode =	350		if inlist(country	,"Grc"	,"Greece"						,"Greece"		)	
replace	ccode =	352		if inlist(country	,"Cyp"	,"Cyprus"						,"Cyprus"		)	
replace	ccode =	355		if inlist(country	,"Bgr"	,"Bulgaria"						,"Bulgaria"		)	
replace	ccode =	359		if inlist(country								,"Moldova"		)	
replace	ccode =	360		if inlist(country	,"Rou"	,"Romania"						,"Rumania"		)	
replace	ccode =	365		if inlist(country	,"Rus"	,"Russianfederation"						,"Russia"		)	
replace	ccode =	366		if inlist(country	,"Est"	,"Estonia"						,"Estonia"		)	
replace	ccode =	367		if inlist(country	,"Lva"	,"Latvia"						,"Latvia"		)	
replace	ccode =	368		if inlist(country	,"Ltu"	,"Lithuania"						,"Lithuania"		)	
replace	ccode =	369		if inlist(country	,"Ukr"	,"Ukraine"						,"Ukraine"		)	
replace	ccode =	370		if inlist(country	,"Blr"	,"Belarus"						,"Belarus"		)	
replace	ccode =	371		if inlist(country	,"Arm"	,"Armenia"						,"Armenia"		)	
replace	ccode =	372		if inlist(country	,"Geo"	,"Georgia"						,"Georgia"		)	
replace	ccode =	373		if inlist(country	,"Aze"	,"Azerbaijan"						,"Azerbaijan"		)	
replace	ccode =	375		if inlist(country	,"Fin"	,"Finland"						,"Finland"		)	
replace	ccode =	380		if inlist(country	,"Swe"	,"Sweden"						,"Sweden"		)	
replace	ccode =	385		if inlist(country	,"Nor"	,"Norway"						,"Norway"		)	
replace	ccode =	390		if inlist(country	,"Dnk"	,"Denmark"						,"Denmark"		)	
replace	ccode =	395		if inlist(country	,"Isl"	,"Iceland"						,"Iceland"		)	
replace	ccode =	402		if inlist(country	,"Cpv"	,"Capeverde"	,"Caboverde"					,"Cabo Verde"	,"Cape Verde"	)	
replace	ccode =	403		if inlist(country	,"Stp"	,"Saotomeandprincipe"	,"Saotomeprincipe"					,"São Tomé and Príncipe"		)	
replace	ccode =	404		if inlist(country	,"Gnb"	,"Guineabissau"						,"Guinea-Bissau"	,"Guinea-Bissaau"	)	
replace	ccode =	411		if inlist(country	,"Gnq"	,"Equatorialguinea"						,"Equatorial Guinea"		)	
replace	ccode =	420		if inlist(country	,"Gmb"	,"Gambia"	,"Gambiathe"					,"Gambia"	,"Gambia, The"	)	
replace	ccode =	432		if inlist(country	,"Mli"	,"Mali"						,"Mali"		)	
replace	ccode =	433		if inlist(country	,"Sen"	,"Senegal"						,"Senegal"		)	
replace	ccode =	434		if inlist(country	,"Ben"	,"Benin"						,"Benin"		)	
replace	ccode =	435		if inlist(country	,"Mrt"	,"Mauritania"						,"Mauritania"		)	
replace	ccode =	436		if inlist(country	,"Ner"	,"Niger"						,"Niger"		)	
replace	ccode =	437		if inlist(country	,"Civ"	,"Cotedivoire"	,"Ivorycoast"	,"Coted`Ivoire"				,"Ivory Coast"		)	
replace	ccode =	438		if inlist(country	,"Gin"	,"Guinea"						,"Guinea"		)	
replace	ccode =	439		if inlist(country	,"Bfa"	,"Burkinafaso"						,"Burkina Faso"	,"Burkina"	)	
replace	ccode =	450		if inlist(country	,"Lbr"	,"Liberia"						,"Liberia"		)	
replace	ccode =	451		if inlist(country	,"Sle"	,"Sierraleone"						,"Sierra Leone"		)	
replace	ccode =	452		if inlist(country	,"Gha"	,"Ghana"						,"Ghana"		)	
replace	ccode =	461		if inlist(country	,"Tgo"	,"Togo"						,"Togo"		)	
replace	ccode =	471		if inlist(country	,"Cmr"	,"Cameroon"						,"Cameroun"		)	
replace	ccode =	475		if inlist(country	,"Nga"	,"Nigeria"						,"Nigeria"		)	
replace	ccode =	481		if inlist(country	,"Gab"	,"Gabon"						,"Gabon"		)	
replace	ccode =	482		if inlist(country	,"Caf"	,"Centralafricanrepublic"						,"Central African Empire"		)	
replace	ccode =	483		if inlist(country	,"Tcd"	,"Chad"						,"Chad"		)	
replace	ccode =	484		if inlist(country	,"Cog"	,"Congo"	,"Republicofcongo"	,"Congorep"	,"Congorepublicof"	,"Congorepublicofthe"		,"Congo, Rep."	,"Congo Rep."	)	
replace	ccode =	490		if inlist(country	,"Cod"	,"Congothedemocraticrepublicofthe"	,"Drofthecongo"	,"Democraticrepublicofthecongo"	,"Congodemrep"	,"Congodemocraticrepublicof"	,"Drc"	,"Congo, DR - Zaire"		)	
replace	ccode =	500		if inlist(country	,"Uga"	,"Uganda"						,"Uganda"		)	
replace	ccode =	501		if inlist(country	,"Ken"	,"Kenya"						,"Kenya"		)	
replace	ccode =	510		if inlist(country	,"Tza"	,"Tanzaniaunitedrepublicof"	,"Uroftanzaniamainland"	,"Unitedrepublicoftanzania"	,"Tanzania"			,"Tanganyika"		)	
replace	ccode =	511		if inlist(country								,"Zanzibar"		)	
replace	ccode =	516		if inlist(country	,"Bdi"	,"Burundi"						,"Burundi"		)	
replace	ccode =	517		if inlist(country	,"Rwa"	,"Rwanda"						,"Rwanda"		)	
replace	ccode =	520		if inlist(country	,"Som"	,"Somalia"						,"Somalia"		)	
replace	ccode =	522		if inlist(country	,"Dji"	,"Djibouti"						,"Djibouti"		)	
replace	ccode =	530		if inlist(country	,"Eth"	,"Ethiopia"						,"Ethiopia"	,"Ethiopiaeritrea"	)	
replace	ccode =	531		if inlist(country	,"Eri"	,"Eritrea"						,"Eritrea"		)	
replace	ccode =	540		if inlist(country	,"Ago"	,"Angola"						,"Angola"		)	
replace	ccode =	541		if inlist(country	,"Moz"	,"Mozambique"						,"Mozambique"		)	
replace	ccode =	551		if inlist(country	,"Zmb"	,"Zambia"						,"Zambia"		)	
replace	ccode =	552		if inlist(country	,"Zwe"	,"Zimbabwe"						,"Zimbabwe"	,"Zimbabwe (Rhodesia)"	)	
replace	ccode =	553		if inlist(country	,"Mwi"	,"Malawi"						,"Malawi"	,"Malawirepublic"	)	
replace	ccode =	560		if inlist(country	,"Zaf"	,"Southafrica"						,"South Africa"		)	
replace	ccode =	565		if inlist(country	,"Nam"	,"Namibia"						,"Namibia"		)	
replace	ccode =	570		if inlist(country	,"Lso"	,"Lesotho"						,"Lesotho"		)	
replace	ccode =	571		if inlist(country	,"Bwa"	,"Botswana"						,"Bophutatswana"		)	
replace	ccode =	572		if inlist(country	,"Swz"	,"Swaziland"						,"Swaziland"		)	
replace	ccode =	580		if inlist(country	,"Mdg"	,"Madagascar"						,"Madagascar"	,"Madagascar (Malagasy)"	)	
replace	ccode =	581		if inlist(country	,"Com"	,"Comoros"						,"Comoros"		)	
replace	ccode =	590		if inlist(country	,"Mus"	,"Mauritius"						,"Mauritius"		)	
replace	ccode =	591		if inlist(country	,"Syc"	,"Seychelles"						,"Seychelles"		)	
replace	ccode =	600		if inlist(country	,"Mar"	,"Morocco"						,"Morocco"		)	
replace	ccode =	615		if inlist(country	,"Dza"	,"Algeria"						,"Algeria"		)	
replace	ccode =	616		if inlist(country	,"Tun"	,"Tunisia"						,"Tunisia"		)	
replace	ccode =	620		if inlist(country	,"Lby"	,"Libyanarabjamahiriya"						,"Libya"		)	
replace	ccode =	625		if inlist(country	,"Sdn"	,"Sudan"	,"Sudanformer"					,"Sudan"	,"Sudan (Former)"	)	
replace	ccode =	626		if inlist(country	,"Ssd"	,"Southsudan"						,"South Sudan"	,"Southsudan"	)	
replace	ccode =	630		if inlist(country	,"Irn"	,"Iranislamicrepublicof"	,"Iranislamicrep"					,"Iran"	,"Iran Islam Rep"	)	
replace	ccode =	640		if inlist(country	,"Tur"	,"Turkey"						,"Turkey"		)	
replace	ccode =	645		if inlist(country	,"Irq"	,"Iraq"						,"Iraq"		)	
replace	ccode =	651		if inlist(country	,"Egy"	,"Egypt"	,"Egyptarabrep"					,"Egypt"		)	
replace	ccode =	652		if inlist(country	,"Syr"	,"Syrianarabrepublic"						,"Syria"		)	
replace	ccode =	660		if inlist(country	,"Lbn"	,"Lebanon"						,"Lebanon"		)	
replace	ccode =	663		if inlist(country	,"Jor"	,"Jordan"						,"Jordan"		)	
replace	ccode =	666		if inlist(country	,"Isr"	,"Israel"						,"Israel"		)	
replace	ccode =	670		if inlist(country	,"Sau"	,"Saudiarabia"						,"Saudi Arabia"		)	
replace	ccode =	678		if inlist(country	,"Yem"	,"Yemen"	,"Yemenrep"					,"Yemen"	,"Yemen Rep."	)	
replace	ccode =	680		if inlist(country								,"Yemen People's Republic"	,"Yemen People'S Republic"	)	
replace	ccode =	690		if inlist(country	,"Kwt"	,"Kuwait"						,"Kuwait"		)	
replace	ccode =	692		if inlist(country	,"Bhr"	,"Bahrain"						,"Bahrein"		)	
replace	ccode =	694		if inlist(country	,"Qat"	,"Qatar"						,"Qatar"		)	
replace	ccode =	696		if inlist(country	,"Are"	,"Unitedarabemirates"						,"United Arab Emirates"	,"UnitedArabEmirates"	)	
replace	ccode =	698		if inlist(country	,"Omn"	,"Oman"						,"Oman"		)	
replace	ccode =	700		if inlist(country	,"Afg"	,"Afghanistan"						,"Afghanistan"	,"Afganistan"	)	
replace	ccode =	701		if inlist(country	,"Tkm"	,"Turkmenistan"						,"Turkmenistan"		)	
replace	ccode =	702		if inlist(country	,"Tjk"	,"Tajikistan"						,"Tadzhikistan"		)	
replace	ccode =	703		if inlist(country	,"Kgz"	,"Kyrgyzstan"	,"Kyrgyzrepublic"					,"Kirgizia"		)	
replace	ccode =	704		if inlist(country	,"Uzb"	,"Uzbekistan"						,"Uzbekistan"		)	
replace	ccode =	705		if inlist(country	,"Kaz"	,"Kazakhstan"						,"Kazakhstan"		)	
replace	ccode =	710		if inlist(country	,"Chn"	,"China"						,"China"		)	
replace	ccode =	712		if inlist(country	,"Mng"	,"Mongolia"						,"Mongolia"		)	
replace	ccode =	713		if inlist(country	,"Twn"	,"Taiwanprovinceofchina"						,"Taiwan"		)	
replace	ccode =	731		if inlist(country	,"Prk"	,"Koreademocraticpeoplesrepublicof"	,"Northkorea"	,"Koreadempeoplesrep"	,"Koreademocraticrepublicof"	,"Koreanorth"		,"Korea, Dem. People's Rep."	,"Korea, Democratic Republic Of"	)	
replace	ccode =	732		if inlist(country	,"Kor"	,"Korearepublicof"	,"Republicofkorea"	,"Southkorea"	,"Korearep"	,"Korea"	,"Koreasouth"	,"Korea, Rep."	,"Republic Of Korea"	)	
replace	ccode =	740		if inlist(country	,"Jpn"	,"Japan"						,"Japan"		)	
replace	ccode =	750		if inlist(country	,"Ind"	,"India"						,"India"	,"British India"	)	
replace	ccode =	760		if inlist(country	,"Btn"	,"Bhutan"						,"Bhutan"		)	
replace	ccode =	770		if inlist(country	,"Pak"	,"Pakistan"						,"Pakistan"	,"Pakistanincludingbangladesh"	)	
replace	ccode =	771		if inlist(country	,"Bgd"	,"Bangladesh"						,"Bangladesh"		)	
replace	ccode =	775		if inlist(country	,"Mmr"	,"Myanmar"	,"Burmamyanmar"	,"Myanmarburma"				,"Myanmar"		)	
replace	ccode =	780		if inlist(country	,"Lka"	,"Srilanka"						,"Sri Lanka"		)	
replace	ccode =	781		if inlist(country	,"Mdv"	,"Maldives"						,"Maldive Islands"		)	
replace	ccode =	790		if inlist(country	,"Npl"	,"Nepal"						,"Nepal"		)	
replace	ccode =	800		if inlist(country	,"Tha"	,"Thailand"						,"Thailand"		)	
replace	ccode =	811		if inlist(country	,"Khm"	,"Cambodia"						,"Cambodia"		)	
replace	ccode =	812		if inlist(country	,"Lao"	,"Laopeoplesdemocraticrepublic"	,"Laopeoplesdr"	,"Laopdr"				,"Laos"	,"Lao"	)	
replace	ccode =	816		if inlist(country	,"Vnm"	,"Vietnam"						,"Vietnam, Democratic Rep."		)	
replace	ccode =	817		if inlist(country								,"Vietnam, Republic of"	,"Republic Of Vietnam"	)	
replace	ccode =	820		if inlist(country	,"Mys"	,"Malaysia"						,"Malaysia"		)	
replace	ccode =	830		if inlist(country	,"Sgp"	,"Singapore"						,"Singapore"		)	
replace	ccode =	835		if inlist(country	,"Brn"	,"Bruneidarussalam"						,"Brunei"		)	
replace	ccode =	840		if inlist(country	,"Phl"	,"Philippines"						,"Philippines"		)	
replace	ccode =	850		if inlist(country	,"Idn"	,"Indonesia"						,"Indonesia"		)	
replace	ccode =	860		if inlist(country	,"Tls"	,"Timorleste"	,"Easttimor"					,"Timor"		)	
replace	ccode =	900		if inlist(country	,"Aus"	,"Australia"						,"Australia"		)	
replace	ccode =	910		if inlist(country	,"Png"	,"Papuanewguinea"						,"NewGuineaandPapua"		)	
replace	ccode =	920		if inlist(country	,"Nzl"	,"Newzealand"						,"New Zealand"		)	
replace	ccode =	935		if inlist(country	,"Vut"	,"Vanuatu"						,"Vanuatu"	,"Newhebrides"	)	
replace	ccode =	940		if inlist(country	,"Slb"	,"Solomonislands"						,"Solomon Islands"	,"Solomon Is"	)	
replace	ccode =	950		if inlist(country	,"Fji"	,"Fiji"						,"Fiji"		)	
replace	ccode =	970		if inlist(country	,"Kir"	,"Kiribati"						,"Kiribati"		)	
replace	ccode =	971		if inlist(country	,"Nru"	,"Nauru"						,"Nauru"		)	
replace	ccode =	972		if inlist(country	,"Ton"	,"Tonga"						,"Tonga"		)	
replace	ccode =	973		if inlist(country	,"Tuv"	,"Tuvalu"						,"Tuvalu"		)	
replace	ccode =	983		if inlist(country	,"Mhl"	,"Marshallislands"						,"Marshall Islands"	,"Marshall Is"	)	
replace	ccode =	986		if inlist(country	,"Plw"	,"Palau"						,"Palau"		)	
replace	ccode =	987		if inlist(country	,"Fsm"	,"Micronesiafederatedstatesof"	,"Federatedstatesofmicronesia"	,"Micronesiafedsts"				,"Federated States of Micronesia"	,"Federated States Of Micronesia"	)	
replace	ccode =	990		if inlist(country	,"Wsm"	,"Samoa"						,"Western Samoa"		)	
replace	ccode =	2000		if inlist(country	,"Hkg"	,"Hongkong"	,"Chinahongkongsar"	,"Hongkongsar"	,"Hongkongsarchina"	,"Hongkongchina"		,"Hong Kong"	,"China, Hong Kong Sar"	)	
replace	ccode =	2001		if inlist(country	,"Grl"	,"Greenland"						,"Greenland"		)	
replace	ccode =	2002		if inlist(country	,"Guf"	,"Frenchguiana"						,"(French) Guiana"	,"Guyana, French"	)	
replace	ccode =	2003		if inlist(country	,"Ncl"	,"Newcaledonia"						,"New Caledonia"	,"NewCaledonia"	)	
replace	ccode =	2004		if inlist(country	,"Esh"	,"Westernsahara"						,"Sahrawi Arab Democratic Republic"	,"Western Sahara"	)	
replace	ccode =	2005		if inlist(country								,"BES islands Bonaire"	,"Saint Eustatius And Saba"	)	
replace	ccode =	2006		if inlist(country								,"Curacao"		)	
replace	ccode =	2007		if inlist(country	,"Blm"	,"Saintbarthelemy"						,"Saint-Barthelemy"	,"Saint Barthelemy"	)	
replace	ccode =	2008		if inlist(country	,"Maf"	,"Saintmartinfrenchpart"	,"Saintmartin"	,"Stmartinfrenchpart"	,"Stmartin"			,"Saint Martin"	,"St. Martin (French Part)"	)	
replace	ccode =	2009		if inlist(country								,"Sintmaartendutchpart"	,"Sintmaarten"	)	
replace	ccode =	2010		if inlist(country	,"Ala"	,"Alandislands"						,"Aland Islands"	,"Aland"	)	
replace	ccode =	2011		if inlist(country	,"Ggy"	,"Guernsey"						,"Guernsey"	,"Bailiwick of Guernsey"	)	
replace	ccode =	2012		if inlist(country	,"Jey"	,"Jersey"						,"Jersey"	,"Bailiwick of Jersey"	)	
replace	ccode =	2013		if inlist(country								,"Sark"		)	
replace	ccode =	2014		if inlist(country	,"Pcn"	,"Pitcairn"	,"Pitcairnislands"					,"Pitcairn"	,"Pitcairn Islands"	)	
replace	ccode =	2015		if inlist(country	,"Sjm"	,"Svalbardandjanmayen"						,"Svalbard"	,"Spitzbergen"	)	
replace	ccode =	2016		if inlist(country	,"Pse"	,"Palestinianterritoryoccupied"	,"Stateofpalestine"	,"Palestine"	,"Westbankandgaza"	,"Palestinianadmareas"		,"Palestinian Administration Areas"	,"Palestinian Adm. Areas"	)	
replace	ccode =	2017		if inlist(country	,"Cok"	,"Cookislands"						,"Cook Islands"		)	 //semi-sovereign country accord to GW
replace	ccode =	2018		if inlist(country	,"Niu"	,"Niue"						,"Niue"		)	 //semi-sovereign country accord to GW
replace	ccode =	2019		if inlist(country	,"Mnp"	,"Northernmarianaislands"	,"Northernmarianas"					,"Northern Marianas Islands"	,"Northern Mariana Islands"	)	 //semi-sovereign country accord to GW
replace	ccode =	2020		if inlist(country	,"Asm"	,"Americansamoa"								)	
replace	ccode =	2021		if inlist(country	,"Aia"	,"Anguilla"								)	
replace	ccode =	2022		if inlist(country	,"Abw"	,"Aruba"								)	
replace	ccode =	2023		if inlist(country	,"Bmu"	,"Bermuda"								)	
replace	ccode =	2024		if inlist(country	,"Cym"	,"Caymanislands"								)	
replace	ccode =	2025		if inlist(country	,"Cxr"	,"Christmasisland"								)	
replace	ccode =	2026		if inlist(country	,"Cck"	,"Cocoskeelingislands"								)	
replace	ccode =	2027		if inlist(country	,"Flk"	,"Falklandislandsmalvinas"	,"Falklandislands"							)	
replace	ccode =	2028		if inlist(country	,"Pyf"	,"Frenchpolynesia"								)	
replace	ccode =	2029		if inlist(country	,"Gib"	,"Gibraltar"								)	
replace	ccode =	2030		if inlist(country	,"Glp"	,"Guadeloupe"								)	
replace	ccode =	2031		if inlist(country	,"Gum"	,"Guam"								)	
replace	ccode =	2032		if inlist(country	,"Imn"	,"Isleofman"								)	
replace	ccode =	2033		if inlist(country	,"Mac"	,"Macao"	,"Chinamacaosar"	,"Macaosar"	,"Macaosarchina"					)	
replace	ccode =	2034		if inlist(country	,"Mtq"	,"Martinique"								)	
replace	ccode =	2035		if inlist(country	,"Myt"	,"Mayotte"								)	
replace	ccode =	2036		if inlist(country	,"Msr"	,"Montserrat"								)	
replace	ccode =	2037		if inlist(country	,"Ant"	,"Netherlandsantilles"								)	
replace	ccode =	2038		if inlist(country	,"Nfk"	,"Norfolkisland"								)	
replace	ccode =	2039		if inlist(country	,"Reu"	,"Reunion"								)	
replace	ccode =	2040		if inlist(country	,"Shn"	,"Sainthelenaascensionandtristandacunha"	,"Sainthelena"	,"Sthelena"						)	
replace	ccode =	2041		if inlist(country	,"Spm"	,"Saintpierreandmiquelon"	,"Stpierremiquelon"							)	
replace	ccode =	2042		if inlist(country	,"Tkl"	,"Tokelau"								)	
replace	ccode =	2043		if inlist(country	,"Tca"	,"Turksandcaicosislands"								)	
replace	ccode =	2044		if inlist(country	,"Vgb"	,"Virginislandsbritish"	,"Britishvirginislands"	,"Virginislandsuk"						)	
replace	ccode =	2045		if inlist(country	,"Vir"	,"Virginislandsus"	,"Unitedstatesvirginislands"							)	
replace	ccode =	2046		if inlist(country	,"Wlf"	,"Wallisandfutuna"	,"Wallisfutuna"							)	
replace	ccode =	2047		if inlist(country	,"Ata"	,"Antarctica"								)	
replace	ccode =	2048		if inlist(country	,"Bvt"	,"Bouvetisland"								)	
replace	ccode =	2049		if inlist(country	,"Iot"	,"Britishindianoceanterritory"								)	
replace	ccode =	2050		if inlist(country	,"Fro"	,"Faroeislands"								)	
replace	ccode =	2051		if inlist(country	,"Atf"	,"Frenchsouthernterritories"								)	
replace	ccode =	2052		if inlist(country	,"Hmd"	,"Heardislandandmcdonaldislands"								)	
replace	ccode =	2053		if inlist(country	,"Mda"	,"Moldovarepublicof"	,"Republicofmoldova"							)	
replace	ccode =	2054		if inlist(country	,"Sgs"	,"Southgeorgiaandthesouthsandwichislands"	,"Southgeorgiaandsouthsandwichislands"							)	
replace	ccode =	2055		if inlist(country	,"Umi"	,"Unitedstatesminoroutlyingislands"								)	
replace	ccode =	3000		if inlist(country								,"Somaliland"		)	
replace	ccode =	3001		if inlist(country								,"Leeward Islands"		)	
replace	ccode =	3002		if inlist(country								,"Leeward Island F"		)	 //different from Leeward Islands. The Fench LI: the western islands of the Society Islands in French Polynesia
}
 
//do "$do/COUNTRY value label.do"
}

// NO COUNTRY CODE ASSIGNED for the following entries.
// A couple islands should be unassigned.
// I just drop these.
capture noisily groups country if ccode==. | ccode==-999
