v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 430 -410 430 -380 {lab=vin}
N 430 -320 430 -290 {lab=GND}
N 690 -390 690 -360 {lab=V_DD}
N 690 -300 690 -270 {lab=GND}
N 780 -390 780 -360 {lab=V_SS}
N 780 -300 780 -270 {lab=GND}
N 690 -220 690 -190 {lab=V_BN}
N 690 -130 690 -100 {lab=GND}
N 780 -220 780 -190 {lab=V_BP}
N 780 -130 780 -100 {lab=GND}
N 1180 -560 1180 -510 {lab=V_SS}
N 1180 -800 1180 -720 {lab=V_DD}
N 1250 -800 1250 -720 {lab=V_BN}
N 1260 -560 1260 -510 {lab=V_BP}
N 890 -620 1100 -620 {lab=vin}
N 1350 -640 1440 -640 {lab=v_out}
N 1040 -670 1100 -670 {lab=v_out}
N 1040 -860 1040 -670 {lab=v_out}
N 1040 -860 1350 -860 {lab=v_out}
N 1350 -860 1350 -640 {lab=v_out}
N 1320 -640 1350 -640 {lab=v_out}
N 1350 -580 1350 -560 {lab=GND}
C {lab_pin.sym} 430 -410 0 0 {name=p7 sig_type=std_logic lab=vin}
C {gnd.sym} 430 -290 0 0 {name=l1 lab=GND}
C {vsource.sym} 690 -330 0 0 {name=VDD value="CACE\{vdd\}" savecurrent=false}
C {lab_pin.sym} 690 -390 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 690 -270 0 0 {name=l2 lab=GND}
C {vsource.sym} 780 -330 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 780 -390 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 780 -270 0 0 {name=l3 lab=GND}
C {vsource.sym} 690 -160 0 0 {name=VBN value=0.3 savecurrent=false}
C {lab_pin.sym} 690 -220 0 0 {name=p10 sig_type=std_logic lab=V_BN}
C {gnd.sym} 690 -100 0 0 {name=l4 lab=GND}
C {vsource.sym} 780 -160 0 0 {name=VBP value=0.2 savecurrent=false}
C {lab_pin.sym} 780 -220 0 0 {name=p11 sig_type=std_logic lab=V_BP}
C {gnd.sym} 780 -100 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 890 -620 0 0 {name=p1 sig_type=std_logic lab=vin}
C {lab_pin.sym} 1180 -800 0 0 {name=p2 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1180 -510 0 0 {name=p3 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1260 -510 0 0 {name=p4 sig_type=std_logic lab=V_BP}
C {lab_pin.sym} 1250 -800 0 0 {name=p5 sig_type=std_logic lab=V_BN}
C {gnd.sym} 1350 -560 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 1440 -640 0 1 {name=p6 sig_type=std_logic lab=v_out}
C {vsource.sym} 430 -350 0 0 {name=vin value="PULSE(0.5 0.7 1u 1n 1n 10u 20u)" savecurrent=false}
C {capa.sym} 1350 -610 0 0 {name=C2
value=CACE\{cload\}}
C {devices/code_shown.sym} -150 -170 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_CACE\{corner\}
.lib cornerMOShv.lib mos_CACE\{corner\}
"}
C {/home/designer/shared/Delta-sigma-adc/xschem/Pseudo_compensated_self_cascode_OTA.sym} 900 -460 0 0 {name=x1}
C {devices/code_shown.sym} 110 -1040 0 0 {name=NGSPICE1 only_toplevel=true 
value="
.include CACE\{DUT_path\}
.temp CACE\{temp\}
.param mc_ok = CACE\{sigma=1\}
.option SEED=CACE[CACE\{seed=12345\} + CACE\{iterations=0\}]
.param vin_dc CACE\{vin\}
.option method=gear

.control
set num_threads=1
tran 1n 20u uic
let vin_limit=0.56*CACE\{vdd\}
let vout_limit=vin_limit*0.999
meas tran tcross WHEN v(v_out)=vout_limit RISE = 1

meas tran tstart WHEN v(vin)=vin_limit RISE = 1
let tsettle=abs(tcross-tstart)

echo $&tsettle > CACE\{simpath\}/CACE\{filename\}_CACE\{N\}.data
.endc
"}
