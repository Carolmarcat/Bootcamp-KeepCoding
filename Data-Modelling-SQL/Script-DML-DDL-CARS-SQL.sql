create schema prueba_coches authorization ehqotius;

create table prueba_coches.grupo_empresarial(
	idgrupoe char(5), -- PK
	nombre varchar (20) not null,
	constraint grupo_empresarial_PK primary key(idgrupoe)

);

create table prueba_coches.marca(
	idmarca varchar (10), -- PK
	nombre varchar (20) not null,
	idgrupoe char(5) not null, -- FK
	constraint marca_PK primary key (idmarca),
	constraint grupo_empresarial_FK foreign key (idgrupoe) references prueba_coches.grupo_empresarial(idgrupoe)
	
);

create table prueba_coches.modelo(
	idmodelo varchar(20), -- PK
	nombre varchar(20) not null,
	idmarca varchar (10) not null, -- FK
	constraint modelo_PK primary key (idmodelo),
	constraint marca_FK foreign key (idmarca) references prueba_coches.marca(idmarca)
	
);


create table prueba_coches.aseguradora(
	idaseguradora varchar (4), -- PK
	nombre varchar (20) not null,
	constraint aseguradora_PK primary key (idaseguradora)

);

create table prueba_coches.coche(
	idcoche char(17), -- PK
	nombre varchar(200) not null,
	color varchar(15) not null,
	total_km integer null,
	matricula varchar(20) null,
	fecha_de_compra date not null,
	poliza varchar (20),
	idaseguradora varchar(20), -- FK 
	idmodelo varchar (20), -- FK 
	constraint coche_PK primary key(idcoche),
	constraint aseguradora_FK foreign key (idaseguradora) references prueba_coches.aseguradora(idaseguradora),
	constraint modelo_FK foreign key (idmodelo) references prueba_coches.modelo(idmodelo)
	

); 



create table prueba_coches.moneda ( 
	idtipo_moneda varchar (4), -- PK
	nombre varchar (100) not null,
	constraint moneda_PK primary key (idtipo_moneda)

);

create table prueba_coches.revisiones (  
	idrevision varchar (7), -- PK 
	idcoche char(17), -- FK
	total_km_antes_revision integer null, 
	fecha_revision date not null,
	importe_total_revision integer null,
	idtipo_moneda varchar (4), -- FK
	constraint revisiones_PK primary key (idrevision),
	constraint coche_FK foreign key (idcoche) references prueba_coches.coche(idcoche),
	constraint moneda_FK foreign key (idtipo_moneda) references prueba_coches.moneda(idtipo_moneda)
	

);


insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AFN','Afghani');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('EUR','Euro');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ALL','Lek');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('DZD','Algerian Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('USD','US Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AOA','Kwanza');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XCD','East Caribbean Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('','No universal currency');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ARS','Argentine Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AMD','Armenian Dram');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AWG','Aruban Florin');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AUD','Australian Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AZN','Azerbaijan Manat');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BSD','Bahamian Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BHD','Bahraini Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BDT','Taka');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BBD','Barbados Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BYN','Belarusian Ruble');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BZD','Belize Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XOF','CFA Franc BCEAO');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BMD','Bermudian Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('INR','Indian Rupee');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BTN','Ngultrum');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BOB','Boliviano');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BOV','Mvdol');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BAM','Convertible Mark');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BWP','Pula');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('NOK','Norwegian Krone');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BRL','Brazilian Real');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BND','Brunei Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BGN','Bulgarian Lev');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('BIF','Burundi Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CVE','Cabo Verde Escudo');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KHR','Riel');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XAF','CFA Franc BEAC');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CAD','Canadian Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KYD','Cayman Islands Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CLP','Chilean Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CLF','Unidad de Fomento');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CNY','Yuan Renminbi');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('COP','Colombian Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('COU','Unidad de Valor Real');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KMF','Comorian Franc ');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CDF','Congolese Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('NZD','New Zealand Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CRC','Costa Rican Colon');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('HRK','Kuna');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CUP','Cuban Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CUC','Peso Convertible');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ANG','Netherlands Antillean Guilder');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CZK','Czech Koruna');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('DKK','Danish Krone');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('DJF','Djibouti Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('DOP','Dominican Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('EGP','Egyptian Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SVC','El Salvador Colon');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ERN','Nakfa');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SZL','Lilangeni');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ETB','Ethiopian Birr');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('FKP','Falkland Islands Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('FJD','Fiji Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XPF','CFP Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GMD','Dalasi');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GEL','Lari');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GHS','Ghana Cedi');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GIP','Gibraltar Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GTQ','Quetzal');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GBP','Pound Sterling');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GNF','Guinean Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('GYD','Guyana Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('HTG','Gourde');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('HNL','Lempira');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('HKD','Hong Kong Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('HUF','Forint');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ISK','Iceland Krona');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('IDR','Rupiah');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XDR','SDR (Special Drawing Right)');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('IRR','Iranian Rial');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('IQD','Iraqi Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ILS','New Israeli Sheqel');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('JMD','Jamaican Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('JPY','Yen');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('JOD','Jordanian Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KZT','Tenge');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KES','Kenyan Shilling');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KPW','North Korean Won');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KRW','Won');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KWD','Kuwaiti Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('KGS','Som');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('LAK','Lao Kip');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('LBP','Lebanese Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('LSL','Loti');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ZAR','Rand');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('LRD','Liberian Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('LYD','Libyan Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CHF','Swiss Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MOP','Pataca');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MKD','Denar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MGA','Malagasy Ariary');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MWK','Malawi Kwacha');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MYR','Malaysian Ringgit');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MVR','Rufiyaa');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MRU','Ouguiya');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MUR','Mauritius Rupee');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XUA','ADB Unit of Account');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MXN','Mexican Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MXV','Mexican Unidad de Inversion (UDI)');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MDL','Moldovan Leu');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MNT','Tugrik');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MAD','Moroccan Dirham');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MZN','Mozambique Metical');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('MMK','Kyat');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('NAD','Namibia Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('NPR','Nepalese Rupee');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('NIO','Cordoba Oro');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('NGN','Naira');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('OMR','Rial Omani');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PKR','Pakistan Rupee');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PAB','Balboa');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PGK','Kina');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PYG','Guarani');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PEN','Sol');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PHP','Philippine Peso');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('PLN','Zloty');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('QAR','Qatari Rial');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('RON','Romanian Leu');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('RUB','Russian Ruble');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('RWF','Rwanda Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SHP','Saint Helena Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('WST','Tala');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('STN','Dobra');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SAR','Saudi Riyal');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('RSD','Serbian Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SCR','Seychelles Rupee');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SLL','Leone');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SGD','Singapore Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('XSU','Sucre');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SBD','Solomon Islands Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SOS','Somali Shilling');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SSP','South Sudanese Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('LKR','Sri Lanka Rupee');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SDG','Sudanese Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SRD','Surinam Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SEK','Swedish Krona');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CHE','WIR Euro');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('CHW','WIR Franc');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('SYP','Syrian Pound');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TWD','New Taiwan Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TJS','Somoni');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TZS','Tanzanian Shilling');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('THB','Baht');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TOP','Pa''anga');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TTD','Trinidad and Tobago Dollar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TND','Tunisian Dinar');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TRY','Turkish Lira');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('TMT','Turkmenistan New Manat');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('UGX','Uganda Shilling');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('UAH','Hryvnia');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('AED','UAE Dirham');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('USN','US Dollar (Next day)');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('UYU','Peso Uruguayo');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('UYI','Uruguay Peso en Unidades Indexadas (UI)');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('UYW','Unidad Previsional');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('UZS','Uzbekistan Sum');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('VUV','Vatu');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('VES','Bolívar Soberano');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('VND','Dong');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('YER','Yemeni Rial');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ZMW','Zambian Kwacha');
insert into prueba_coches.moneda(idtipo_moneda,nombre) values('ZWL','Zimbabwe Dollar');


insert into prueba_coches.aseguradora (idaseguradora, nombre) values ('MAP','MAPFRE');
insert into prueba_coches.aseguradora (idaseguradora, nombre) values ('DKV','DKV');
insert into prueba_coches.aseguradora (idaseguradora, nombre) values ('LIB','LIBERTY');
insert into prueba_coches.aseguradora (idaseguradora, nombre) values ('ZUR','ZURICH');

insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE001','Grupo Volkswagen');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE002','BMW group');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE003','Ferrari N.V ');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE004','Ford');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE005','Honda');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE006','FCA');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE007','Tata Motors');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE008','Daimler');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE009','PSA');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE010','Toyota');
insert into prueba_coches.grupo_empresarial(idgrupoe, nombre) values ('GE011','Geely');



insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA001','Audi','GE001');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA002','BMW','GE002');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA003','Ferrari','GE003');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA004','Ford','GE004');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA005','Honda','GE005');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA006','Jeep','GE006');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA007','Lamborghini','GE001');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA008','Land Rover','GE007');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA009','Mercedes Benz','GE008');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA010','MINI','GE002');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA011','Peugeot','GE009');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA012','Smart','GE008');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA013','Toyota','GE010');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA014','Volkswagen','GE001');
insert into prueba_coches.marca (idmarca, nombre,idgrupoe) values ('MA015','Volvo','GE011');



insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD001','Q7','MA001');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD002','A7','MA001');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD003','A4','MA001');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD004','A5','MA001');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD005','R1200 ','MA002');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD006','3 Series','MA002');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD007','2 Series','MA002');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD008','740','MA002');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD009','M5','MA002');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD010','612 Scaglietti','MA003');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD011','California','MA003');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD012','F430 Spyder ','MA003');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD013','Testarossa ','MA003');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD014','F 350','MA004');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD015','Edge','MA004');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD016','Explorer','MA004');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD017','Thunderbird','MA004');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD018','Accord','MA005');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD019','Trx500','MA005');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD020','CR V','MA005');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD021','Civic','MA005');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD022','Comanche','MA006');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD023','Gallardo','MA007');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD024','Murcielago','MA007');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD025','LR4','MA008');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD026','LR3','MA008');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD027','M Class','MA009');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD028','E Class','MA009');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD029','GLK Class','MA009');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD030','Cooper','MA010');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD031','505','MA011');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD032','fortwo','MA012');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD033','Corolla','MA013');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD034','RAV4','MA013');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD035','Highlander','MA013');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD036','Passat','MA014');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD037','Touareg','MA014');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD038','Golf','MA014');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD039','S60','MA015');
insert into prueba_coches.modelo (idmodelo, nombre, idmarca) values ('MOD040','S80','MA015');

insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WA1LGAFE4CD240418','Audi Q7','Verde Oscuro','6176','5432KLA','02/02/2010','POL001','MAP','MOD001');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WAU2GAFC0CN078651','Audi A7','Rojo Plateado','11801','5433KLB','03/02/2010','POL002','DKV','MOD002');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WAUSF58E060019951','Audi A4','Azul Marino','17918','5434KLC','04/02/2010','POL003','LIB','MOD003');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WAUWFBFR0E0013233','Audi A5','Blanco Marfil','18524','5435KLD','05/02/2010','POL004','ZUR','MOD004');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WB1046000CZX52415','BMW R1200','Gris Plateado','7961','5436KLH','06/02/2010','POL005','MAP','MOD005');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WBAEN33423PC12451','BMW 3 Series ','Azul Claro','7725','5437KLC','07/02/2010','POL006','DKV','MOD006');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WBA1M5C51GV327255','BMW 2 Series ','Verde Oscuro','4140','5438KLC','08/02/2010','POL007','LIB','MOD007');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WBAYE4C5XED138435','BMW 740 ','Rojo Plateado','8654','5439KLC','09/02/2010','POL008','ZUR','MOD008');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WBSDE9346YB650546','BMW M5 ','Azul Marino','18790','5440KLC','10/02/2010','POL009','MAP','MOD009');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('ZFFJB54A490165546','Ferrari 612 Scaglietti','Blanco Marfil','17375','5441KLC','11/02/2010','POL010','DKV','MOD010');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('ZFF65LJA0C0185404','Ferrari California ','Gris Plateado','16740','5442KLC','12/02/2010','POL011','LIB','MOD011');

insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('ZFFEW59L770153579','Ferrari F430 Spyder ','Azul Claro','12196','5443KLC','03/02/2010','POL012','ZUR','MOD012');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('ZFFSG17A0L0084190','Ferrari Testarossa ','Verde Oscuro','9905','5444KLC','03/03/2010','POL013','MAP','MOD013');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('1FDSX31L13EC58609','Ford F 350 ','Rojo Plateado','9326','5445KLC','03/04/2010','POL014','DKV','MOD014');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('2FMDK49L68BA54523','Ford Edge ','Azul Marino','13122','5446KLC','03/05/2010','POL015','LIB','MOD015');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('1FMHK7B85BGA35955','Ford Explorer','Blanco Marfil','13110','5447KLC','03/06/2010','POL016','ZUR','MOD016');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('1FABP46W1FH220433','Ford Thunderbird','Gris Plateado','19609','5448KLC','03/07/2010','POL017','MAP','MOD017');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('JHMCD5633VL003169','Honda Accord ','Azul Claro','3963','5449KLC','03/08/2010','POL018','DKV','MOD018');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('1HFTE26E3B4100785','Honda Trx500 ','Verde Oscuro','2100','5450KLC','03/09/2010','POL019','LIB','MOD019');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('5J6RE3H32AL017286','Honda CR V','Rojo Plateado','16726','5451KLC','03/10/2010','POL020','ZUR','MOD020');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('2HGFA15599H320395','Honda Civic','Azul Marino','11915','5452KLC','03/11/2010','POL021','MAP','MOD021');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('1JTBA6610G0010061','Jeep Comanche','Blanco Marfil','7850','5453KLC','03/12/2010','POL022','DKV','MOD022');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('ZHWGU11M25L320542','Lamborghini Gallardo','Gris Plateado','6888','5454KLC','03/13/2010','POL023','LIB','MOD023');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('ZHWBU37M08LA02696','Lamborghini Murcielago','Azul Claro','18147','5455KLC','03/14/2010','POL024','ZUR','MOD024');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('SALAG2D43DA867393','Land Rover LR4 ','Verde Oscuro','6785','5456KLC','03/15/2010','POL025','MAP','MOD025');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('SALAE24486A244523','Land Rover LR3 ','Rojo Plateado','13475','5457KLC','03/16/2010','POL026','DKV','MOD026');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('4JGAB54E42A297302','Mercedes Benz M Class ','Azul Marino','7747','5458KLC','03/17/2010','POL027','LIB','MOD027');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WDBUF22X77B044404','Mercedes Benz E Class ','Blanco Marfil','8157','5459KLC','03/18/2010','POL028','ZUR','MOD028');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WDCGG8HB3AF316550','Mercedes Benz GLK Class','Gris Plateado','6080','5460KLC','03/19/2010','POL029','MAP','MOD029');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WMWRH33578TU81025','MINI Cooper','Azul Claro','3276','5461KLC','03/20/2010','POL030','DKV','MOD030');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('VF3BA4117ES358153','Peugeot 505 ','Verde Oscuro','13832','5462KLC','03/21/2010','POL031','LIB','MOD031');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WMEEJ3BA7FK799039','Smart fortwo','Rojo Plateado','19380','5463KLC','03/22/2010','POL032','ZUR','MOD032');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('JTDBU4EE6B9147561','Toyota Corolla','Azul Marino','19097','5464KLC','03/23/2010','POL033','MAP','MOD033');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('JTMBK4DV7AD017565','Toyota RAV4','Blanco Marfil','17549','5465KLC','03/24/2010','POL034','DKV','MOD034');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('JTEHD21A960045307',' Toyota Highlander','Gris Plateado','12994','5466KLC','03/25/2010','POL035','LIB','MOD035');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WVWCK73C07E170555','Volkswagen Passat ','Azul Claro','6909','5467KLC','03/26/2010','POL036','ZUR','MOD036');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('WVGCB67L07D019690','Volkswagen Touareg ','Verde Oscuro','9243','5468KLC','03/27/2010','POL037','MAP','MOD037');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('9BWFL21J144008858','Volkswagen Golf','Rojo Plateado','14074','5469KLC','03/28/2010','POL038','DKV','MOD038');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('YV1RS595552457146','Volvo S60','Azul Marino','11569','5470KLC','03/29/2010','POL039','LIB','MOD039');
insert into prueba_coches.coche (idcoche, nombre, color, total_km, matricula, fecha_de_compra, poliza, idaseguradora, idmodelo) values ('YV1TS92D941345873','Volvo S80 ','Blanco Marfil','10105','5471KLC','03/30/2010','POL040','ZUR','MOD040');


insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV001','WA1LGAFE4CD240418',6176,'01/02/2019',209,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV002','WAU2GAFC0CN078651',11801,'01/03/2019',172,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV003','WAUSF58E060019951',17918,'01/04/2019',260,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV004','WAUWFBFR0E0013233',18524,'01/05/2019',123,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV005','WB1046000CZX52415',7961,'01/06/2019',124,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV006','WBAEN33423PC12451',7725,'01/07/2019',185,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV007','WBA1M5C51GV327255',4140,'01/08/2019',156,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV008','WBAYE4C5XED138435',8654,'01/09/2019',192,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV009','WBSDE9346YB650546',18790,'01/10/2019',274,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV010','ZFFJB54A490165546',17375,'01/11/2019',221,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV011','ZFF65LJA0C0185404',16740,'01/12/2019',93,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV012','ZFFEW59L770153579',12196,'01/13/2019',132,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV013','ZFFSG17A0L0084190',9905,'01/14/2019',266,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV014','1FDSX31L13EC58609',9326,'01/15/2019',278,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV015','2FMDK49L68BA54523',13122,'01/16/2019',100,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV016','1FMHK7B85BGA35955',13110,'01/17/2019',177,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV017','1FABP46W1FH220433',19609,'01/18/2019',259,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV018','JHMCD5633VL003169',3963,'01/19/2019',181,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV019','1HFTE26E3B4100785',2100,'01/20/2019',138,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV020','5J6RE3H32AL017286',16726,'01/21/2019',223,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV021','2HGFA15599H320395',11915,'01/22/2019',94,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV022','1JTBA6610G0010061',7850,'01/23/2019',193,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV023','ZHWGU11M25L320542',6888,'01/24/2019',103,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV024','ZHWBU37M08LA02696',18147,'01/25/2019',231,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV025','SALAG2D43DA867393',6785,'01/26/2019',244,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV026','SALAE24486A244523',13475,'01/27/2019',282,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV027','4JGAB54E42A297302',7747,'01/28/2019',260,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV028','WDBUF22X77B044404',8157,'01/29/2019',276,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV029','WDCGG8HB3AF316550',6080,'01/30/2019',238,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV030','WMWRH33578TU81025',3276,'01/31/2019',187,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV031','VF3BA4117ES358153',13832,'02/01/2019',121,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV032','WMEEJ3BA7FK799039',19380,'02/02/2019',142,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV033','JTDBU4EE6B9147561',19097,'02/03/2019',106,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV034','JTMBK4DV7AD017565',17549,'02/04/2019',293,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV035','JTEHD21A960045307',12994,'02/05/2019',268,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV036','WVWCK73C07E170555',6909,'02/06/2019',91,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV037','WVGCB67L07D019690',9243,'02/07/2019',262,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV038','9BWFL21J144008858',14074,'02/08/2019',268,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV039','YV1RS595552457146',11569,'02/09/2019',173,'EUR');
insert into prueba_coches.revisiones(idrevision, idcoche, total_km_antes_revision, fecha_revision,importe_total_revision,idtipo_moneda) values('REV040','YV1TS92D941345873',10105,'02/10/2019',198,'EUR');





