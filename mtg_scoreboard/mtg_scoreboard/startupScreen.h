/*
 * startupScreen.h
 */

#include <cmath>
#include <SFML\Graphics.hpp>
#include "panelManager.h"

class startupScreen
{
private:

	//Visual Components
	//-----------------

	//Screen Background:
	Texture backgroundTexture;
	Sprite background;

	//Title Screen Logo:
	Texture titleLogoTexture;
	Sprite titleLogo;

	//"Press Start"/"Click To Start" Text:
	Text startText;

	//"Click To Start" Alpha Clock:
	Clock startTextClock;

	//"Click To Start" Alpha Value:
	int startTextAlpha;

	//Current Version Number:
	Text versionNumberText;

	//GamePanel Manager:
	panelManager panelManager;

public:
	int runStartup();
};