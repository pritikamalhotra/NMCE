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
## @deftypefn {Function File} {@var{retval} =} adam (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Pritika <pritika@pritika-Inspiron-3543>
## Created: 2016-04-27

function adam(x0, y0,h)
y1=input("Enter value of y1 at x0-h:");
y2=input("Enter value of y2 at x0-2h:");
y3=input("Enter value of y3 at x0-3h:");
f0=f(x0,y0)
f1=f(x0-h,y1)
f2=f(x0-2*h,y2)
f3=f(x0-3*h,y3)
yp=y0+[h*(55*f0-59*f1+37*f2-9*f3)]/24;
"Result of predictor",yp
f4=f(x0+h,yp);
yc=y0+h/24*(9*f4+19*f0-5*f1+f2);
"Result of corrector",yc
endfunction
