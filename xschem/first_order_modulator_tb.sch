v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {OSR = 256 -> fs = 10.24Mhz} 780 30 0 0 0.4 0.4 {}
N 190 -130 190 -100 {lab=phi1}
N 190 -40 190 -10 {lab=GND}
N -80 -310 -80 -280 {lab=phi1n}
N -80 -220 -80 -190 {lab=GND}
N -80 -130 -80 -100 {lab=phi2}
N -80 -40 -80 -10 {lab=GND}
N 190 -310 190 -280 {lab=phi2n}
N 190 -220 190 -190 {lab=GND}
N -330 90 -330 120 {lab=Vcm}
N -330 180 -330 210 {lab=GND}
N -330 270 -330 300 {lab=Vin}
N -330 360 -330 390 {lab=GND}
N -330 -300 -330 -270 {lab=vdd}
N -330 -210 -330 -180 {lab=GND}
N -80 90 -80 120 {lab=VBN}
N -80 180 -80 210 {lab=GND}
N -80 270 -80 300 {lab=VBP}
N -80 360 -80 390 {lab=GND}
N -80 480 -80 510 {lab=Vref_neg}
N -80 570 -80 600 {lab=GND}
N -330 480 -330 510 {lab=Vref_pos}
N -330 570 -330 600 {lab=GND}
N 340 590 450 590 {lab=Vin}
N 810 590 920 590 {lab=sc_left}
N 810 590 810 700 {lab=sc_left}
N 610 590 810 590 {lab=sc_left}
N 1170 590 1400 590 {lab=sc_right}
N 1170 590 1170 700 {lab=sc_right}
N 980 590 1170 590 {lab=sc_right}
N 420 550 450 550 {lab=vdd}
N 420 640 450 640 {lab=GND}
N 530 480 530 510 {lab=phi1n}
N 530 670 530 700 {lab=phi1}
N 680 780 730 780 {lab=phi2}
N 890 780 950 780 {lab=phi2n}
N 760 860 760 890 {lab=GND}
N 810 860 810 1110 {lab=Vfb}
N 850 860 850 890 {lab=vdd}
N 1060 780 1090 780 {lab=phi1}
N 1250 780 1290 780 {lab=phi1n}
N 1120 860 1120 890 {lab=GND}
N 1170 860 1170 930 {lab=Vcm}
N 1210 860 1210 890 {lab=vdd}
N 1370 540 1400 540 {lab=GND}
N 1370 630 1400 630 {lab=vdd}
N 1480 470 1480 510 {lab=phi2}
N 1480 670 1480 700 {lab=phi2n}
N 1650 490 1650 530 {lab=GND}
N 1940 650 1940 700 {lab=VBP}
N 1860 650 1860 700 {lab=GND}
N 1860 440 1860 490 {lab=vdd}
N 1930 440 1930 490 {lab=VBN}
N 2050 350 2050 570 {lab=sc_int_out}
N 2000 570 2050 570 {lab=sc_int_out}
N 2050 630 2050 670 {lab=GND}
N 1710 350 1860 350 {lab=vn}
N 1920 350 2050 350 {lab=sc_int_out}
N 1560 590 1680 590 {lab=vn}
N 1680 540 1680 590 {lab=vn}
N 1710 540 1780 540 {lab=vn}
N 1710 590 1780 590 {lab=Vcm}
N 1710 590 1710 930 {lab=Vcm}
N 1170 930 1710 930 {lab=Vcm}
N 1710 350 1710 540 {lab=vn}
N 1680 540 1710 540 {lab=vn}
N 2050 570 2240 570 {lab=sc_int_out}
N 810 1110 1210 1110 {lab=Vfb}
N 1370 1110 2780 1110 {lab=vout}
N 1290 1020 1290 1050 {lab=vdd}
N 1290 1170 1290 1210 {lab=GND}
N 1260 1020 1260 1050 {lab=Vref_pos}
N 1260 1170 1260 1220 {lab=Vref_neg}
N 2200 530 2240 530 {lab=Vcm}
N 2300 460 2300 490 {lab=vdd}
N 2300 610 2300 650 {lab=GND}
N 2780 550 2810 550 {lab=vout}
N 2780 550 2780 1110 {lab=vout}
N 2430 550 2560 550 {lab=#net1}
N 2640 550 2680 550 {lab=#net2}
N 2590 470 2590 520 {lab=vdd}
N 2590 470 2710 470 {lab=vdd}
N 2710 470 2710 520 {lab=vdd}
N 2590 580 2590 620 {lab=GND}
N 2590 620 2710 620 {lab=GND}
N 2710 580 2710 620 {lab=GND}
N 2760 550 2780 550 {lab=vout}
C {vsource.sym} 190 -70 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 40n 97.65625n)"}
C {gnd.sym} 190 -10 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 190 -130 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} -80 -250 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 40n 97.65625n)"}
C {gnd.sym} -80 -190 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -80 -310 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} -80 -70 0 0 {name=V7 value="PULSE(0 1.2 55n 1n 1n 40n 97.65625n)"}
C {gnd.sym} -80 -10 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -80 -130 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} 190 -250 0 0 {name=V8 value="PULSE(1.2 0 55n 1n 1n 40n 97.65625n)"}
C {gnd.sym} 190 -190 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 190 -310 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {vsource.sym} -330 150 0 0 {name=V1 value=0.6}
C {vsource.sym} -330 330 0 0 {name=V2 value="SIN(0.6 0.1 20k)"}
C {gnd.sym} -330 390 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -330 270 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} -330 210 0 0 {name=l2 lab=GND}
C {vsource.sym} -330 -240 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -330 -300 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -330 -180 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -330 90 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {vsource.sym} -80 150 0 0 {name=V9 value=0.3}
C {gnd.sym} -80 210 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -80 90 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} -80 330 0 0 {name=V10 value=0.2}
C {gnd.sym} -80 390 0 0 {name=l16 lab=GND}
C {lab_pin.sym} -80 270 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} -80 540 0 0 {name=V12 value=0.5}
C {gnd.sym} -80 600 0 0 {name=l20 lab=GND}
C {lab_pin.sym} -80 480 0 0 {name=p35 sig_type=std_logic lab=Vref_neg}
C {vsource.sym} -330 540 0 0 {name=V11 value=0.7}
C {gnd.sym} -330 600 0 0 {name=l19 lab=GND}
C {lab_pin.sym} -330 480 0 0 {name=p34 sig_type=std_logic lab=Vref_pos}
C {T_gate.sym} 530 590 0 0 {name=x1}
C {T_gate.sym} 810 780 1 1 {name=x2}
C {T_gate.sym} 1170 780 1 1 {name=x3}
C {sg13g2_pr/cap_cmim.sym} 950 590 3 0 {name=C1
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=50
spiceprefix=X}
C {T_gate.sym} 1480 590 2 1 {name=x4}
C {lab_pin.sym} 340 590 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 420 550 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {gnd.sym} 420 640 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 850 890 0 1 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 1210 890 0 1 {name=p10 sig_type=std_logic lab=vdd}
C {gnd.sym} 1120 890 0 0 {name=l9 lab=GND}
C {gnd.sym} 760 890 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 810 890 0 1 {name=p11 sig_type=std_logic lab=Vfb}
C {lab_pin.sym} 1170 930 0 0 {name=p13 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1370 630 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {gnd.sym} 1370 540 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 2130 570 0 1 {name=p16 sig_type=std_logic lab=sc_int_out}
C {simulator_commands_shown.sym} 1090 -150 0 0 {
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
C {lab_pin.sym} 530 700 0 0 {name=p6 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 530 480 0 0 {name=p19 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 950 780 0 1 {name=p15 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 680 780 0 0 {name=p20 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 1060 780 0 0 {name=p21 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1290 780 0 1 {name=p22 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1480 470 0 0 {name=p23 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 1480 700 0 1 {name=p24 sig_type=std_logic lab=phi2n}
C {sg13g2_pr/cap_cmim.sym} 1650 560 2 0 {name=C4
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=100
spiceprefix=X}
C {gnd.sym} 1650 490 2 0 {name=l15 lab=GND}
C {devices/launcher.sym} 330 210 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 870 590 1 0 {name=p25 sig_type=std_logic lab=sc_left}
C {Pseudo_compensated_self_cascode_OTA.sym} 1580 750 0 0 {name=x5}
C {lab_pin.sym} 1860 440 0 0 {name=p26 sig_type=std_logic lab=vdd}
C {gnd.sym} 1860 700 0 0 {name=l8 lab=GND}
C {lab_pin.sym} 1940 700 0 0 {name=p27 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1930 440 0 0 {name=p30 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 1650 590 3 0 {name=p32 sig_type=std_logic lab=vn}
C {capa-2.sym} 2050 600 0 0 {name=C3
m=1
value=2p
footprint=1206
device=polarized_capacitor}
C {gnd.sym} 2050 670 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1040 590 1 0 {name=p31 sig_type=std_logic lab=sc_right}
C {1_bit_DAC.sym} 1030 1350 0 0 {name=x6}
C {lab_pin.sym} 1290 1020 0 1 {name=p33 sig_type=std_logic lab=vdd}
C {gnd.sym} 1290 1210 0 0 {name=l18 lab=GND}
C {lab_pin.sym} 1260 1020 0 0 {name=p36 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} 1260 1220 0 0 {name=p37 sig_type=std_logic lab=Vref_neg}
C {sg13g2_pr/cap_cmim.sym} 1890 350 3 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=25
spiceprefix=X}
C {comparator.sym} 2100 730 0 0 {name=x7}
C {lab_pin.sym} 2200 530 0 0 {name=p12 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 2300 460 0 0 {name=p39 sig_type=std_logic lab=vdd}
C {gnd.sym} 2300 650 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 2800 550 0 1 {name=p40 sig_type=std_logic lab=vout}
C {lab_pin.sym} 2590 470 0 0 {name=p38 sig_type=std_logic lab=vdd}
C {gnd.sym} 2630 620 0 0 {name=l22 lab=GND}
C {inv_4.sym} 2610 690 0 0 {name=x10}
C {inv_4.sym} 2730 690 0 0 {name=x8}
C {devices/code_shown.sym} 1480 -390 0 0 {name=NGSPICE1
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
write first_order_modulator_tb.raw
wrdata output.txt v(vout)
.endc
" }
