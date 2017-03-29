#include "bluetooth.h"
#include "hci.h"
#include "hci_lib.h"


int main()
{
	hci_open_dev(100);
	return 0;
}


