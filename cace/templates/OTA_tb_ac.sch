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
N 1370 -680 1500 -680 {lab=v_out}
C {devices/launcher.sym} 600 -100 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 920 -660 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 1500 -680 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 1190 -820 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1260 -820 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 1190 -540 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1270 -540 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 640 -510 0 0 {name=Vin value="dc CACE\{vin\} ac 1" savecurrent=false}
C {lab_pin.sym} 640 -570 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 640 -450 0 0 {name=l1 lab=GND}
C {vsource.sym} 820 -510 0 0 {name=VDD value="CACE\{vdd\}" savecurrent=false}
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
C {devices/launcher.sym} 920 -100 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/spice_probe.sym} 1400 -680 0 0 {name=p14 attrs=""}
C {devices/spice_probe.sym} 1040 -660 0 0 {name=p15 attrs=""}
C {/home/designer/shared/Delta-sigma-adc/xschem/Pseudo_compensated_self_cascode_OTA.sym} 910 -500 0 0 {name=x1}
C {devices/code_shown.sym} -110 -830 0 0 {name=NGSPICE only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]

.control
set num_threads=1

op
let dcgain=v(v_out)/v(v_in)

ac dec 101 10 100MEG
meas ac acgain MAX vmag(v_out) FROM=10 TO=100
let f3db = acgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1

echo $&op1.dcgain $&fbw > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/code_shown.sym} -110 -340 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
"}
C {capa.sym} 1450 -650 0 0 {name=C1
value=CACE\{cload\}}
