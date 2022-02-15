/*
 * main.cpp
 */

#include <iostream>
#include "startupScreen.h"

int main(int, char const**)
{
	//Set up the SQL connection.
	driver = sql::mysql::get_mysql_driver_instance();
	con = driver->connect("tcp://127.0.0.1:3306/mtg", "root", "");
	stmt = con->createStatement();
	//Create the Window object.
	window = new sf::RenderWindow(VideoMode::getDesktopMode(), "MTG Scoreboard", Style::Fullscreen);
	//Create the Gui object.
	gui = new tgui::Gui(*window);
	//Create the Font objects.
	sffont_mtg = new sf::Font();
	sffont_mtg->loadFromFile(resourcePath + "MAGIC.TTF");
	sffont_dejavu = new sf::Font();
	sffont_dejavu->loadFromFile(resourcePath + "DejaVuSans.ttf");
	tguifont_mtg = new tgui::Font(resourcePath + "MAGIC.TTF");
	tguifont_dejavu = new tgui::Font(resourcePath + "DejaVuSans.ttf");
	//Create and load the Texture objects.
	//Load the Player Button Textures.
	buttonCommanderMinusOneTexture = new sf::Texture();
	buttonCommanderMinusOneTexture->loadFromFile(resourcePath + "buttonCommanderMinusOne.png");
	buttonLifePlusOneTexture = new sf::Texture();
	buttonLifePlusOneTexture->loadFromFile(resourcePath + "buttonLifePlusOne.png");
	buttonLifePlusFiveTexture = new sf::Texture();
	buttonLifePlusFiveTexture->loadFromFile(resourcePath + "buttonLifePlusFive.png");
	buttonLifeMinusFiveTexture = new sf::Texture();
	buttonLifeMinusFiveTexture->loadFromFile(resourcePath + "buttonLifeMinusFive.png");
	buttonLifeMinusTenTexture = new sf::Texture();
	buttonLifeMinusTenTexture->loadFromFile(resourcePath + "buttonLifeMinusTen.png");
	buttonPoisonPlusOneTexture = new sf::Texture();
	buttonPoisonPlusOneTexture->loadFromFile(resourcePath + "buttonPoisonPlusOne.png");
	buttonPoisonMinusOneTexture = new sf::Texture();
	buttonPoisonMinusOneTexture->loadFromFile(resourcePath + "buttonPoisonMinusOne.png");
	//Load the Texture for the Button to collapse the Commander Counters.
	buttonCommanderCloseTexture = new sf::Texture();
	buttonCommanderCloseTexture->loadFromFile(resourcePath + "buttonCommanderClose.png");
	//Load the Texture for the Button to add Players to the game.
	addPlayerPanelButtonTexture = new sf::Texture();
	addPlayerPanelButtonTexture->loadFromFile(resourcePath + "gameSetupButtonAdd.png");
	//Load the Texture for the background.
	panelTexture = new sf::Texture();
	panelTexture->loadFromFile(resourcePath + "startupBackground.png");
	//Create the Avatar Texture Objects.
	//Get the file path for each of the avatar images.
	res = stmt->executeQuery("SELECT id, avatar FROM players ORDER BY id ASC");
	while (res->next())
	{
		//Create an empty Texture object.
		avatarTextures.push_back(new sf::Texture());
		//If a Player does not have an Avatar, give them a copy of the default one.
		if (!avatarTextures[res->getInt("id")]->loadFromFile(avatarPath + res->getString("avatar")))
		{
			avatarTextures[res->getInt("id")]->loadFromFile(avatarPath + "player_images/default.jpg");
		}
	}
	//Create and run the startup screen.
	startupScreen startup;
	return startup.runStartup();
}