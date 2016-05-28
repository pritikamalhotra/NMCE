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
## @deftypefn {Function File} {@var{retval} =} bisection (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Pritika <pritika@pritika-Inspiron-3543>
## Created: 2016-04-26

function [x,y] = bisection (initialguesspoint_1, initialguesspoint_2,iteration,Precision)
x=[]; % x vector to store root_values
y=[]; % y vector to store iteration values
fvalue_initialguesspoint1 = fsolv (initialguesspoint_1) % Function is defined in fsolv
fvalue_initialguesspoint2 = fsolv (initialguesspoint_2)
if (fvalue_initialguesspoint1*fvalue_initialguesspoint2>0)
printf("No root between these points.\n");
printf("Try another set of values for which product of values at function is less than zero.\n");
else
while (abs (initialguesspoint_2-initialguesspoint_1)>Precision)
  root_value = (initialguesspoint_2+initialguesspoint_1)/2;
  root_value
  iteration=iteration+1;
  x = [x;root_value];
  y = [y;iteration];
  fvalue_root = fsolv (root_value);
  if (fvalue_initialguesspoint1 * fvalue_root < 0) % The case when root lies between root_value and initialguesspoint_1
  initialguesspoint_2 = root_value;
  fvalue_initialguesspoint2 = fvalue_root;
  else % The case when root lies between initialguesspoint_2 and root_value
  initialguesspoint_1 = root_value;
  fvalue_initialguesspoint1 = fvalue_root;
  endif
endwhile
f = figure
set(f, "visible", "on")
plot(x,y);
title("Bisection-plot");
xlabel('Roots');
ylabel('Iterations');
print("MyPNG.png", "-dpng")             
endif
endfunction
