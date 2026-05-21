v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1130 -680 1130 -620 {lab=V_DD}
N 1200 -680 1200 -620 {lab=V_BN}
N 1210 -460 1210 -400 {lab=V_BP}
N 1130 -460 1130 -400 {lab=V_SS}
N 1360 -540 1560 -540 {lab=v_out}
N 1390 -480 1390 -450 {lab=V_SS}
N 1130 -300 1130 -270 {lab=V_DD}
N 1130 -210 1130 -180 {lab=GND}
N 1220 -300 1220 -270 {lab=V_SS}
N 1220 -210 1220 -180 {lab=GND}
N 1130 -130 1130 -100 {lab=V_BN}
N 1130 -40 1130 -10 {lab=GND}
N 1220 -130 1220 -100 {lab=V_BP}
N 1220 -40 1220 -10 {lab=GND}
N 820 -520 820 -440 {lab=V_in}
N 820 -520 1050 -520 {lab=V_in}
N 970 -570 1050 -570 {lab=v_out}
N 970 -760 970 -570 {lab=v_out}
N 970 -760 1360 -760 {lab=v_out}
N 1360 -760 1360 -540 {lab=v_out}
N 1270 -540 1360 -540 {lab=v_out}
N 820 -380 820 -350 {lab=GND}
C {lab_pin.sym} 1560 -540 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 1130 -680 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1200 -680 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 1130 -400 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1210 -400 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 1130 -240 0 0 {name=VDD value="CACE\{vdd\}" savecurrent=false}
C {lab_pin.sym} 1130 -300 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 1130 -180 0 0 {name=l2 lab=GND}
C {vsource.sym} 1220 -240 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 1220 -300 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 1220 -180 0 0 {name=l3 lab=GND}
C {vsource.sym} 1130 -70 0 0 {name=Vin1 value=0.3 savecurrent=false}
C {lab_pin.sym} 1130 -130 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 1130 -10 0 0 {name=l4 lab=GND}
C {vsource.sym} 1220 -70 0 0 {name=Vin2 value=0.2 savecurrent=false}
C {lab_pin.sym} 1220 -130 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 1220 -10 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 1390 -450 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {/home/designer/shared/Delta-sigma-adc/xschem/Pseudo_compensated_self_cascode_OTA.sym} 850 -360 0 0 {name=x1}
C {devices/code_shown.sym} -10 -580 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.option sparse

.control
set num_threads=1
save all
noise v(v_out) Vin dec 101 1k 100MEG

let noise=onoise_total
echo $&noise > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
C {devices/code_shown.sym} 20 -180 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
"}
C {vsource.sym} 820 -410 0 0 {name=Vin value="dc CACE\{vin\} ac 1" savecurrent=false}
C {lab_pin.sym} 820 -470 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} 820 -350 0 0 {name=l1 lab=GND}
C {capa.sym} 1390 -510 0 0 {name=C1
value=CACE\{cload\}}
