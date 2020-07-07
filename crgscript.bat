
ECHO OFF
SET /p number="Your favourites: 1.YouTube 2.Google 3.CodeWars 4.StockX 5.SpartaGlobal"
IF /i "%number%" == "1" start www.YouTube.com
IF /i "%number%" == "2" start www.google.com
IF /i "%number%" == "3" start www.CodeWars.com
IF /i "%number%" == "4" start www.Stockx.com
IF /i "%number%" == "5" start www.spartaglobal.com
echo invalid option please try again