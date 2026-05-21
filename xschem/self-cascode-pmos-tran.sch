v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 210 -340 210 -320 {
lab=GND}
N 210 -430 210 -400 {
lab=G}
N 520 -440 520 -380 {
lab=GND}
N 270 -480 300 -480 {lab=G}
N 210 -430 270 -430 {lab=G}
N 270 -480 270 -430 {lab=G}
N 340 -370 400 -370 {lab=B}
N 400 -180 400 -170 {lab=GND}
N 400 -370 400 -240 {lab=B}
N 340 -450 340 -400 {lab=S}
N 270 -370 297.5 -370 {lab=G}
N 270 -430 270 -370 {lab=G}
N 340 -340 340 -250 {lab=GND}
N 340 -480 450 -480 {lab=D}
N 520 -520 520 -500 {
lab=D}
N 340 -560 460 -560 {lab=#net1}
N 340 -560 340 -510 {lab=#net1}
N 450 -520 450 -480 {lab=D}
N 450 -520 520 -520 {lab=D}
N 520 -560 520 -520 {
lab=D}
C {devices/gnd.sym} 210 -320 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 210 -370 0 0 {name=Vgs value=0.3}
C {devices/vsource.sym} 520 -470 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 520 -380 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 490 -560 1 0 {name=Vd}
C {lab_pin.sym} 210 -430 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 520 -540 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/vsource.sym} 400 -210 0 0 {name=Vb value=0.2}
C {devices/gnd.sym} 400 -170 0 0 {name=l1 lab=GND}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 -480 0 0 {name=M1
l=4.87
w=5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 320 -370 0 0 {name=M2
l=0.13
w=5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {devices/gnd.sym} 340 -250 0 0 {name=l4 lab=GND}
C {devices/code_shown.sym} -280 -430 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 10n 6u
write self-cascode-pmos-tran.raw
.endc
" }
C {lab_pin.sym} 340 -430 0 1 {name=p3 sig_type=std_logic lab=S}
C {lab_pin.sym} 400 -360 0 1 {name=p4 sig_type=std_logic lab=B}
C {devices/launcher.sym} 120 -80 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} -260 -220 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
