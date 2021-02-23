#include <gui/main_screen/MainView.hpp>
#include "Polling_routines.hpp"
//#include "Midi.h"
#include <vector>
#include "string.h"
//#include <stdlib.h>

//extern uint8_t uartMsgData;
extern std::vector<uint8_t> data_array;
//extern uint8_t data_counter;
//
//static uint8_t view_counter=0;
//Unicode::UnicodeChar buffer[5];

//static uint8_t data_counter;
MainView::MainView()
{
//	for( int x=0; x<10; x++)
//	{
//		for (int y=0; y<10; y++)
//		{
//			*(txt_areaBuffer+x*y) = '\n';
//		}
//	}
}

void MainView::setupScreen()
{
    MainViewBase::setupScreen();
}

void MainView::tearDownScreen()
{
    MainViewBase::tearDownScreen();
}

void MainView::uartMsgRdy()
{
	//if(uartMsgData == 0) return; // no UART data in variable
	// memset(txt_areaBuffer, 0, TXT_AREA_SIZE);
	//Unicode::strncpy(txt_areaBuffer, (char*)uartMsgData, TXT_AREA_SIZE-1);
	//Unicode::itoa((int32_t)(*uartMsgData), buffer, 5, 16);
	//txt_areaBuffer[10] = '\0';

	//Unicode::snprintf(txt_areaBuffer, TXT_AREA_SIZE, "%d   ", uartMsgData);

	//txt_area.setWildcard(txt_areaBuffer);
	//txt_area.setWildcard1(buffer);
	//txt_area.invalidate();
	//data_counter++;
//	if(data_counter < view_counter) view_counter = 0; // uwaga: tutaj dane sa obciate
//
	for(size_t i=0; i < data_array.size(); i++)
	{
		My_graph.addDataPoint(data_array[i]);
	}
	data_array.clear();
//	view_counter = data_counter;

}
