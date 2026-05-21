v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Testbench for Operating Point analysis - Parameterizable Transmission Gate} 4270 -1320 0 0 1 1 {}
T {x1 NMOS M1:} 5680 -670 0 0 0.4 0.4 {}
T {x1 PMOS M2:} 5980 -670 0 0 0.4 0.4 {}
T {x2 NMOS M1:} 5680 -350 0 0 0.4 0.4 {}
T {x2 PMOS M2:} 5980 -350 0 0 0.4 0.4 {}
T {TG is OFF!} 5250 -410 0 0 0.5 0.5 {}
T {TG is ON!} 5250 -730 0 0 0.5 0.5 {}
N 4930 -340 4930 -300 {
lab=GND}
N 4930 -440 4930 -400 {
lab=v_a}
N 4910 -440 4930 -440 {
lab=v_a}
N 5050 -600 5110 -600 {
lab=v_a}
N 5050 -280 5110 -280 {
lab=v_a}
N 5050 -440 5050 -280 {
lab=v_a}
N 5050 -600 5050 -440 {
lab=v_a}
N 4930 -440 5050 -440 {
lab=v_a}
N 5270 -280 5370 -280 {
lab=vout_tg_off}
N 5270 -600 5370 -600 {
lab=vout_tg_on}
N 5210 -170 5210 -160 {
lab=VDD}
N 5210 -380 5210 -370 {
lab=GND}
N 5370 -600 5370 -560 {
lab=vout_tg_on}
N 5370 -600 5410 -600 {
lab=vout_tg_on}
N 5370 -500 5370 -480 {
lab=GND}
N 5370 -280 5370 -240 {
lab=vout_tg_off}
N 5370 -180 5370 -140 {
lab=GND}
N 5370 -280 5410 -280 {
lab=vout_tg_off}
N 4790 -440 4790 -400 {
lab=VDD}
N 4790 -340 4790 -300 {
lab=GND}
N 5190 -520 5190 -490 {lab=GND}
N 5170 -720 5190 -720 {lab=VDD}
N 5190 -720 5190 -680 {lab=VDD}
N 5100 -560 5110 -560 {lab=VDD}
N 5100 -650 5110 -650 {lab=GND}
N 5100 -650 5100 -640 {lab=GND}
N 5070 -240 5110 -240 {lab=VDD}
N 5070 -250 5070 -240 {lab=VDD}
N 5090 -330 5110 -330 {lab=GND}
N 5090 -330 5090 -320 {lab=GND}
N 5190 -380 5190 -360 {lab=GND}
N 5190 -380 5210 -380 {lab=GND}
N 5190 -200 5190 -160 {lab=VDD}
N 5190 -160 5210 -160 {lab=VDD}
C {devices/ngspice_get_value.sym} 5950 -600 0 0 {name=r49 
node=v(@n.x1.xm2.nsg13_lv_pmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 6030 -600 0 0 {name=r50 
node=i(@n.x1.xm2.nsg13_lv_pmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 5950 -560 0 0 {name=r51
node=v(@n.x1.xm2.nsg13_lv_pmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 6030 -480 0 0 {name=r52 
node=@n.x1.xm2.nsg13_lv_pmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 6110 -600 0 0 {name=r53
node=@n.x1.xm2.nsg13_lv_pmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 6030 -560 0 0 {name=r54 
node=@n.x1.xm2.nsg13_lv_pmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 6030 -520 0 0 {name=r55 
node=@n.x1.xm2.nsg13_lv_pmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 5950 -520 0 0 {name=r56
node=v(@n.x1.xm2.nsg13_lv_pmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 5950 -480 0 0 {name=r57
node=v(@n.x1.xm2.nsg13_lv_pmos[vgt])
descr="vod ="}
C {devices/lab_wire.sym} 4910 -440 0 0 {name=p3 sig_type=std_logic lab=v_a}
C {devices/vsource.sym} 4930 -370 0 0 {name=v_a value="0.6"}
C {devices/gnd.sym} 4930 -300 0 0 {name=l14 lab=GND}
C {devices/lab_wire.sym} 5410 -600 0 1 {name=p4 sig_type=std_logic lab=vout_tg_on}
C {devices/gnd.sym} 5190 -490 0 0 {name=l15 lab=GND}
C {devices/vdd.sym} 5170 -720 0 0 {name=l16 lab=VDD}
C {devices/lab_wire.sym} 5410 -280 0 1 {name=p5 sig_type=std_logic lab=vout_tg_off}
C {devices/vdd.sym} 5070 -250 0 0 {name=l18 lab=VDD}
C {devices/gnd.sym} 5210 -370 0 0 {name=l19 lab=GND}
C {devices/vdd.sym} 5210 -170 0 0 {name=l20 lab=VDD}
C {devices/vsource.sym} 4790 -370 0 0 {name=VDD1 value="1.2"}
C {devices/gnd.sym} 4790 -300 0 0 {name=l21 lab=GND}
C {devices/vdd.sym} 4790 -440 0 0 {name=l22 lab=VDD}
C {devices/code_shown.sym} 4270 190 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/launcher.sym} 5710 -820 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/launcher.sym} 5710 -760 0 0 {name=h4
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {code_shown.sym} 4270 -1170 0 0 {name=NGSPICE1
only_toplevel=false
value="
.param temp=27
.options savecurrents
.control
save all

show n.x1.xm1.nsg13_lv_nmos
show n.x1.xm2.nsg13_lv_pmos

* Save transistor parameters
save @n.x1.xm1.nsg13_lv_nmos[vth]
save @n.x1.xm1.nsg13_lv_nmos[vgs]
save @n.x1.xm1.nsg13_lv_nmos[vds]
save @n.x1.xm1.nsg13_lv_nmos[vgt]
save @n.x1.xm1.nsg13_lv_nmos[ids]
save @n.x1.xm1.nsg13_lv_nmos[gm]
save @n.x1.xm1.nsg13_lv_nmos[gds]
save @n.x1.xm1.nsg13_lv_nmos[gmb]
save @n.x1.xm1.nsg13_lv_nmos[cgs]
save @n.x1.xm1.nsg13_lv_nmos[cgd]
save @n.x1.xm1.nsg13_lv_nmos[fug]
save @n.x1.xm1.nsg13_lv_nmos[rg]

save @n.x1.xm2.nsg13_lv_pmos[vth]
save @n.x1.xm2.nsg13_lv_pmos[vgs]
save @n.x1.xm2.nsg13_lv_pmos[vds]
save @n.x1.xm2.nsg13_lv_pmos[vgt]
save @n.x1.xm2.nsg13_lv_pmos[ids]
save @n.x1.xm2.nsg13_lv_pmos[gm]
save @n.x1.xm2.nsg13_lv_pmos[gds]
save @n.x1.xm2.nsg13_lv_pmos[gmb]
save @n.x1.xm2.nsg13_lv_pmos[cgs]
save @n.x1.xm2.nsg13_lv_pmos[cgd]
save @n.x1.xm2.nsg13_lv_pmos[fug]
save @n.x1.xm2.nsg13_lv_pmos[rg]

save @n.x2.xm1.nsg13_lv_nmos[vth]
save @n.x2.xm1.nsg13_lv_nmos[vgs]
save @n.x2.xm1.nsg13_lv_nmos[vds]
save @n.x2.xm1.nsg13_lv_nmos[vgt]
save @n.x2.xm1.nsg13_lv_nmos[ids]
save @n.x2.xm1.nsg13_lv_nmos[gm]
save @n.x2.xm1.nsg13_lv_nmos[gds]
save @n.x2.xm1.nsg13_lv_nmos[gmb]
save @n.x2.xm1.nsg13_lv_nmos[cgs]
save @n.x2.xm1.nsg13_lv_nmos[cgd]
save @n.x2.xm1.nsg13_lv_nmos[fug]
save @n.x2.xm1.nsg13_lv_nmos[rg]

save @n.x2.xm2.nsg13_lv_pmos[vth]
save @n.x2.xm2.nsg13_lv_pmos[vgs]
save @n.x2.xm2.nsg13_lv_pmos[vds]
save @n.x2.xm2.nsg13_lv_pmos[vgt]
save @n.x2.xm2.nsg13_lv_pmos[ids]
save @n.x2.xm2.nsg13_lv_pmos[gm]
save @n.x2.xm2.nsg13_lv_pmos[gds]
save @n.x2.xm2.nsg13_lv_pmos[gmb]
save @n.x2.xm2.nsg13_lv_pmos[cgs]
save @n.x2.xm2.nsg13_lv_pmos[cgd]
save @n.x2.xm2.nsg13_lv_pmos[fug]
save @n.x2.xm2.nsg13_lv_pmos[rg]

* Operating Point Analysis
op
remzerovec
write T_gate_tb_op.raw

quit
.endc"}
C {devices/capa.sym} 5370 -530 0 0 {name=C3
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 5370 -480 0 0 {name=l23 lab=GND}
C {devices/capa.sym} 5370 -210 0 0 {name=C4
m=1
value=5p
footprint=1206
device="ceramic capacitor"}
C {devices/gnd.sym} 5370 -140 0 0 {name=l24 lab=GND}
C {devices/ngspice_get_value.sym} 6110 -520 0 0 {name=r58
node=v(@n.x1.xm2.nsg13_lv_pmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 6110 -560 0 0 {name=r59
node=@n.x1.xm2.nsg13_lv_pmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 6110 -480 0 0 {name=r60
node=v(@n.x1.xm2.nsg13_lv_pmos[rg])
descr="rg ="}
C {devices/ngspice_get_value.sym} 5650 -600 0 0 {name=r61 
node=v(@n.x1.xm1.nsg13_lv_nmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 5730 -600 0 0 {name=r62 
node=i(@n.x1.xm1.nsg13_lv_nmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 5650 -560 0 0 {name=r63
node=v(@n.x1.xm1.nsg13_lv_nmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 5730 -480 0 0 {name=r64 
node=@n.x1.xm1.nsg13_lv_nmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 5810 -600 0 0 {name=r65
node=@n.x1.xm1.nsg13_lv_nmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 5730 -560 0 0 {name=r66 
node=@n.x1.xm1.nsg13_lv_nmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 5730 -520 0 0 {name=r67 
node=@n.x1.xm1.nsg13_lv_nmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 5650 -520 0 0 {name=r68
node=v(@n.x1.xm1.nsg13_lv_nmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 5650 -480 0 0 {name=r69
node=v(@n.x1.xm1.nsg13_lv_nmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 5810 -520 0 0 {name=r70
node=v(@n.x1.xm1.nsg13_lv_nmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 5810 -560 0 0 {name=r71 
node=@n.x1.xm1.nsg13_lv_nmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 5810 -480 0 0 {name=r72
node=v(@n.x1.xm1.nsg13_lv_nmos[rg])
descr="rg ="}
C {devices/ngspice_get_value.sym} 5950 -280 0 0 {name=r73 
node=v(@n.x2.xm2.nsg13_lv_pmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 6030 -280 0 0 {name=r74 
node=i(@n.x2.xm2.nsg13_lv_pmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 5950 -240 0 0 {name=r75
node=v(@n.x2.xm2.nsg13_lv_pmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 6030 -160 0 0 {name=r76 
node=@n.x2.xm2.nsg13_lv_pmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 6110 -280 0 0 {name=r77
node=@n.x2.xm2.nsg13_lv_pmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 6030 -240 0 0 {name=r78 
node=@n.x2.xm2.nsg13_lv_pmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 6030 -200 0 0 {name=r79 
node=@n.x2.xm2.nsg13_lv_pmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 5950 -200 0 0 {name=r80
node=v(@n.x2.xm2.nsg13_lv_pmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 5950 -160 0 0 {name=r81
node=v(@n.x2.xm2.nsg13_lv_pmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 6110 -200 0 0 {name=r82
node=v(@n.x2.xm2.nsg13_lv_pmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 6110 -240 0 0 {name=r83
node=@n.x2.xm2.nsg13_lv_pmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 6110 -160 0 0 {name=r84
node=v(@n.x2.xm2.nsg13_lv_pmos[rg])
descr="rg ="}
C {devices/ngspice_get_value.sym} 5650 -280 0 0 {name=r85 
node=v(@n.x2.xm1.nsg13_lv_nmos[vth])
descr="vth ="}
C {devices/ngspice_get_value.sym} 5730 -280 0 0 {name=r86 
node=i(@n.x2.xm1.nsg13_lv_nmos[ids])
descr="id ="}
C {devices/ngspice_get_value.sym} 5650 -240 0 0 {name=r87
node=v(@n.x2.xm1.nsg13_lv_nmos[vgs])
descr="vgs ="}
C {devices/ngspice_get_value.sym} 5730 -160 0 0 {name=r88 
node=@n.x2.xm1.nsg13_lv_nmos[gmb]
descr="gmb ="}
C {devices/ngspice_get_value.sym} 5810 -280 0 0 {name=r89
node=@n.x2.xm1.nsg13_lv_nmos[cgs]
descr="cgs ="}
C {devices/ngspice_get_value.sym} 5730 -240 0 0 {name=r90 
node=@n.x2.xm1.nsg13_lv_nmos[gm]
descr="gm ="}
C {devices/ngspice_get_value.sym} 5730 -200 0 0 {name=r91 
node=@n.x2.xm1.nsg13_lv_nmos[gds]
descr="gds ="}
C {devices/ngspice_get_value.sym} 5650 -200 0 0 {name=r92
node=v(@n.x2.xm1.nsg13_lv_nmos[vds])
descr="vds ="}
C {devices/ngspice_get_value.sym} 5650 -160 0 0 {name=r93
node=v(@n.x2.xm1.nsg13_lv_nmos[vgt])
descr="vod ="}
C {devices/ngspice_get_value.sym} 5810 -200 0 0 {name=r94
node=v(@n.x2.xm1.nsg13_lv_nmos[fug])
descr="fug(f_t) ="}
C {devices/ngspice_get_value.sym} 5810 -240 0 0 {name=r95 
node=@n.x2.xm1.nsg13_lv_nmos[cgd]
descr="cgd ="}
C {devices/ngspice_get_value.sym} 5810 -160 0 0 {name=r96
node=v(@n.x2.xm1.nsg13_lv_nmos[rg])
descr="rg ="}
C {T_gate.sym} 5190 -600 2 1 {name=x1}
C {devices/vdd.sym} 5100 -560 0 0 {name=l1 lab=VDD}
C {devices/gnd.sym} 5100 -640 0 0 {name=l2 lab=GND}
C {T_gate.sym} 5190 -280 2 1 {name=x2 }
C {devices/gnd.sym} 5090 -320 0 0 {name=l3 lab=GND}
