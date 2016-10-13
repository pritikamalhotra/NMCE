## Copyright (C) 2016 Pritika
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.
## Author: Pritika <pritikamalhotra20@gmail.com>
## Created: 2016-04-26

function [x,y] = euler (x_initial,y_initial,h,x_final)
xvalues=[]; % x vector to store root_values
yvalues=[]; % y vector to store iteration values
x=x_initial;
y=y_initial;
while(x<x_final)
  y1=y+h*fsolver(x,y);
  yvalues=[yvalues;y1];
  y=y1;
  x+=h;
  xvalues=[xvalues;x];
endwhile
xvalues
yvalues
f = figure
set(f, "visible", "off")
plot(xvalues,yvalues);
print("MyPNG.png", "-dpng")
endfunction
