v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -40 40 80 40 {
lab=Vgs}
N 120 10 250 10 {
lab=Vds}
N -80 -140 -80 -110 {
lab=#net1}
N -80 -130 -40 -130 {
lab=#net1}
N -40 -130 -40 -80 {
lab=#net1}
N -40 -80 -40 -20 {
lab=#net1}
N -80 -200 120 -200 {
lab=VDD}
N 120 -90 120 10 {
lab=Vds}
N 120 -200 120 -150 {
lab=VDD}
N 120 -200 250 -200 {
lab=VDD}
N 120 70 120 100 {
lab=VSS}
N 120 40 170 40 {
lab=VSS}
N 170 40 170 80 {
lab=VSS}
N 120 80 170 80 {
lab=VSS}
N -80 -50 -80 -20 {
lab=VSS}
N -100 -40 -80 -40 {
lab=VSS}
N -100 -80 -100 -40 {
lab=VSS}
N -100 -80 -80 -80 {
lab=VSS}
N -140 40 -40 40 {
lab=Vgs}
N -260 40 -200 40 {
lab=rf_in}
N 310 10 380 10 {
lab=rf_out}
C {devices/iopin.sym} -330 -160 0 0 {name=p1 lab=VDD}
C {devices/iopin.sym} -330 -110 0 0 {name=p2 lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} -60 -80 0 1 {name=M1
L=0.15
W=10
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 250 -200 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/lab_wire.sym} 120 100 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 100 40 0 0 {name=M2
L=0.15
W=10
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/cap_mim_m3_1.sym} -170 40 1 0 {name=C1 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/cap_mim_m3_1.sym} 280 10 1 0 {name=C2 model=cap_mim_m3_1 W=30 L=30 MF=1 spiceprefix=X}
C {sky130_fd_pr/res_xhigh_po_0p35.sym} -40 10 0 0 {name=R1
L=4
model=res_xhigh_po_0p35
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} -80 -170 0 0 {name=R2
L=3.45
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {sky130_fd_pr/res_high_po_0p69.sym} 120 -120 0 0 {name=R3
L=3.45
model=res_high_po_0p69
spiceprefix=X
mult=1}
C {devices/lab_wire.sym} -80 -20 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {devices/ipin.sym} -260 40 0 0 {name=p4 lab=rf_in}
C {devices/opin.sym} 380 10 0 0 {name=p7 lab=rf_out}
C {devices/lab_wire.sym} 60 40 0 0 {name=p8 sig_type=std_logic lab=Vgs}
C {devices/lab_wire.sym} 210 10 0 0 {name=p9 sig_type=std_logic lab=Vds}
