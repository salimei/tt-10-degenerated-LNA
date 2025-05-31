v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 1100 -440 1900 -40 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=0
x2=2e-07
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="i(vmeas)
pin_out"
color="4 5"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 1110 20 1910 420 {flags=graph
y1=0.4
y2=2.4
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=-35
x2=-6.69897
divx=5
subdivx=8
xlabmag=1.0
ylabmag=1.0
node="\\"pin_out db20()\\"
\\"rf_out db(20)\\""
color="5 6"
dataset=-1
unitx=1
logx=1
logy=0
}
N 385 110 440 110 {
lab=rf_out}
N 440 110 485 110 {
lab=rf_out}
N 545 110 585 110 {
lab=pin_out}
N 15 110 85 110 {
lab=rf_in}
C {devices/code.sym} -230 -190 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt

"
spice_ignore=false}
C {devices/launcher.sym} -190 230 0 0 {name=h17 
descr="Load waves" 
tclcommand="
xschem raw_read $netlist_dir/[file tail [file rootname [xschem get current_name]]].raw tran

"
}
C {degenerated_lna.sym} 235 80 0 0 {name=x1}
C {devices/vsource.sym} 440 -50 0 0 {name=V1 value=1.8 savecurrent=false}
C {devices/vsource.sym} 550 -50 0 0 {name=V2 value=0 savecurrent=false}
C {devices/lab_wire.sym} 440 -80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 440 -20 0 0 {name=l1 lab=GND}
C {devices/gnd.sym} 550 -20 0 0 {name=l2 lab=GND}
C {devices/lab_wire.sym} 550 -80 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 255 180 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 85 110 0 0 {name=p5 sig_type=std_logic lab=rf_in}
C {devices/lab_wire.sym} 385 110 0 1 {name=p6 sig_type=std_logic lab=rf_out}
C {devices/res.sym} 515 110 1 0 {name=R1
value=500
footprint=1206
device=resistor
m=1}
C {devices/capa.sym} 440 140 0 0 {name=C1
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 440 170 0 0 {name=l3 lab=GND}
C {devices/lab_wire.sym} 585 110 0 1 {name=p7 sig_type=std_logic lab=pin_out}
C {devices/simulator_commands_shown.sym} 680 100 0 0 {name=COMMANDS
simulator=ngspice
only_toplevel=false 
value="
* ngspice commands
.option savecurrents

.control

 save all
 op
 remzerovec 
 write testbench_degenerated_lna.raw
 set appendwrite

 ac dec 10 1 1e12
 remzerovec
 write testbench_degenerated_lna.raw

 tran 100p 200n
 write testbench_degenerated_lna.raw

.endc
"}
C {devices/vsource.sym} 15 140 0 0 {name=V3 value="0 ac 1 0
+ sin(0 0.00223 2.4G 0 0 0)" savecurrent=false}
C {devices/gnd.sym} 15 170 0 0 {name=l4 lab=GND}
C {devices/ammeter.sym} 255 0 0 0 {name=Vmeas savecurrent=true}
C {devices/lab_wire.sym} 255 -30 0 0 {name=p3 sig_type=std_logic lab=VDD}
