/*
 * C12137interface.h
 *
 *  Created on: Aug 29, 2012
 *      Author: rchil
 */

#include "C12137detector.h"

#ifndef C12137INTERFACE_H_
#define C12137INTERFACE_H_

#ifdef __cplusplus
    extern "C" {
#endif


 C12137_detector detector;

 // starts communications with the device and opens the needed interface
extern int C12137_init();

extern int C12137_read(int dataIn[]);

#ifdef __cplusplus
    }
#endif


#endif /* C12137INTERFACE_H_ */
