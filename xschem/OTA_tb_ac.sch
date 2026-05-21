v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 920 -710 1110 -710 {lab=v_out}
N 1190 -820 1190 -760 {lab=V_DD}
N 1260 -820 1260 -760 {lab=V_BN}
N 1270 -600 1270 -540 {lab=V_BP}
N 1190 -600 1190 -540 {lab=V_SS}
N 920 -660 1110 -660 {lab=V_in}
N 1370 -680 1620 -680 {lab=v_out}
N 920 -900 920 -710 {lab=v_out}
N 920 -900 1370 -900 {lab=v_out}
N 1370 -900 1370 -680 {lab=v_out}
N 1330 -680 1370 -680 {lab=v_out}
N 1450 -620 1450 -590 {lab=V_SS}
N 640 -570 640 -540 {lab=V_in}
N 640 -480 640 -450 {lab=GND}
N 820 -570 820 -540 {lab=V_DD}
N 820 -480 820 -450 {lab=GND}
N 910 -570 910 -540 {lab=V_SS}
N 910 -480 910 -450 {lab=GND}
N 820 -400 820 -370 {lab=V_BN}
N 820 -310 820 -280 {lab=GND}
N 910 -400 910 -370 {lab=V_BP}
N 910 -310 910 -280 {lab=GND}
N 1620 -680 1620 -600 {lab=v_out}
N 1620 -540 1620 -500 {lab=V_SS}
C {devices/code_shown.sym} 0 -770 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write OTA_tb_ac.raw
set appendwrite

ac dec 101 1k 100MEG
write OTA_tb_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/launcher.sym} 600 -100 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {Pseudo_compensated_self_cascode_OTA.sym} 910 -500 0 0 {name=x1}
C {lab_pin.sym} 920 -660 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 1520 -680 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 1190 -820 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1260 -820 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 1190 -540 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1270 -540 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 640 -510 0 0 {name=Vin value="dc 0.7 ac 1" savecurrent=false}
C {lab_pin.sym} 640 -570 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 640 -450 0 0 {name=l1 lab=GND}
C {vsource.sym} 820 -510 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 820 -570 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 820 -450 0 0 {name=l2 lab=GND}
C {vsource.sym} 910 -510 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 910 -570 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 910 -450 0 0 {name=l3 lab=GND}
C {vsource.sym} 820 -340 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 820 -400 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 820 -280 0 0 {name=l4 lab=GND}
C {vsource.sym} 910 -340 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 910 -400 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 910 -280 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1450 -590 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {isource.sym} 1620 -570 2 0 {name=I1 value="dc 0 ac 0"}
C {lab_pin.sym} 1620 -500 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {devices/launcher.sym} 920 -100 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} 0 -220 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value=".include [file rootname [xschem get schname]].save
"}
C {devices/spice_probe.sym} 1400 -680 0 0 {name=p14 attrs=""}
C {devices/spice_probe.sym} 1040 -660 0 0 {name=p15 attrs=""}
C {sg13g2_pr/cap_cmim.sym} 1450 -650 0 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {simulator_commands_shown.sym} 0 -100 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
"
      }
