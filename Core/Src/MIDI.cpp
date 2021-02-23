/*
 * MIDI.cpp
 *
 *  Created on: Jan 28, 2021
 *      Author: thomas
 */
#include "MIDI.h"
//#include "stm32f7xx_hal_sai.h" // for audio frequency
#include "main.h"
#include "Polling_Routines.hpp"
#include <vector>
#include <math.h>

//#include "wm8994.h"
#define AUDIO_FREQUENCY_48K           ((uint32_t)48000)

extern uint16_t buff_out[BUFF_SIZE];
extern uint8_t uartMsgData;
extern uint8_t note_number_byte;
extern int position;

extern bool new_note_number_byte;
extern bool msgRdyFlag;


//extern __IO int32_t UpdatePointer;

int counter=0;
std::vector<uint8_t> notes_to_play;
uint8_t grana = 0;
static bool play_flag = 0;
//uint32_t PlaybackPosition = 0;
//std::vector<uint8_t> kolejka;

void Midi_process()
{

	if(new_note_number_byte)
	{
		notes_to_play.push_back(note_number_byte);
		new_note_number_byte = false;
		grana = notes_to_play[0];
		play_flag=1;
		counter=0;
	}

	if(play_flag && counter < 15)
	{
		counter ++;
	}
	else if(!notes_to_play.empty() && counter >= 15)
	{
		notes_to_play.erase(notes_to_play.begin());
		if(!notes_to_play.empty())
		{
			grana = notes_to_play[0];
			play_flag=1;
		}
		else
		{
			play_flag=0;
		}
		counter = 0;
	}
	else if(!notes_to_play.empty() && counter < 15)
	{
		play_flag=1;
	}
	else
	{
		play_flag=0;
	}


//		msgRdyFlag = 0;
//		kolejka.push_back(uartMsgData);
	data_parse();
//		counter ++;

}

void data_parse()
{

	uint8_t freq = 0;

	//if (!notes_to_play.empty()) grana = notes_to_play[0];
	if (play_flag)
	{
		freq = 440*pow(2, (grana-69)/12.);
		for(int j=0; j < BUFF_SIZE/2; j++)
		{

			buff_out[j+position]=32500*(sin((2*M_PI*j*freq)/AUDIO_FREQUENCY_48K));//*((__IO uint16_t *)(AUDIO_FILE_ADDRESS + PLAY_HEADER + i));
			//	PlaybackPosition+=2;
		}
	}
	else
	{
		for(int j=0; j < BUFF_SIZE/2; j++)
		{
			buff_out[j+position] = 0;
		}

	//		}
	}


//uint8_t dana= uartMsgData;
//	PlaybackPosition = 0;
//	if (dana & 0xf0 == 0x90)
//	{
//		kolejka.push_back(dana);
//	}
//	else if(dana & 0xf0 == 0x80)
//	{
//		for(int i=0; i<kolejka.size(); i++)
//		{
//			if(kolejka[i] & 0x0f == dana & 0x0f )
//			{
//				kolejka.erase(kolejka.begin()+i);
//			}
//		}
//	}
//
//	for(int i=0; i<kolejka.size(); i++)
//	{
//		dana = kolejka[i];
//		if (dana & 0xf0 == 0x80)
//		{
//
//		}
//		else if (dana & 0xf0 == 0x90)
//		{
//
//		}
//		else if (dana & 0xf0 == 0xA0)
//		{
//
//		}
//		else if (dana & 0xf0 == 0xB0)
//		{
//
//		}
//		else if (dana & 0xf0 == 0xC0)
//		{
//
//		}
//		else if (dana & 0xf0 == 0xD0)
//		{
//
//		}
//		else if (dana & 0xf0 == 0xE0)
//		{
//
//		}
//	}
}


