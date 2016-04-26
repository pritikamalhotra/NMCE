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

function bisection (x0, x1,iteration,Precision)
p0=fsolv(x0) % Function is defined in fsolv
p1=fsolv(x1)
if(p0*p1>0)
"no root between these points:"
else
  while(abs(x1-x0)> Precision)
    x2 = (x1 +x0)/2;
    x2
    iteration=iteration+1;
     p2=fsolv(x2);
    if (p0 * p2 < 0)%The case when root lies between x2 and x0
        x1 = x2;
        p1 = p2;
    else %The case when root lies between x1 and x2
     x0 = x2;
     p0 = p2;
    endif
  endwhile
endif
endfunction
