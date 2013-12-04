#include "stdio.h"
#include <time.h>
#include <stdlib.h>
#include "reg932.h"
#include "intrins.h"

#define CPU_CLK 7372800
#define MAX_DEL 65536 //Max delay for 8051 in microseconds

//Speaker note frequencies					
#define C4  262
#define C4s 277
#define D4  294
#define D4s 311
#define E4  330
#define F4  349
#define F4s 370
#define G4  392
#define G4s 415
#define A5  440
#define A5s 466
#define B5  494
#define C5  523
#define C5s 554
#define D5  587
#define D5s 622
#define E5  659
#define F5  698
#define F5s 740
#define G5  784
#define G5s 831
#define A6  880
#define A6s 932
#define B6  988
#define C6  1047
#define C6s 1109
#define D6  1175
#define D6s 1245
#define E6  1319
#define F6  1397
#define F6s 1480
#define G6  1568
#define G6s 1661
#define A7  1760
#define A7s 1865
#define B7  1976
#define C7  2093
#define D7  2349


sbit SPEAKER = p1^7
sbit TOPLEFTLIGHT = P2^4;
sbit TOPLEFTBUTTON = P2^0;
sbit TOPMIDDLELIGHT = P0^5;
sbit TOPMIDDLEBUTTON = P0^1;
sbit TOPRIGHTLIGHT = P2^7;
sbit TOPRIGHTBUTTON = P2^3;
sbit MIDDLELEFTLIGHT = P0^6;
sbit MIDDLELEFTBUTTON = P0^2;
sbit MIDDLELIGHT = P1^6;
sbit MIDDLEBUTTON = P1^4;
sbit MIDDLERIGHTLIGHT = P0^4;
sbit BOTTOMLEFTLIGHT = P2^5;
sbit BOTTOMMIDDLELIGHT = P0^7;
sbit BOTTOMRIGHTLIGHT = P2^6;

bit playEnable = 0;
unsigned int playCounter = 0;
unsigned char i = 0;
code unsigned int nyanDuration[] = 
{//--note durations--
}
code unsigned int nyanFreq[] =
{//--note frequencies--
}

void noteGen(unsigned int note, unsigned int duration)
{
  unsigned long tmp;
  if(note != 0)
  {
    T2CON = 0x00;
    T2MOD = T2MOD & 0xFE;
    T2MOD = T2MOD | 0x20;
    tmp = CPU_CLK/(4*note);
    tmp = MAX_DEL - tmp;
    RCAP2H = (unsigned char) (tmp >> 8);
    RCAP2L = (unsigned char) (tmp & 0x000000FF);
    TH2 = RCAP2H;
    TL2 = RCAP2L;
    
    TR2 = 1;
    delayMs(duration);
    TR2 = 0;
    SPEAKER = 1; //off
  }
}

void initT0()
{
  TMOD = TMOD & 0xF0;
  TMOD = TMOD | 0x01;
  TH0 = 0xDC;
  TL0 = 0x00;
  ET0 = 1;
  TR0 = 1;
  EA = 1;
}

T0ISR() interrupt 1
{
  if(playEnable == 1)
  {
    if(playCounter > 0)
    {
      playCounter--;
      if(playCounter == 0)
      {
        playEnable = 0;
        if(nyanDuration[i] != 0)
        {
          noteGen(nyanFreq[i]);
          playCounter = nyanDuration[i];
          i++;
          playEnable = 1;
        }
        else
        {
          TR2 = 0;
          SPEAKER = 1; //off
        }
      }
    }
  }
  TH0 = 0xDC;
  TL0 = 0x00;
}

void startSong()
{
  i = 0;
  playEnable = 1;
  playCounter = 1;
}

void stopSong()
{
  playEnable = 0;
  TR2 = 0;
  SPEAKER = 1; //off
}

void main()
{
  //Game initializations
  srand(time(NULL));
  int randNum = (rand() % 999) + 1;
  int numGuesses = 0;
  int guess = 0;
  bool correctGuess = false;
  
  //Song initializations
  initT0();
  
  void delayMs(10000);

	while(numGuesses != 10 && !correctGuess)
	{
		nuguess = 0;
			
		do
		{
			if(TOPLEFTBUTTON == 1)
			{
				guess += 100;
				TOPLEFTLIGHT = ~TOPLEFTLIGHT;
				delayProg();
				TOPLEFTLIGHT = ~TOPLEFTLIGHT;
			}
			if(TOPMIDDLEBUTTON == 1)
			{ 
        guess += 10;
        TOPMIDDLELIGHT = ~TOPMIDDLELIGHT;
        delayProg();
        TOPMIDDLELIGHT = ~TOPMIDDLELIGHT;
			}
			if(TOPRIGHTBUTTON == 1)
			{
				guess += 1;
				TOPRIGHTLIGHT = ~TOPRIGHTLIGHT;
				delayProg();
				TOPRIGHTLIGHT = ~TOPRIGHTLIGHT;
			}
			if(MIDDLELEFTBUTTON == 1)
			{
				guess = 0;
				MIDDLELEFTLIGHT = ~MIDDLELEFTLIGHT;
				delayProg();
				MIDDLELEFTLIGHT = ~MIDDLELEFTLIGHT;
			}
			if(MIDDLEBUTTON = 1)
			{
				submitGuess = true;
				MIDDLELIGHT = ~MIDDLELIGHT;
				delayProg();
				MIDDLELIGHT = ~MIDDLELIGHT;
			}
		}
		while(submitGuess != true);

		if(guess == randNum)
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

void delayMs(unsigned char ms)
{
  unsigned long us = 1000*ms;
  while (us--)
  {
    _nop_();
  }
}

//delayMs(duration) is a better function to use.
/*void delayProg()
{
  for (int i = 0; i < 30000; i++)
    for (int j = 0; j < 30000; j++)
}*/
