#!/usr/bin/octave -qf
arg_list = argv ();

gridReference = arg_list{1};
padding = str2num(arg_list{2});
plotGridSquareWithPadding(gridReference, padding)

input("Enjoy the view!")

c = cell(5,5);
c(1,1) = 'A';
c(1,2) = 'B';
c(1,3) = 'C';
c(1,4) = 'D';
c(1,5) = 'E';
c(2,1) = 'F';
c(2,2) = 'G';
c(2,3) = 'H';
c(2,4) = 'J';
c(2,5) = 'K';
c(3,1) = 'L';
c(3,2) = 'M';
c(3,3) = 'N';
c(3,4) = 'O';
c(3,5) = 'P';
c(4,1) = 'Q';
c(4,2) = 'R';
c(4,3) = 'S';
c(4,4) = 'T';
c(4,5) = 'U';
c(5,1) = 'V';
c(5,2) = 'W';
c(5,3) = 'X';
c(5,4) = 'Y';
c(5,5) = 'Z';


m = cell2mat(c)
[i,j]=find(ismember(m,'N'))











