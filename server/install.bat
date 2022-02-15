set root=c:\xampp\

:: Make database
%root%mysql\bin\mysql.exe -u root -D mtg -e "DROP DATABASE mtg"
%root%mysql\bin\mysql.exe -u root -e "CREATE DATABASE mtg"

:: Init tables in database
%root%mysql\bin\mysql.exe -u root mtg < data\mysql_tables\games.sql
%root%mysql\bin\mysql.exe -u root mtg < data\mysql_tables\players.sql
%root%mysql\bin\mysql.exe -u root mtg < data\mysql_tables\teams.sql
%root%mysql\bin\mysql.exe -u root mtg < data\mysql_tables\commander_dmg.sql

:: Copy php levels
copy src\main\php\game.php %root%htdocs\game.php
copy src\main\php\mtg_lobby.php %root%htdocs\mtg_lobby.php
copy src\main\php\create_game.php %root%htdocs\create_game.php
copy src\main\php\game_style.php %root%htdocs\game_style.php

copy src\main\css\mtgstyle.css %root%htdocs\mtgstyle.css