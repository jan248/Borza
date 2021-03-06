--
-- File generated with SQLiteStudio v3.2.1 on ned. maj 10 21:11:21 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: BORZE
CREATE TABLE BORZE (OZNAKA STRING PRIMARY KEY, IME STRING NOT NULL, REGIJA STRING NOT NULL);
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('NYSE', 'New York Stock Exchange', 'USA');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('NASDAQ', 'Nasdaq', 'USA');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('JPX', 'Japan Exchange Group', 'Japan');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('LSE', 'London Stock Exchange', 'UK');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('SSE', 'Shanghai Stock Exchange', 'China');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('SEHK', 'Hong Kong Stock Exchange', 'Hong Kong');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('EEA', 'Euronext', 'European Union');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('SZSE', 'Shenzen Stock Exchange', 'China');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('TSX', 'TMX Group', 'Canada');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('BSE', 'Bombay Stock Exchange', 'India');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('ASX', 'Australian Securities Exchange', 'Australia');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('KRX', 'Korea Exchange', 'South Korea');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('VSE', 'Vilnius Stock Exchange', 'Lithuania');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('ICEX', 'Iceland Stock Exchange', 'Iceland');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('AMX', 'Armenia Securities Exchange', 'Armenia');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('TWSE', 'Taiwan Stock Exchange', 'Taiwan');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('MISX', 'Moscow Exchange', 'Russia');
INSERT INTO BORZE (OZNAKA, IME, REGIJA) VALUES ('BME', 'Bolsas y Mercados Espanoles', 'Spain');

-- Table: DELNICE
CREATE TABLE DELNICE (Oznaka STRING UNIQUE NOT NULL PRIMARY KEY, Ime STRING UNIQUE NOT NULL, Cena NUMERIC NOT NULL, Borza STRING REFERENCES BORZE (OZNAKA), Sektor STRING REFERENCES SEKTOR (ID), KOLICINA INTEGER);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('SRCE', '1ST SOURCE CORP', 50.71, 'KRX', 'XLV', 200);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('AIR', 'AAR CORP', 46.78, 'VSE', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('AXAS', 'ABRAXAS PETE CORP', 0.35, 'SEHK', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ARAY', 'ACCURAY INC', 2.61, 'NASDAQ', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ACOR', 'ACORDA THERAPEUTICS INC', 2.28, 'SSE', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('MITT', 'AG MORTGAGE INVT TR INC', 15.62, 'LSE', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ADC', 'AGREE REALTY CORP', 69.6, 'JPX', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('AKS', 'AK STEEL HOLDING CORP', 3.05, 'ASX', 'XLI', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('AIN', 'ALBANY INTERNATIONAL', 76.7, 'LSE', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ALEX', 'ALEXANDER & BALDWIN INC', 21.7, 'SSE', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ATEC', 'ALPHATEC HOLDINGS', 6.65, 'SZSE', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('RESI', 'ALTISOURCE RESIDENTIAL', 12.3, 'SEHK', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CRMT', 'AMERICAS CAR-MART INC', 106.81, 'AMX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ATLO', 'AMES NATL CORP', 27.4, 'KRX', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('AMKR', 'AMKOR TECHNOLOGY INC', 12.93, 'JPX', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ARI', 'APOLLO COMMERCIAL RE', 18.13, 'SZSE', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('AINV', 'APOLLO INVESTMENT CORP', 17.49, 'AMX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ARNA', 'ARENA PHARMACEUTICALS', 46.27, 'MISX', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BKR', 'BAKER MICHAEL CORP', 25.04, 'SSE', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BLX', 'BANCO LATINOAMERICANO', 22.17, 'BME', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BFIN', 'BANKFINANCIAL CORP', 12.9, 'TSX', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BBX', 'BBX CAPITAL CORPORATION', 4.26, 'SEHK', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BGFV', 'BIG 5 SPORTING GOODS', 3.16, 'VSE', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BDSI', 'BIODELIVERY SCIENCES', 5.89, 'SEHK', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BIOS', 'BIOSCRIP INC', 4.13, 'VSE', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BJRI', 'BJS RESTAURANTS INC', 39.99, 'AMX', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BLKB', 'BLACKBAUD INC', 79.34, 'BSE', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BCOR', 'BLUCORA INC', 25.24, 'BSE', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('SAM', 'BOSTON BEER INC', 369.48, 'VSE', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BRC', 'BRADY CORP', 57.02, 'AMX', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BKE', 'BUCKLE INC', 25.21, 'ASX', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CFFI', 'C & F FINANCIAL CORP', 52.81, 'VSE', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CALM', 'CAL MAINE FOODS INC', 38, 'SSE', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ELY', 'CALLAWAY GOLF CO', 21.98, 'MISX', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CSU', 'CAPITAL SENIOR LIVING', 3.16, 'NASDAQ', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CPST', 'CAPSTONE TURBINE CORP', 3.05, 'VSE', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CASS', 'CASS INFORMATION SYSTEM', 56.48, 'VSE', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CVCO', 'CAVCO INDUSTRIES INC', 197.93, 'MISX', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CTIC', 'CELL THERAPEUTICS INC', 1.44, 'AMX', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CSFL', 'CENTERSTATE BANKS INC', 24.13, 'LSE', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CETV', 'CENTRAL EUROPEAN MEDIA', 4.47, 'LSE', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CLDT', 'CHATHAM LODGING TR', 17.58, 'SEHK', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CHMG', 'CHEMUNG FINL CORP', 42.35, 'TWSE', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CIA', 'CITIZENS INC', 6.77, 'BME', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CLNY', 'COLONY FINANCIAL INC', 4.84, 'VSE', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FIX', 'COMFORT SYSTEMS USA INC', 48.37, 'SSE', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CMC', 'COMMERCIAL METALS CO', 22.8, 'MISX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CBU', 'COMMUNITY BANK SYSTEMS', 71.21, 'TSX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CIX', 'COMPX INTERNATIONAL', 15.2, 'AMX', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CONN', 'CONNS INC', 10.62, 'NYSE', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CORE', 'CORE MARK HOLDING CO IN', 25.09, 'BSE', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CSOD', 'CORNERSTONE ONDEMAND IN', 59.3, 'AMX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CSGP', 'COSTAR GROUP INC', 629.69, 'BME', 'XLI', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('COWN', 'COWEN GROUP INC', 16.55, 'SEHK', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CRAI', 'CRA INTERNATIONAL INC', 54.49, 'KRX', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('CMLS', 'CUMULUS MEDIA INC', 16.42, 'NASDAQ', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('DAR', 'DARLING INTERNATIONAL', 28.49, 'LSE', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('DHIL', 'DIAMOND HILL INVESTMENT', 141.7, 'SZSE', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('DMRC', 'DIGIMARC CORPORATION', 35.94, 'TSX', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('DCOM', 'DIME CMNTY BANCSHARES', 19.99, 'SZSE', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('PLOW', 'DOUGLAS DYNAMICS INC', 56.04, 'KRX', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('DXPE', 'DXP ENTERPRISES INC NEW', 39.4, 'SSE', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('BOOM', 'DYNAMIC MATERIALS CORP', 44.85, 'AMX', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EGP', 'EASTGROUP PROPERTIES IN', 130.8, 'SEHK', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EBS', 'EMERGENT BIOSOLUTIONS', 56.68, 'ASX', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ENTA', 'ENANTA PHARMACEUTICALS', 60.33, 'AMX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('WIRE', 'ENCORE WIRE CORP', 56.83, 'TWSE', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ELGX', 'ENDOLOGIX INC', 1.91, 'TWSE', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EBF', 'ENNIS INC', 21.26, 'LSE', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EBTC', 'ENTERPRISE BANCORP INC', 33.5, 'EEA', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EFSC', 'ENTERPRISE FINL SERVICE', 48.18, 'ASX', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ENV', 'ENVESTNET INC', 73.63, 'AMX', 'XLI', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EPR', 'EPR PROPERTIES', 70.15, 'ASX', 'SMH', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EPM', 'EVOLUTION PETROLEUM COR', 5.3, 'VSE', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('EXTR', 'EXTREME NETWORKS INC', 7.37, 'EEA', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FBP', 'FIRST BANCORP PR', 10.57, 'AMX', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FBC', 'FLAGSTAR BANCORP INC', 38.48, 'NASDAQ', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FLXS', 'FLEXSTEEL INDUSTRIES IN', 20.65, 'NASDAQ', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FNB', 'FNB CORP', 12.45, 'SSE', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FDP', 'FRESH DEL MONTE PRODUCE', 34.08, 'BSE', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('FUL', 'FULLER H B CO', 48.44, 'ICEX', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GNE', 'GENIE ENERGY LTD', 7.49, 'VSE', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GEOS', 'GEOSPACE TECHNOLOGIES', 15.31, 'SEHK', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GBCI', 'GLACIER BANCORP INC', 44.63, 'TSX', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GOOD', 'GLADSTONE COMMERCIAL', 21.02, 'SSE', 'XLB', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('ENT', 'GLOBAL EAGLE ENTMT INC', 0.46, 'MISX', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GLUU', 'GLU MOBILE INC', 5.75, 'TWSE', 'XLY', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GBDC', 'GOLUB CAP BDC INC', 18.22, 'EEA', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GDP', 'GOODRICH PETROLEUM CORP', 8.95, 'SSE', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GPK', 'GRAPHIC PACKAGING HLDG', 16.1, 'EEA', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('GSIT', 'GSI TECHNOLOGY', 7.13, 'EEA', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HLIT', 'HARMONIC INC', 7.88, 'TWSE', 'XLF', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HWKN', 'HAWKINS INC', 42.89, 'NYSE', 'XLP', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HCI', 'HCI GROUP INC', 43.85, 'TSX', 'XLT', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HIIQ', 'HEALTH INS INNOVATIONS', 18.76, 'LSE', 'IYR', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HTLD', 'HEARTLAND EXPRESS INC', 20.52, 'VSE', 'XLI', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HTLF', 'HEARTLAND FINANCIAL USA', 49.58, 'LSE', 'XLE', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HELE', 'HELEN OF TROY LTD', 189.35, 'SEHK', 'XLU', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HTGC', 'HERCULES TECHNOLOGY GR', 14.01, 'MISX', 'XLV', NULL);
INSERT INTO DELNICE (Oznaka, Ime, Cena, Borza, Sektor, KOLICINA) VALUES ('HTBK', 'HERITAGE COMMERCE CORP', 12.59, 'ASX', 'XLV', NULL);

-- Table: SEKTOR
CREATE TABLE SEKTOR (ID STRING PRIMARY KEY, IME_SEKTORJA STRING NOT NULL, CENA_MRD INTEGER);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLE', 'Energy', 29);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('IYR', 'Real Estate', 32);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLP', 'Consumer Staples', 4);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLY', 'Consumer Discretionary', 5);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLI', 'Industrials', 18);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLU', 'Utilities', 9);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('SMH', 'Infromation Technology', 12);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLT', 'Telecommunication Services', 19);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLF', 'Financials', 40);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLV', 'Healthcare', 30);
INSERT INTO SEKTOR (ID, IME_SEKTORJA, CENA_MRD) VALUES ('XLB', 'Materials', 15);

-- Table: TRANSAKCIJE
CREATE TABLE TRANSAKCIJE (ID INTEGER PRIMARY KEY, TIP STRING NOT NULL, ZNESEK NUMERIC NOT NULL, UPORABNIK REFERENCES UPORABNIK (RACUN) NOT NULL, KOLICINA INTEGER, OZNAKA STRING);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (1, 'Prodaja delnic', '€-1729,63', 'ME18 3657 5386 5782 5241 85', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (2, 'Prodaja delnic', '€-1637,78', 'RO81 TWIH TSVZ H2IR VEWT WDD1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (3, 'Polog premoženja', '€1635,49', 'GL36 1774 9144 5756 67', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (4, 'Polog premoženja', '€504,64', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (5, 'Dvig premoženja', '€9241,36', 'ME92 2178 0939 2836 3617 90', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (6, 'Dvig premoženja', '€7973,05', 'RO81 TWIH TSVZ H2IR VEWT WDD1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (7, 'Dvig premoženja', '€9424,01', 'HR68 2897 0662 4907 9188 1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (8, 'Prodaja delnic', '€1179,21', 'HR59 9419 0381 7302 5040 8', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (9, 'Polog premoženja', '€-8682,70', 'RS11 9966 0249 8908 5013 73', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (10, 'Nakup delnic', '€-9,22', 'BE88 7175 5911 5214', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (11, 'Polog premoženja', '€2952,55', 'FR04 0452 9093 65XV MTZ2 34RV M18', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (12, 'Prodaja delnic', '€-2545,18', 'RO81 TWIH TSVZ H2IR VEWT WDD1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (13, 'Prodaja delnic', '€-3425,52', 'LI30 6249 6TR3 1NCG YLJP S', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (14, 'Nakup delnic', '€2985,51', 'BE83 5343 3959 7819', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (15, 'Nakup delnic', '€3059,19', 'IE04 TPMN 8097 9070 1814 21', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (16, 'Nakup delnic', '€5386,43', 'VG94 MYHF 4151 7424 9707 6485', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (17, 'Polog premoženja', '€6330,62', 'RO81 TWIH TSVZ H2IR VEWT WDD1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (18, 'Polog premoženja', '€7820,10', 'GL36 1774 9144 5756 67', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (20, 'Dvig premoženja', '€-8015,42', 'ME92 2178 0939 2836 3617 90', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (21, 'Prodaja delnic', '€7517,82', 'LB38 3188 TGTS KLKD 0I3L 8VQV XGVT', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (22, 'Nakup delnic', '€2485,29', 'GL36 1774 9144 5756 67', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (23, 'Polog premoženja', '€1962,75', 'GR72 6415 966P KEJ1 KSU9 EEAP CUQ', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (24, 'Prodaja delnic', '€-7249,73', 'LI63 5593 6BY0 SOHU VSPE Y', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (25, 'Polog premoženja', '€-8034,00', 'GL36 1774 9144 5756 67', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (26, 'Nakup delnic', '€-2703,31', 'AL69 5175 9608 NFXD MEOW WCCA E1AY', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (27, 'Polog premoženja', '€2090,70', 'FR43 0303 5721 2419 X6IF IZA2 580', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (28, 'Nakup delnic', '€-7410,69', 'BG42 BOMA 3301 68CK WRJX VK', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (29, 'Prodaja delnic', '€543,89', 'BE88 7175 5911 5214', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (30, 'Prodaja delnic', '€-3766,73', 'BG10 LSJM 2536 43SE IP9P DT', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (31, 'Prodaja delnic', '€8017,55', 'AZ77 HPSR MMMG K8HF TGKO N0ND BZSF', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (32, 'Nakup delnic', '€-8309,99', 'FR04 0452 9093 65XV MTZ2 34RV M18', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (33, 'Prodaja delnic', '€7414,02', 'LB38 3188 TGTS KLKD 0I3L 8VQV XGVT', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (34, 'Dvig premoženja', '€9080,97', 'ME92 2178 0939 2836 3617 90', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (35, 'Prodaja delnic', '€2815,52', 'TR79 7871 22WJ SIC5 X5P1 RVXF TG', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (36, 'Nakup delnic', '€7515,30', 'HU74 6697 9223 0424 8276 9920 1395', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (37, 'Prodaja delnic', '€-169,24', 'BE83 5343 3959 7819', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (38, 'Prodaja delnic', '€2984,82', 'TR79 7871 22WJ SIC5 X5P1 RVXF TG', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (39, 'Nakup delnic', '€-2368,09', 'HR68 2897 0662 4907 9188 1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (40, 'Prodaja delnic', '€-4261,49', 'BE83 5343 3959 7819', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (41, 'Dvig premoženja', '€7118,86', 'BE88 7175 5911 5214', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (42, 'Nakup delnic', '€591,47', 'RO81 TWIH TSVZ H2IR VEWT WDD1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (43, 'Dvig premoženja', '€9878,56', 'EE15 9639 2166 7700 4803', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (44, 'Prodaja delnic', '€8723,48', 'BE28 0639 7765 8125', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (45, 'Polog premoženja', '€-7320,16', 'AZ11 TAIG AZH6 VPOL XKLA OTD7 KISQ', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (46, 'Dvig premoženja', '€4216,07', 'FR06 6184 9982 65G8 OYJA 6KLB H01', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (47, 'Polog premoženja', '€141,57', 'RS11 9966 0249 8908 5013 73', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (48, 'Dvig premoženja', '€-2267,02', 'HU74 6697 9223 0424 8276 9920 1395', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (49, 'Nakup delnic', '€9774,41', 'IE87 QFQC 8541 8093 9002 05', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (50, 'Nakup delnic', '€-7927,63', 'AL69 5175 9608 NFXD MEOW WCCA E1AY', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (51, 'Dvig premoženja', '€-1789,56', 'HR59 9419 0381 7302 5040 8', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (52, 'Dvig premoženja', '€-5280,69', 'NO89 9117 8590 774', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (53, 'Nakup delnic', '€-6216,94', 'HU74 6697 9223 0424 8276 9920 1395', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (54, 'Dvig premoženja', '€6182,20', 'IE87 QFQC 8541 8093 9002 05', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (55, 'Prodaja delnic', '€6217,70', 'TR79 7871 22WJ SIC5 X5P1 RVXF TG', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (56, 'Nakup delnic', '€-1572,96', 'GL36 1774 9144 5756 67', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (57, 'Dvig premoženja', '€4512,81', 'PT57 2123 2747 9316 0741 5677 4', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (58, 'Nakup delnic', '€5055,47', 'PT57 2123 2747 9316 0741 5677 4', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (59, 'Prodaja delnic', '€-2087,19', 'FR04 0452 9093 65XV MTZ2 34RV M18', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (60, 'Polog premoženja', '€9401,13', 'HU84 0768 6071 4181 6667 5012 4522', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (61, 'Prodaja delnic', '€-7035,64', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (62, 'Nakup delnic', '€-1032,43', 'NO60 4510 8873 334', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (63, 'Dvig premoženja', '€8645,06', 'FR06 6184 9982 65G8 OYJA 6KLB H01', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (64, 'Nakup delnic', '€7657,31', 'HR68 2897 0662 4907 9188 1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (65, 'Polog premoženja', '€-3786,84', 'HR18 7489 4117 5446 6860 5', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (66, 'Prodaja delnic', '€2672,97', 'DO27 UMNQ 7332 6123 0787 4224 6527', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (67, 'Dvig premoženja', '€-1469,00', 'BE83 5343 3959 7819', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (68, 'Dvig premoženja', '€-2616,47', 'FR06 6184 9982 65G8 OYJA 6KLB H01', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (69, 'Prodaja delnic', '€-752,20', 'FR43 0303 5721 2419 X6IF IZA2 580', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (70, 'Nakup delnic', '€-7866,96', 'AZ11 TAIG AZH6 VPOL XKLA OTD7 KISQ', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (71, 'Nakup delnic', '€9634,89', 'MR90 6728 2983 4547 0269 6460 643', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (72, 'Prodaja delnic', '€2583,27', 'IE04 TPMN 8097 9070 1814 21', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (73, 'Polog premoženja', '€7232,95', 'BE83 5343 3959 7819', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (74, 'Dvig premoženja', '€-148,55', 'AL69 5175 9608 NFXD MEOW WCCA E1AY', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (75, 'Nakup delnic', '€-1685,99', 'LI30 6249 6TR3 1NCG YLJP S', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (76, 'Nakup delnic', '€8389,51', 'HR18 7489 4117 5446 6860 5', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (77, 'Dvig premoženja', '€-7217,75', 'HR68 2897 0662 4907 9188 1', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (78, 'Nakup delnic', '€7095,71', 'LB38 3188 TGTS KLKD 0I3L 8VQV XGVT', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (79, 'Polog premoženja', '€1409,80', 'BE28 0639 7765 8125', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (80, 'Nakup delnic', '€-9398,86', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (81, 'Nakup delnic', '€-1003,76', 'FR64 0182 8068 96JV 3V3X HAKB Q55', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (82, 'Dvig premoženja', '€-1794,60', 'HU84 0768 6071 4181 6667 5012 4522', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (83, 'Prodaja delnic', '€9164,95', 'HR18 7489 4117 5446 6860 5', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (84, 'Polog premoženja', '€-5645,56', 'IE04 TPMN 8097 9070 1814 21', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (85, 'Dvig premoženja', '€-9421,01', 'GR75 5513 675Q F2QG XPC8 OA0J GRG', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (86, 'Dvig premoženja', '€-4812,68', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (87, 'Polog premoženja', '€-593,29', 'BG42 BOMA 3301 68CK WRJX VK', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (88, 'Nakup delnic', '€-3191,89', 'DK34 5691 8029 3751 30', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (89, 'Dvig premoženja', '€256,93', 'GT80 WB7L GAT2 GQOH P8QZ 4LCC G0YD', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (90, 'Polog premoženja', '€8522,36', 'BG10 LSJM 2536 43SE IP9P DT', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (91, 'Prodaja delnic', '€-7977,07', 'NO89 9117 8590 774', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (92, 'Prodaja delnic', '€-2928,05', 'IE87 QFQC 8541 8093 9002 05', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (93, 'Prodaja delnic', '€-3918,63', 'ES45 1641 7432 1571 4752 1288', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (94, 'Polog premoženja', '€-6113,17', 'FR64 0182 8068 96JV 3V3X HAKB Q55', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (95, 'Dvig premoženja', '€9935,17', 'KW65 ULNG QHG5 BF5R L2GN D4AK 0SZC JQ', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (96, 'Dvig premoženja', '€1621,21', 'HU84 0768 6071 4181 6667 5012 4522', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (97, 'Dvig premoženja', '€-2072,69', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (98, 'Prodaja delnic', '€8849,14', 'IE04 TPMN 8097 9070 1814 21', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (99, 'Prodaja delnic', '€4745,97', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);
INSERT INTO TRANSAKCIJE (ID, TIP, ZNESEK, UPORABNIK, KOLICINA, OZNAKA) VALUES (100, 'Prodaja delnic', '€4795,59', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', NULL, NULL);

-- Table: UPORABNIK
CREATE TABLE UPORABNIK (ID INTEGER PRIMARY KEY, IME STRING NOT NULL, PRIIMEK STRING NOT NULL, DRZAVA STRING NOT NULL, RACUN STRING UNIQUE NOT NULL, SKRBINK BOOLEAN NOT NULL);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (12, 'McCue', 'McCue', 'Russia', 'FR89 2219 2579 36XE CT6F XPUW A96', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (17, 'Stiller', 'Abelson', 'Japan', 'IE04 TPMN 8097 9070 1814 21', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (30, 'Schwieso', 'Twelftree', 'Bosnia and Herzegovina', 'TR79 7871 22WJ SIC5 X5P1 RVXF TG', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (37, 'Crufts', 'Highway', 'Mexico', 'DE34 7955 4728 1120 7523 03', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (60, 'Tripony', 'Killelea', 'Brazil', 'GT80 WB7L GAT2 GQOH P8QZ 4LCC G0YD', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (76, 'Beardon', 'Aistrop', 'Indonesia', 'DK34 5691 8029 3751 30', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (84, 'Hawlgarth', 'Horsell', 'Russia', 'BG42 BOMA 3301 68CK WRJX VK', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (90, 'Chopy', 'Harriskine', 'South Korea', 'PT10 1910 6413 6662 9336 1756 5', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (110, 'Roller', 'Jeeks', 'China', 'AL69 5175 9608 NFXD MEOW WCCA E1AY', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (112, 'Cotta', 'Crosi', 'Greece', 'FR43 0303 5721 2419 X6IF IZA2 580', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (134, 'Capnerhurst', 'Late', 'Indonesia', 'KW65 ULNG QHG5 BF5R L2GN D4AK 0SZC JQ', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (142, 'Edelman', 'Bull', 'Indonesia', 'LI30 6249 6TR3 1NCG YLJP S', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (154, 'Blood', 'Smerdon', 'Ukraine', 'FR81 4338 6938 33ZB KKSN 7AV6 K58', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (163, 'Jellico', 'Novak', 'Yemen', 'GL36 1774 9144 5756 67', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (165, 'Simcox', 'Sabathe', 'Indonesia', 'GR72 6415 966P KEJ1 KSU9 EEAP CUQ', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (168, 'Magwood', 'Gresswell', 'Russia', 'HR59 9419 0381 7302 5040 8', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (176, 'Ubsdell', 'Atley', 'Mali', 'MR90 6728 2983 4547 0269 6460 643', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (177, 'Sewley', 'Collins', 'Portugal', 'ME18 3657 5386 5782 5241 85', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (181, 'Harbard', 'Maddyson', 'China', 'ME92 2178 0939 2836 3617 90', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (193, 'Ide', 'Vamplus', 'Saudi Arabia', 'RO81 TWIH TSVZ H2IR VEWT WDD1', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (202, 'Roscoe', 'Loggie', 'Peru', 'IE87 QFQC 8541 8093 9002 05', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (208, 'Collins', 'Kertess', 'Norway', 'LI63 5593 6BY0 SOHU VSPE Y', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (217, 'Learmonth', 'Greenside', 'China', 'VG94 MYHF 4151 7424 9707 6485', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (220, 'Twiggins', 'Polino', 'Argentina', 'AZ77 HPSR MMMG K8HF TGKO N0ND BZSF', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (228, 'Daniell', 'Adrien', 'Indonesia', 'ES45 1641 7432 1571 4752 1288', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (234, 'Tithacott', 'Giovannacci', 'Philippines', 'BE83 5343 3959 7819', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (241, 'Fuggles', 'Tyhurst', 'China', 'BE88 7175 5911 5214', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (243, 'Livingstone', 'Mila', 'Ireland', 'BG10 LSJM 2536 43SE IP9P DT', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (304, 'Kenninghan', 'Keohane', 'China', 'PT57 2123 2747 9316 0741 5677 4', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (313, 'Rigney', 'Markwell', 'Nigeria', 'BE28 0639 7765 8125', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (323, 'Collman', 'MacTerlagh', 'Albania', 'BE19 3928 4373 1520', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (344, 'Akehurst', 'Acreman', 'Colombia', 'HU84 0768 6071 4181 6667 5012 4522', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (350, 'Cheetham', 'Kirkup', 'Indonesia', 'FR64 0182 8068 96JV 3V3X HAKB Q55', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (374, 'Hadley', 'Luna', 'United States', 'LB38 3188 TGTS KLKD 0I3L 8VQV XGVT', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (387, 'Yoskowitz', 'Twining', 'Greece', 'NO89 9117 8590 774', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (390, 'Challinor', 'Moorerud', 'Mongolia', 'CH46 4679 1FXL VHN2 JTIR N', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (404, 'Cuxson', 'Lashley', 'China', 'FR06 6184 9982 65G8 OYJA 6KLB H01', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (409, 'Maceur', 'Hails', 'China', 'GR75 5513 675Q F2QG XPC8 OA0J GRG', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (421, 'Palke', 'Bedle', 'Greece', 'RS11 9966 0249 8908 5013 73', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (429, 'McComiskey', 'Romaynes', 'Indonesia', 'DO27 UMNQ 7332 6123 0787 4224 6527', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (432, 'Daffey', 'Burdge', 'China', 'RS52 0828 6358 7409 5410 05', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (441, 'Antusch', 'Kleinmann', 'Indonesia', 'NO60 4510 8873 334', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (442, 'Morais', 'SINTOn', 'China', 'EE15 9639 2166 7700 4803', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (448, 'McGilvary', 'Pardal', 'Japan', 'FR04 0452 9093 65XV MTZ2 34RV M18', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (449, 'Linford', 'Grigorescu', 'China', 'HR68 2897 0662 4907 9188 1', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (453, 'Buist', 'Novak', 'China', 'HU74 6697 9223 0424 8276 9920 1395', 1);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (464, 'Braine', 'Worts', 'Guatemala', 'RS95 0552 3433 9335 0365 37', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (465, 'Jewster', 'Mottini', 'South Africa', 'AZ11 TAIG AZH6 VPOL XKLA OTD7 KISQ', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (467, 'Hulland', 'Abelson', 'China', 'NO20 6659 4779 708', 0);
INSERT INTO UPORABNIK (ID, IME, PRIIMEK, DRZAVA, RACUN, SKRBINK) VALUES (469, 'Pappin', 'Chessil', 'China', 'HR18 7489 4117 5446 6860 5', 0);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
