#!/bin/bash

#-A, –user-agent <name>	To send the name of the user agent to the server.
#-d, –data <data>	To send the HTTP POST data.
#-i, –include	To add the protocol response headers in the output.
#-I	To get the HTTP headers information only.
#-o, –output <file>	To write the output in the file instead of the terminal.
#-O, –remote-name	To write the output in the remote file.
#-T, –upload-file <file>	To upload a local file into the server.
#-u, –user <user:password>	To use a username and password for the server.
#-f, –fail	To fail to print the output if an error occurs.
#-s, –silent	To work on the silent mode.
#-h, –help <category>	To get an information about using any command.
#-V, –version


url="https://proof.ovh.net/files/10Mb.dat"
curl ${url} -O