@echo off
:: Support for umlauts
chcp 1252
echo.

:: Picard
echo Picard Download:
curl -L --user curl -L --user 1352600:k62u5q38 http://stock.picard.de/npl/csv > "Z:\Löchel Industriebedarf\Datenmanagement\Access\Picard Lagerbestand.csv"
echo.

:: KS-Tools
echo KS-Tools Download:
set pathname0="Z:\Löchel Industriebedarf\Datenmanagement\Access\"
WinSCP.com /command "open -filezilla "KS-Tools"" "get /FTPLager_SP.txt "%pathname0%"" "exit"
echo.

:: Nordwest
echo Nordwest Download:
xcopy "W:\artikel-bestand-LGR_HT_OHM_MPR.txt" "Z:\Löchel Industriebedarf\Datenmanagement\Access\artikel-bestand-LGR_HT_OHM_MPR.txt" /Y