v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {x1 PMOS M1:} 950 -510 0 0 0.4 0.4 {}
T {x1 PMOS M2:} 1250 -510 0 0 0.4 0.4 {}
N 550 -780 550 -760 {
lab=GND}
N 550 -870 550 -840 {
lab=G}
N 860 -880 860 -820 {
lab=GND}
N 610 -920 640 -920 {lab=G}
N 550 -870 610 -870 {lab=G}
N 610 -920 610 -870 {lab=G}
N 680 -810 740 -810 {lab=#net1}
N 740 -620 740 -610 {lab=GND}
N 740 -810 740 -680 {lab=#net1}
N 680 -890 680 -840 {lab=#net2}
N 610 -810 637.5 -810 {lab=G}
N 610 -870 610 -810 {lab=G}
N 680 -780 680 -690 {lab=GND}
N 680 -920 790 -920 {lab=D}
N 860 -960 860 -940 {
lab=D}
N 680 -1000 800 -1000 {lab=#net3}
N 680 -1000 680 -950 {lab=#net3}
N 790 -960 790 -920 {lab=D}
N 790 -960 860 -960 {lab=D}
N 860 -1000 860 -960 {
lab=D}
C {devices/gnd.sym} 550 -760 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 550 -810 0 0 {name=Vgs value=0.3}
C {devices/vsource.sym} 860 -910 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 860 -820 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 830 -1000 1 0 {name=Vd}
C {lab_pin.sym} 550 -870 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 860 -980 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/vsource.sym} 740 -650 0 0 {name=Vb value=0.2}
C {devices/gnd.sym} 740 -610 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 490 -200 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 390 -100 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {sg13g2_pr/sg13_lv_pmos.sym} 660 -920 0 0 {name=M1
l=4.87
w=5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 660 -810 0 0 {name=M2
l=0.13
w=5
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {code_shown.sym} -50 -910 0 0 {name=NGSPICE2
only_toplevel=false
value="
.param temp=27
.options savecurrents
.control
save all

show @n.xm1.nsg13_lv_pmos
show @n.xm2.nsg13_lv_pmos

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


save @n.xm2.nsg13_lv_pmos[vth]
save @n.xm2.nsg13_lv_pmos[vgs]
save @n.xm2.nsg13_lv_pmos[vds]
save @n.xm2.nsg13_lv_pmos[vgt]
save @n.xm2.nsg13_lv_pmos[ids]
save @n.xm2.nsg13_lv_pmos[gm]
save @n.xm2.nsg13_lv_pmos[gds]
save @n.xm2.nsg13_lv_pmos[gmb]
save @n.xm2.nsg13_lv_pmos[cgs]
save @n.xm2.nsg13_lv_pmos[cgd]
save @n.xm2.nsg13_lv_pmos[fug]
save @n.xm2.nsg13_lv_pmos[rg]

* Operating Point Analysis
op
remzerovec
write self-cascode-pmos-op.raw

quit
.endc"}
C {devices/ngspice_get_value.sym} 1220 -440 0 0 {name=r49 
node=v(@n.xm2.nsg13_lv_pmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 1300 -440 0 0 {name=r50 
node=i(@n.xm2.nsg13_lv_pmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 1220 -400 0 0 {name=r51
node=v(@n.xm2.nsg13_lv_pmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 1300 -320 0 0 {name=r52 
node=@n.xm2.nsg13_lv_pmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 1380 -440 0 0 {name=r53
node=@n.xm2.nsg13_lv_pmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 1300 -400 0 0 {name=r54 
node=@n.xm2.nsg13_lv_pmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 1300 -360 0 0 {name=r55 
node=@n.xm2.nsg13_lv_pmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 1220 -360 0 0 {name=r56
node=v(@n.xm2.nsg13_lv_pmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 1220 -320 0 0 {name=r57
node=v(@n.xm2.nsg13_lv_pmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 1380 -360 0 0 {name=r58
node=v(@n.xm2.nsg13_lv_pmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 1380 -400 0 0 {name=r59
node=@n.xm2.nsg13_lv_pmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 1380 -320 0 0 {name=r60
node=v(@n.xm2.nsg13_lv_pmos[rg])
descr="rg ="}
C {devices/ngspice_get_value.sym} 920 -440 0 0 {name=r61 
node=v(@n.xm1.nsg13_lv_pmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 1000 -440 0 0 {name=r62 
node=i(@n.xm1.nsg13_lv_pmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 920 -400 0 0 {name=r63
node=v(@n.xm1.nsg13_lv_pmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 1000 -320 0 0 {name=r64 
node=@n.xm1.nsg13_lv_pmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 1080 -440 0 0 {name=r65
node=@n.xm1.nsg13_lv_pmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 1000 -400 0 0 {name=r66 
node=@n.xm1.nsg13_lv_pmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 1000 -360 0 0 {name=r67 
node=@n.xm1.nsg13_lv_pmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 920 -360 0 0 {name=r68
node=v(@n.xm1.nsg13_lv_pmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 920 -320 0 0 {name=r69
node=v(@n.xm1.nsg13_lv_pmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 1080 -360 0 0 {name=r70
node=v(@n.xm1.nsg13_lv_pmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 1080 -400 0 0 {name=r71 
node=@n.xm1.nsg13_lv_pmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 1080 -320 0 0 {name=r72
node=v(@n.xm1.nsg13_lv_pmos[rg])
descr="rg ="}
C {devices/launcher.sym} 720 -200 0 0 {name=h5
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/gnd.sym} 680 -690 0 0 {name=l4 lab=GND}
