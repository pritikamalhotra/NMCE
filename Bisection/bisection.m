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

function [x,y]=bisection (initialguesspoint_1, initialguesspoint_2,iteration,Precision)
x=[];
y=[];
p0=fsolv(initialguesspoint_1) % Function is defined in fsolv
p1=fsolv(initialguesspoint_2)
if(p0*p1>0)
"no root between these points:"
else
  while(abs(initialguesspoint_2-initialguesspoint_1)>Precision)
    root_value = (initialguesspoint_2 +initialguesspoint_1)/2;
    root_value
    iteration=iteration+1;
    x=[x;root_value];
    y=[y;iteration];
    p2=fsolv(root_value);
    if (p0 * p2 < 0)%The case when root lies between root_value and initialguesspoint_1
        initialguesspoint_2 = root_value;
        p1 = p2;
    else %The case when root lies between initialguesspoint_2 and root_value
     initialguesspoint_1 = root_value;
     p0 = p2;
    endif
  endwhile
endif
endfunction
