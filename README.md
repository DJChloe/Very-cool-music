# "UltraSyd - Robot" music on Oric Atmos
This open source project created by Chloé Avrillon (aka LadyWasky/Waskol) for the [Oric Atmos 48K computer](https://en.wikipedia.org/wiki/Oric#Oric_Atmos), is an adaptation of UltraSyd - Robot by STarKos, a music created for the Atari ST.

The player is written in C and 6502A assembly, using the [Oric Software Development Kit (OSDK)](http://osdk.defence-force.org/), a complete cross-development system allowing to create software for the Oric 1, Oric Atmos, and Oric Telestrat computers.
BASIC, C and a bit of assembly language were used for this project.

## Folders
The **Release** folder contains the digitalized disk you can use with an Oric emulator such like Oricutron
that you can find [here](http://www.petergordon.org.uk/oricutron/) and [here for the latest build](http://iss.sandacite.com/oricutron/)


## How to compile and build the tape file for Oric Kong :
Simply use the batch file **osdk_build.bat**, located in the **.\sources** (sources) directory the project.
After a couple of seconds, a new directory, **release**, will appear with a .tap file in it. This can be used with an Oric emulator such like Euphoric (DOS) or Oricutron (Windows, Linux, MacOs,...).


## Thanks/Credits
I wish to thank some people of the Oric community namely DBug for its OSDK and Twilighte who is no longer among us who did so much for the Oric.
The player and irq routines are their work.

