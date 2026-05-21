v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -280 40 -260 {
lab=GND}
N 40 -370 40 -340 {
lab=G}
N 270 -360 270 -300 {
lab=GND}
N 270 -480 270 -420 {
lab=D}
N 230 -480 270 -480 {
lab=D}
N 100 -420 130 -420 {lab=G}
N 100 -370 100 -310 {lab=G}
N 100 -310 130 -310 {lab=G}
N 170 -390 170 -340 {lab=s}
N 170 -480 170 -450 {lab=#net1}
N 170 -260 170 -230 {lab=GND}
N 40 -370 100 -370 {lab=G}
N 100 -420 100 -370 {lab=G}
N 170 -310 190 -310 {lab=GND}
N 190 -310 190 -260 {lab=GND}
N 170 -260 190 -260 {lab=GND}
N 170 -280 170 -260 {lab=GND}
N 170 -420 230 -420 {lab=B}
N 230 -420 230 -180 {lab=B}
N 230 -120 230 -110 {lab=GND}
C {devices/gnd.sym} 40 -260 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 40 -310 0 0 {name=Vgs value=0.5}
C {devices/vsource.sym} 270 -390 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 270 -300 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 200 -480 1 0 {name=Vd}
C {lab_pin.sym} 40 -370 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 270 -480 0 1 {name=p2 sig_type=std_logic lab=D}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -310 0 0 {name=M1
l=0.5u
w=12.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 150 -420 0 0 {name=M2
l=0.5u
w=12.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 170 -230 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 230 -150 0 0 {name=Vb value=0.6}
C {devices/gnd.sym} 230 -110 0 0 {name=l1 lab=GND}
C {devices/code_shown.sym} -470 -420 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 10n 6u
write self-cascode-nmos-tran.raw
.endc
" }
C {devices/launcher.sym} -70 -70 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -450 -210 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {lab_pin.sym} 170 -370 0 0 {name=p3 sig_type=std_logic lab=s}
C {lab_pin.sym} 230 -360 0 0 {name=p4 sig_type=std_logic lab=B}
