v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {OSR = 512 -> fs = 20.48Mhz} 660 -1000 0 0 0.4 0.4 {}
N 360 -820 360 -790 {lab=phi1}
N 360 -730 360 -700 {lab=GND}
N 90 -1000 90 -970 {lab=phi1n}
N 90 -910 90 -880 {lab=GND}
N 90 -820 90 -790 {lab=phi2}
N 90 -730 90 -700 {lab=GND}
N 360 -1000 360 -970 {lab=phi2n}
N 360 -910 360 -880 {lab=GND}
N 90 -600 90 -570 {lab=Vcm}
N 90 -510 90 -480 {lab=GND}
N 90 -420 90 -390 {lab=Vin}
N 90 -330 90 -300 {lab=GND}
N 530 -680 530 -650 {lab=vdd}
N 530 -590 530 -560 {lab=GND}
N 360 -600 360 -570 {lab=VBN}
N 360 -510 360 -480 {lab=GND}
N 360 -420 360 -390 {lab=VBP}
N 360 -330 360 -300 {lab=GND}
N 360 -210 360 -180 {lab=Vref_neg}
N 360 -120 360 -90 {lab=GND}
N 90 -210 90 -180 {lab=Vref_pos}
N 90 -120 90 -90 {lab=GND}
N 700 -320 810 -320 {lab=Vin}
N 700 -300 810 -300 {lab=VBN}
N 700 -280 810 -280 {lab=VBP}
N 700 -260 810 -260 {lab=Vcm}
N 700 -240 810 -240 {lab=Vref_pos}
N 700 -220 810 -220 {lab=Vref_neg}
N 880 -430 880 -390 {lab=phi1}
N 850 -430 880 -430 {lab=phi1}
N 900 -450 900 -390 {lab=phi1n}
N 850 -450 900 -450 {lab=phi1n}
N 920 -470 920 -390 {lab=phi2}
N 850 -470 920 -470 {lab=phi2}
N 940 -490 940 -390 {lab=phi2n}
N 850 -490 940 -490 {lab=phi2n}
N 1000 -430 1000 -390 {lab=vdd}
N 1000 -150 1000 -110 {lab=GND}
N 1110 -270 1160 -270 {lab=vout}
C {vsource.sym} 360 -760 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 20n 48.828125n)"}
C {gnd.sym} 360 -700 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 360 -820 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} 90 -940 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 20n 48.828125n)"}
C {gnd.sym} 90 -880 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 90 -1000 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} 90 -760 0 0 {name=V7 value="PULSE(0 1.2 27.5n 1n 1n 20n 48.828125n)"}
C {gnd.sym} 90 -700 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 90 -820 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} 360 -940 0 0 {name=V8 value="PULSE(1.2 0 27.5n 1n 1n 20n 48.828125n)"}
C {gnd.sym} 360 -880 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 360 -1000 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {vsource.sym} 90 -540 0 0 {name=V1 value=0.6}
C {vsource.sym} 90 -360 0 0 {name=V2 value="SIN(0.6 0.1 20k)"}
C {gnd.sym} 90 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 90 -420 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} 90 -480 0 0 {name=l2 lab=GND}
C {vsource.sym} 530 -620 0 0 {name=V3 value=1.2}
C {lab_pin.sym} 530 -680 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 530 -560 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 90 -600 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {vsource.sym} 360 -540 0 0 {name=V9 value=0.3}
C {gnd.sym} 360 -480 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 360 -600 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} 360 -360 0 0 {name=V10 value=0.2}
C {gnd.sym} 360 -300 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 360 -420 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} 360 -150 0 0 {name=V12 value=0.5}
C {gnd.sym} 360 -90 0 0 {name=l20 lab=GND}
C {lab_pin.sym} 360 -210 0 0 {name=p35 sig_type=std_logic lab=Vref_neg}
C {vsource.sym} 90 -150 0 0 {name=V11 value=0.7}
C {gnd.sym} 90 -90 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 90 -210 0 0 {name=p34 sig_type=std_logic lab=Vref_pos}
C {simulator_commands_shown.sym} 1000 -850 0 0 {
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
C {devices/launcher.sym} 820 -660 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {first_order_modulator.sym} 960 -270 0 0 {name=x1}
C {lab_pin.sym} 700 -320 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 700 -300 0 0 {name=p5 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 700 -280 0 0 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 700 -260 0 0 {name=p9 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 700 -240 0 0 {name=p10 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} 700 -220 0 0 {name=p11 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} 850 -430 0 0 {name=p12 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 850 -470 0 0 {name=p13 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 850 -490 0 0 {name=p14 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 850 -450 0 0 {name=p15 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1000 -430 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {gnd.sym} 1000 -110 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1160 -270 0 1 {name=p19 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 1350 -990 0 0 {name=NGSPICE1
only_toplevel=true
value="
.control
save all
tran 10n 100u

* ===== Total current =====
let i_total = -v3#branch

plot i_total

meas tran I_total AVG i_total from=2e-6 to=100e-6

* ===== Power =====
let p_total = 1.2*i_total

plot p_total

meas tran P_total AVG p_total from=2e-6 to=100e-6

print I_total
print P_total
write first_order_modulator_tb4.raw
wrdata output4.txt v(vout)
.endc
" }
