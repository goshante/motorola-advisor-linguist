# Motorola Advisor Linguist full pack
Here you can find how to program this pager reset password. Also included official software and full chematics of main board and receiver board, parts list and board view.

## Prepare
<br />    __1.__ Install dosbox and mount any folder as C drive
<br />    __2.__ Buy USB UART RS232 adapter (I recommend FTDI232)
<br />    __3.__ Connect it to PC
<br />    __4.__ Open windows device manager
<br />    __5.__ In COM ports select your COM port that is USB-UART-related.
<br />    __6.__ Open it's settings and assign COM1 port to it. 
<br />    If COM1 already exists just change existing to something else and try again.
<br />    __6.__ Set baud rate of COM port to 2400
<br />    __7.__ Configure your COM1 port as COM1 port in dosbox.
<br />    __8.__ Copy content of folder software_dos (not folder itself) to 
<br />    your mounted folder for C drive of dosbox.

## How to connect
To connect and start programming your pager you have to connect GND, TX and RX pins.
<br />    In file [extra/prog_pinout.txt] you can find info about programming pins.
<br />    Connect GND of your pager to GND of your programmer, RX to TX and RX to TX.
<br />    You can just hold contact with your hands.
<br />    Programming tool on dosbox: C:\moto\ADVISOR\ADVISOR.EXE

## How to reset password
Often paging provider sets own password to pager and nobody knows it.
<br />    But you can reset password following this steps:
<br />
<br />    __1.__ Disassemble your pager
<br />    __2.__ Remove radio receiver module. It can be easily removed.
<br />    __3.__ Solder CMOS password reset pin to the ground (minus of the battery)
<br />      You can find photo of this pin on this picture: [extra/pass_reset_pin.png]
<br />    __4.__ Connect programming pins (or even better temporary solder them)
<br />    __5.__ Open dosbox
<br />    __6.__ Open this program: C:\moto\pass\RSS.EXE
<br />    __7.__ Press spacebar
<br />    __8.__ Wait untill password resets
<br />    __9.__ Unsolder CMOS reset pin
<br />    __10.__ Connect receiver module back on it's place
<br />
<br />    Now your pager is ready to programming.