v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {x1 PMOS M1:} 940 -1160 0 0 0.4 0.4 {}
N 460 -1100 460 -1080 {
lab=GND}
N 460 -1190 460 -1160 {
lab=G}
N 690 -1180 690 -1120 {
lab=GND}
N 650 -1300 690 -1300 {
lab=D}
N 520 -1240 550 -1240 {lab=G}
N 590 -1210 590 -1050 {lab=GND}
N 590 -1300 590 -1270 {lab=#net1}
N 460 -1190 520 -1190 {lab=G}
N 520 -1240 520 -1190 {lab=G}
N 650 -940 650 -930 {lab=GND}
N 590 -1240 650 -1240 {lab=#net2}
N 690 -1300 690 -1240 {
lab=D}
N 650 -1240 650 -1000 {lab=#net2}
C {devices/launcher.sym} 640 -480 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/gnd.sym} 460 -1080 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 460 -1130 0 0 {name=Vgs value=0.5}
C {devices/vsource.sym} 690 -1210 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 690 -1120 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 620 -1300 1 0 {name=Vd}
C {lab_pin.sym} 460 -1190 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 690 -1300 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/gnd.sym} 590 -1050 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 650 -970 0 0 {name=Vb value=0.7}
C {devices/gnd.sym} 650 -930 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 470 -850 0 0 {name=h1
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 380 -750 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {sg13g2_pr/sg13_lv_pmos.sym} 570 -1240 0 0 {name=M1
l=0.13
w=3
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {code_shown.sym} -60 -1560 0 0 {name=NGSPICE2
only_toplevel=false
value="
.param temp=27
.options savecurrents
.control
save all

show @n.xm1.nsg13_lv_pmos

* Save transistor parameters
save @n.xm1.nsg13_lv_pmos[vth]
save @n.xm1.nsg13_lv_pmos[vgs]
save @n.xm1.nsg13_lv_pmos[vds]
save @n.xm1.nsg13_lv_pmos[vgt]
save @n.xm1.nsg13_lv_pmos[ids]
save @n.xm1.nsg13_lv_pmos[gm]
save @n.xm1.nsg13_lv_pmos[gds]
save @n.xm1.nsg13_lv_pmos[gmb]
save @n.xm1.nsg13_lv_pmos[cgs]
save @n.xm1.nsg13_lv_pmos[cgd]
save @n.xm1.nsg13_lv_pmos[fug]
save @n.xm1.nsg13_lv_pmos[rg]



* Operating Point Analysis
op
remzerovec
write test.raw

quit
.endc"}
C {devices/ngspice_get_value.sym} 910 -1090 0 0 {name=r61 
node=v(@n.xm1.nsg13_lv_pmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 990 -1090 0 0 {name=r62 
node=i(@n.xm1.nsg13_lv_pmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 910 -1050 0 0 {name=r63
node=v(@n.xm1.nsg13_lv_pmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 990 -970 0 0 {name=r64 
node=@n.xm1.nsg13_lv_pmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 1070 -1090 0 0 {name=r65
node=@n.xm1.nsg13_lv_pmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 990 -1050 0 0 {name=r66 
node=@n.xm1.nsg13_lv_pmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 990 -1010 0 0 {name=r67 
node=@n.xm1.nsg13_lv_pmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 910 -1010 0 0 {name=r68
node=v(@n.xm1.nsg13_lv_pmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 910 -970 0 0 {name=r69
node=v(@n.xm1.nsg13_lv_pmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 1070 -1010 0 0 {name=r70
node=v(@n.xm1.nsg13_lv_pmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 1070 -1050 0 0 {name=r71 
node=@n.xm1.nsg13_lv_pmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 1070 -970 0 0 {name=r72
node=v(@n.xm1.nsg13_lv_pmos[rg])
descr="rg ="}
C {devices/launcher.sym} 710 -850 0 0 {name=h5
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
