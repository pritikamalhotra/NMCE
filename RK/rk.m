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

## -*- texinfo -*- 
## @deftypefn {Function File} {@var{retval} =} rk (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Pritika <pritika@pritika-Inspiron-3543>
## Created: 2016-04-26

function rk(x0,y0,h,x_final)
x=x0;
y=y0;
  while(x<x_final)
  k1=h*f(x,y);% f is the function file
  k2=h*f(x+h/2,y+k1/2);
  k3=h*f(x+(h/2),y+(k2/2));
  k4=h*f(x+h,y+k3);
  k=1/6*(k1+2*k2+2*k3+k4);
  x+=h;
  y+=k;
  endwhile
k1
k2
k3
k4
k
y
endfunction
