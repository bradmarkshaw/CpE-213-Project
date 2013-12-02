#include "stdio.h"
#include "reg932.h"

#define CPU_CLK = 7372800
#define BUZZER

sbit BZZR = P1^7
#ifdef BUZZER
//Buzzer note periods					
#define C4				((CPU_CLK/4)/261.63)
#define C4s				((CPU_CLK/4)/277.18)
#define D4				((CPU_CLK/4)/293.67)
#define D4s				((CPU_CLK/4)/311.13)
#define E4				((CPU_CLK/4)/329.63)
#define F4				((CPU_CLK/4)/349.23)
#define F4s				((CPU_CLK/4)/369.99)
#define G4				((CPU_CLK/4)/392.00)
#define G4s				((CPU_CLK/4)/415.30)
#define A5				((CPU_CLK/4)/440.00)
#define A5s				((CPU_CLK/4)/466.16)
#define B5				((CPU_CLK/4)/493.88)
#define C5				((CPU_CLK/4)/523.25)
#define C5s				((CPU_CLK/4)/554.37)
#define D5				((CPU_CLK/4)/587.33)
#define D5s				((CPU_CLK/4)/622.25)
#define E5				((CPU_CLK/4)/659.26)
#define F5				((CPU_CLK/4)/698.46)
#define F5s				((CPU_CLK/4)/739.99)
#define G5				((CPU_CLK/4)/783.99)
#define G5s				((CPU_CLK/4)/830.61)
#define A6				((CPU_CLK/4)/880.00)
#define A6s				((CPU_CLK/4)/932.33)
#define B6				((CPU_CLK/4)/987.77)
#define C6				((CPU_CLK/4)/1046.5)
#define C6s				((CPU_CLK/4)/1108.7)
#define D6				((CPU_CLK/4)/1174.7)
#define D6s				((CPU_CLK/4)/1244.5)
#define E6				((CPU_CLK/4)/1318.5)
#define F6				((CPU_CLK/4)/1396.9)
#define F6s				((CPU_CLK/4)/1480.0)
#define G6				((CPU_CLK/4)/1568.0)
#define G6s				((CPU_CLK/4)/1661.2)
#define A7				((CPU_CLK/4)/1760.0)
#define A7s				((CPU_CLK/4)/1864.7)
#define B7				((CPU_CLK/4)/1975.5)
#define C7				((CPU_CLK/4)/2093.0)
#define D7				((CPU_CLK/4)/2349.3)

#endif //BUZZER

#include <time.h>
#include <stdlib.h>

void delayProg();

sbit TOPLEFTLIGHT = P2^4;
sbit TOPLEFTBUTTON = P2^0;
sbit TOPMIDDLELIGHT = P0^5;
sbit TOPMIDDLEBUTTON = P0^1;
sbit TOPLEFTLIGHT = P2^7;
sbit TOPLEFTBUTTON = P2^3;
sbit MIDDLELEFTLIGHT = P0^6;
sbit MIDDLELEFTBUTTON = P0^2;
sbit MIDDLELIGHT = P1^6;
sbit MIDDLEBUTTON = P1^4;


void main()
{
  srand(time(NULL));
  int randNum = (rand() % 999) + 1;
  int numGuesses = 0;
  int guess = 0;
  bool correctGuess = false;
  
  

	while (numGuesses != 10 && !correctGuess)
	{
		nuguess = 0;
			
		do
		{
			if (TOPLEFTBUTTON == 1)
			{
				guess += 100;
				TOPLEFTLIGHT = ~TOPLEFTLIGHT;
				delayProg();
				TOPLEFTLIGHT = ~TOPLEFTLIGHT;
			}
			if (TOPMIDDLEBUTTON == 1)
			{ 
			 guess += 10;
			 TOPMIDDLELIGHT = ~TOPMIDDLELIGHT;
			 delayProg();
			 TOPMIDDLELIGHT = ~TOPMIDDLELIGHT;
			}
			if (TOPRIGHTBUTTON == 1)
			{
				guess += 1;
				TOPRIGHTLIGHT = ~TOPRIGHTLIGHT;
				delayProg();
				TOPRIGHTLIGHT = ~TOPRIGHTLIGHT;
			}
			if (MIDDLELEFTBUTTON == 1)
			{
				guess = 0;
				MIDDLELEFTLIGHT = ~MIDDLELEFTLIGHT;
				delayProg();
				MIDDLELEFTLIGHT = ~MIDDLELEFTLIGHT;
			}
			if (MIDDLEBUTTON = 1)
			{
				submitGuess = true;
				MIDDLELIGHT = ~MIDDLELIGHT;
				delayProg();
				MIDDLELIGHT = ~MIDDLELIGHT;
			}
		}
		while (submitGuess != true);

		if (guess == randNum)
		{
			correctGuess = true;
			//victory sounds
		}  
		else if(guess < randNum)
		{
			numGuesses++;
			//play high note 
		}
		else if(guess > randNum)
		{
			numGuesses++;
			//play low note
		}
	}

}

void delayProg()
{
  for (int i = 0; i < 30000; i++)
    for (int j = 0; j < 30000; j++)
}