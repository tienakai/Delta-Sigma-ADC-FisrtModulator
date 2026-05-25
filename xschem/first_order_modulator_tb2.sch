v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {OSR = 64 -> fs = 2.56Mhz} 1120 -1770 0 0 0.4 0.4 {}
N 820 -1590 820 -1560 {lab=phi1}
N 820 -1500 820 -1470 {lab=GND}
N 550 -1770 550 -1740 {lab=phi1n}
N 550 -1680 550 -1650 {lab=GND}
N 550 -1590 550 -1560 {lab=phi2}
N 550 -1500 550 -1470 {lab=GND}
N 820 -1770 820 -1740 {lab=phi2n}
N 820 -1680 820 -1650 {lab=GND}
N 550 -1370 550 -1340 {lab=Vcm}
N 550 -1280 550 -1250 {lab=GND}
N 550 -1190 550 -1160 {lab=Vin}
N 550 -1100 550 -1070 {lab=GND}
N 990 -1450 990 -1420 {lab=vdd}
N 990 -1360 990 -1330 {lab=GND}
N 820 -1370 820 -1340 {lab=VBN}
N 820 -1280 820 -1250 {lab=GND}
N 820 -1190 820 -1160 {lab=VBP}
N 820 -1100 820 -1070 {lab=GND}
N 820 -980 820 -950 {lab=Vref_neg}
N 820 -890 820 -860 {lab=GND}
N 550 -980 550 -950 {lab=Vref_pos}
N 550 -890 550 -860 {lab=GND}
N 1160 -1090 1270 -1090 {lab=Vin}
N 1160 -1070 1270 -1070 {lab=VBN}
N 1160 -1050 1270 -1050 {lab=VBP}
N 1160 -1030 1270 -1030 {lab=Vcm}
N 1160 -1010 1270 -1010 {lab=Vref_pos}
N 1160 -990 1270 -990 {lab=Vref_neg}
N 1340 -1200 1340 -1160 {lab=phi1}
N 1310 -1200 1340 -1200 {lab=phi1}
N 1360 -1220 1360 -1160 {lab=phi1n}
N 1310 -1220 1360 -1220 {lab=phi1n}
N 1380 -1240 1380 -1160 {lab=phi2}
N 1310 -1240 1380 -1240 {lab=phi2}
N 1400 -1260 1400 -1160 {lab=phi2n}
N 1310 -1260 1400 -1260 {lab=phi2n}
N 1460 -1200 1460 -1160 {lab=vdd}
N 1460 -920 1460 -880 {lab=GND}
N 1570 -1040 1670 -1040 {lab=vout}
C {vsource.sym} 820 -1530 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 160n 390.625n)"}
C {gnd.sym} 820 -1470 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 820 -1590 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} 550 -1710 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 160n 390.625n)"}
C {gnd.sym} 550 -1650 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 550 -1770 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} 550 -1530 0 0 {name=V7 value="PULSE(0 1.2 220n 1n 1n 160n 390.625n)"}
C {gnd.sym} 550 -1470 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 550 -1590 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} 820 -1710 0 0 {name=V8 value="PULSE(1.2 0 220n 1n 1n 160n 390.625n)"}
C {gnd.sym} 820 -1650 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 820 -1770 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {vsource.sym} 550 -1310 0 0 {name=V1 value=0.6}
C {vsource.sym} 550 -1130 0 0 {name=V2 value="SIN(0.6 0.1 20k)"}
C {gnd.sym} 550 -1070 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 550 -1190 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} 550 -1250 0 0 {name=l2 lab=GND}
C {vsource.sym} 990 -1390 0 0 {name=V3 value=1.2}
C {lab_pin.sym} 990 -1450 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 990 -1330 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 550 -1370 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {vsource.sym} 820 -1310 0 0 {name=V9 value=0.3}
C {gnd.sym} 820 -1250 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 820 -1370 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} 820 -1130 0 0 {name=V10 value=0.2}
C {gnd.sym} 820 -1070 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 820 -1190 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} 820 -920 0 0 {name=V12 value=0.5}
C {gnd.sym} 820 -860 0 0 {name=l20 lab=GND}
C {lab_pin.sym} 820 -980 0 0 {name=p35 sig_type=std_logic lab=Vref_neg}
C {vsource.sym} 550 -920 0 0 {name=V11 value=0.7}
C {gnd.sym} 550 -860 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 550 -980 0 0 {name=p34 sig_type=std_logic lab=Vref_pos}
C {devices/code_shown.sym} 1530 -1790 0 0 {name=NGSPICE
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
write first_order_modulator_tb2.raw
wrdata output2.txt v(vout)
.endc
" }
C {simulator_commands_shown.sym} 1170 -1630 0 0 {
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
C {devices/launcher.sym} 1290 -1440 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {first_order_modulator.sym} 1420 -1040 0 0 {name=x1}
C {lab_pin.sym} 1160 -1090 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 1160 -1070 0 0 {name=p5 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1160 -1050 0 0 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1160 -1030 0 0 {name=p9 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1160 -1010 0 0 {name=p10 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} 1160 -990 0 0 {name=p11 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} 1310 -1200 0 0 {name=p12 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1310 -1240 0 0 {name=p13 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 1310 -1260 0 0 {name=p14 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 1310 -1220 0 0 {name=p15 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1460 -1200 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {gnd.sym} 1460 -880 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1670 -1040 0 1 {name=p19 sig_type=std_logic lab=vout}
