v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {x1 NMOS M1:} 1920 -940 0 0 0.4 0.4 {}
T {x1 NMOS M2:} 2220 -940 0 0 0.4 0.4 {}
N 1560 -860 1560 -840 {
lab=GND}
N 1560 -950 1560 -920 {
lab=G}
N 1790 -940 1790 -880 {
lab=GND}
N 1790 -1060 1790 -1000 {
lab=D}
N 1750 -1060 1790 -1060 {
lab=D}
N 1620 -1000 1650 -1000 {lab=G}
N 1620 -950 1620 -890 {lab=G}
N 1620 -890 1650 -890 {lab=G}
N 1690 -970 1690 -920 {lab=#net1}
N 1690 -1060 1690 -1030 {lab=#net2}
N 1690 -840 1690 -810 {lab=GND}
N 1560 -950 1620 -950 {lab=G}
N 1620 -1000 1620 -950 {lab=G}
N 1690 -890 1710 -890 {lab=GND}
N 1710 -890 1710 -840 {lab=GND}
N 1690 -840 1710 -840 {lab=GND}
N 1690 -860 1690 -840 {lab=GND}
N 1690 -1000 1750 -1000 {lab=#net3}
N 1750 -1000 1750 -760 {lab=#net3}
N 1750 -700 1750 -690 {lab=GND}
C {devices/gnd.sym} 1560 -840 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 1560 -890 0 0 {name=Vgs value=0.5}
C {devices/vsource.sym} 1790 -970 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 1790 -880 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 1720 -1060 1 0 {name=Vd}
C {lab_pin.sym} 1560 -950 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 1790 -1060 0 1 {name=p2 sig_type=std_logic lab=D}
C {sg13g2_pr/sg13_lv_nmos.sym} 1670 -890 0 0 {name=M1
l=0.87u
w=12.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 1670 -1000 0 0 {name=M2
l=0.5u
w=12.5u
ng=2
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 1690 -810 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1750 -730 0 0 {name=Vb value=0.6}
C {devices/gnd.sym} 1750 -690 0 0 {name=l1 lab=GND}
C {devices/ngspice_get_value.sym} 2190 -870 0 0 {name=r49 
node=v(@n.xm2.nsg13_lv_nmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 2270 -870 0 0 {name=r50 
node=i(@n.xm2.nsg13_lv_nmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 2190 -830 0 0 {name=r51
node=v(@n.xm2.nsg13_lv_nmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 2270 -750 0 0 {name=r52 
node=@n.xm2.nsg13_lv_nmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 2350 -870 0 0 {name=r53
node=@n.xm2.nsg13_lv_nmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 2270 -830 0 0 {name=r54 
node=@n.xm2.nsg13_lv_nmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 2270 -790 0 0 {name=r55 
node=@n.xm2.nsg13_lv_nmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 2190 -790 0 0 {name=r56
node=v(@n.xm2.nsg13_lv_nmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 2190 -750 0 0 {name=r57
node=v(@n.xm2.nsg13_lv_nmos[vgt])
descr="vod ="}
C {devices/launcher.sym} 1590 -590 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 1580 -530 0 0 {name=h5
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/ngspice_get_value.sym} 2350 -790 0 0 {name=r58
node=v(@n.xm2.nsg13_lv_nmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 2350 -830 0 0 {name=r59
node=@n.xm2.nsg13_lv_nmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 2350 -750 0 0 {name=r60
node=v(@n.xm2.nsg13_lv_nmos[rg])
descr="rg ="}
C {devices/ngspice_get_value.sym} 1890 -870 0 0 {name=r61 
node=v(@n.xm1.nsg13_lv_nmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 1970 -870 0 0 {name=r62 
node=i(@n.xm1.nsg13_lv_nmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 1890 -830 0 0 {name=r63
node=v(@n.xm1.nsg13_lv_nmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 1970 -750 0 0 {name=r64 
node=@n.xm1.nsg13_lv_nmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 2050 -870 0 0 {name=r65
node=@n.xm1.nsg13_lv_nmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 1970 -830 0 0 {name=r66 
node=@n.xm1.nsg13_lv_nmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 1970 -790 0 0 {name=r67 
node=@n.xm1.nsg13_lv_nmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 1890 -790 0 0 {name=r68
node=v(@n.xm1.nsg13_lv_nmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 1890 -750 0 0 {name=r69
node=v(@n.xm1.nsg13_lv_nmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 2050 -790 0 0 {name=r70
node=v(@n.xm1.nsg13_lv_nmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 2050 -830 0 0 {name=r71 
node=@n.xm1.nsg13_lv_nmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 2050 -750 0 0 {name=r72
node=v(@n.xm1.nsg13_lv_nmos[rg])
descr="rg ="}
C {devices/code_shown.sym} 1240 -310 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {code_shown.sym} 900 -1280 0 0 {name=NGSPICE2
only_toplevel=false
value="
.param temp=27
.options savecurrents
.control
save all

show @n.xm1.nsg13_lv_nmos
show @n.xm2.nsg13_lv_nmos

* Save transistor parameters
save @n.xm1.nsg13_lv_nmos[vth]
save @n.xm1.nsg13_lv_nmos[vgs]
save @n.xm1.nsg13_lv_nmos[vds]
save @n.xm1.nsg13_lv_nmos[vgt]
save @n.xm1.nsg13_lv_nmos[ids]
save @n.xm1.nsg13_lv_nmos[gm]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[gmb]
save @n.xm1.nsg13_lv_nmos[cgs]
save @n.xm1.nsg13_lv_nmos[cgd]
save @n.xm1.nsg13_lv_nmos[fug]
save @n.xm1.nsg13_lv_nmos[rg]
save @n.xm1.nsg13_lv_nmos[vsb]
save @n.xm2.nsg13_lv_nmos[vth]
save @n.xm2.nsg13_lv_nmos[vgs]
save @n.xm2.nsg13_lv_nmos[vds]
save @n.xm2.nsg13_lv_nmos[vgt]
save @n.xm2.nsg13_lv_nmos[ids]
save @n.xm2.nsg13_lv_nmos[gm]
save @n.xm2.nsg13_lv_nmos[gds]
save @n.xm2.nsg13_lv_nmos[gmb]
save @n.xm2.nsg13_lv_nmos[cgs]
save @n.xm2.nsg13_lv_nmos[cgd]
save @n.xm2.nsg13_lv_nmos[fug]
save @n.xm2.nsg13_lv_nmos[rg]


* Operating Point Analysis
op
remzerovec
write self-cascode-nmos-op.raw

quit
.endc"}
