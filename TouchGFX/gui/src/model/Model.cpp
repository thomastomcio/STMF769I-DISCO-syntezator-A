#include <gui/model/Model.hpp>
#include <gui/model/ModelListener.hpp>
#include "Polling_routines.hpp"
#include "cmsis_os.h"
#include "main.h"

//extern osSemaphoreId_t binarySemUartMsgHandle;
extern bool msgRdyFlag;

Model::Model() : modelListener(0)
{

}

void Model::tick()
{
//	if(binarySemUartMsgHandle != NULL)
//	{
//		if(osSemaphoreAcquire(binarySemUartMsgHandle, (TickType_t)10) == pdTRUE)
//		{
			if(msgRdyFlag)
			{
				uartMsgRdy();
				msgRdyFlag=0;
			}

//		}

	//	}
//	}

}

void Model::uartMsgRdy()
{
	modelListener->uartMsgRdy();
}
