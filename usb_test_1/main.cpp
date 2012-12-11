/*
 * main.cpp
 *
 *  Created on: Aug 23, 2012
 *      Author: rchil
 */
#include <libusb-1.0/libusb.h>
#include <stddef.h>
#include <stdio.h>

static int error;

int main(){

	printf("comienza");
	error = libusb_init(NULL);
	if (error<0) printf("error libusb_init %d", error);

	printf("agaskhas");



	return 0;
}



