v {xschem version=3.4.7 file_version=1.2
*
* This file is part of XSCHEM,
* a schematic capture and Spice/Vhdl/Verilog netlisting tool for circuit
* simulation.
* Copyright (C) 1998-2024 Stefan Frederik Schippers
*
* This program is free software; you can redistribute it and/or modify
* it under the terms of the GNU General Public License as published by
* the Free Software Foundation; either version 2 of the License, or
* (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
* GNU General Public License for more details.
*
* You should have received a copy of the GNU General Public License
* along with this program; if not, write to the Free Software
* Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA
}
G {}
K {type=isource
format="@name @pinlist @value"
template="name=I0 value=PULSE(0 1m 0 10p 10p 1n 2n)"}
V {}
S {}
E {}
L 4 0 -30 0 -15 {}
L 4 0 15 0 30 {}
L 4 2.5 -22.5 7.5 -22.5 {}
L 4 5 -25 5 -20 {}
B 5 -2.5 -32.5 2.5 -27.5 {name=p dir=inout}
B 5 -2.5 27.5 2.5 32.5 {name=m dir=inout}
A 4 0 0 15 270 360 {}
P 4 7 -0 -7.5 -0 2.5 2.5 2.5 -0 10 -2.5 2.5 0 2.5 -0 -7.5 {fill=true}
T {@name
@value} 20 -10 0 0 0.2 0.2 {}
T {@#0:net_name} 5 -42.5 0 0 0.15 0.15 {layer=15 hide=instance}
T {@#1:net_name} 5 32.5 0 0 0.15 0.15 {layer=15 hide=instance}
T {@spice_get_current} -4.375 15 0 1 0.2 0.2 {layer=17}
N 0 -30 90 -30 {lab=#net1}
N 0 30 90 30 {lab=#net2}
C {res.sym} 90 0 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {gnd.sym} 90 30 0 0 {name=l1 lab=GND}
C {code_shown.sym} 180 -87.5 0 0 {name=NGSPICE
only_toplevel=true
value="
.param temp=27
*.options savecurrents reltol=1e-3 abstol=1e-12 gmin=1e-15
.control
save all

tran 40p 450n

* Plotting


.endc"}
