v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {OSR = 128 -> fs = 5.12Mhz} 670 -980 0 0 0.4 0.4 {}
N 370 -800 370 -770 {lab=phi1}
N 370 -710 370 -680 {lab=GND}
N 100 -980 100 -950 {lab=phi1n}
N 100 -890 100 -860 {lab=GND}
N 100 -800 100 -770 {lab=phi2}
N 100 -710 100 -680 {lab=GND}
N 370 -980 370 -950 {lab=phi2n}
N 370 -890 370 -860 {lab=GND}
N 100 -580 100 -550 {lab=Vcm}
N 100 -490 100 -460 {lab=GND}
N 100 -400 100 -370 {lab=Vin}
N 100 -310 100 -280 {lab=GND}
N 540 -660 540 -630 {lab=vdd}
N 540 -570 540 -540 {lab=GND}
N 370 -580 370 -550 {lab=VBN}
N 370 -490 370 -460 {lab=GND}
N 370 -400 370 -370 {lab=VBP}
N 370 -310 370 -280 {lab=GND}
N 370 -190 370 -160 {lab=Vref_neg}
N 370 -100 370 -70 {lab=GND}
N 100 -190 100 -160 {lab=Vref_pos}
N 100 -100 100 -70 {lab=GND}
N 710 -300 820 -300 {lab=Vin}
N 710 -280 820 -280 {lab=VBN}
N 710 -260 820 -260 {lab=VBP}
N 710 -240 820 -240 {lab=Vcm}
N 710 -220 820 -220 {lab=Vref_pos}
N 710 -200 820 -200 {lab=Vref_neg}
N 890 -410 890 -370 {lab=phi1}
N 860 -410 890 -410 {lab=phi1}
N 910 -430 910 -370 {lab=phi1n}
N 860 -430 910 -430 {lab=phi1n}
N 930 -450 930 -370 {lab=phi2}
N 860 -450 930 -450 {lab=phi2}
N 950 -470 950 -370 {lab=phi2n}
N 860 -470 950 -470 {lab=phi2n}
N 1010 -410 1010 -370 {lab=vdd}
N 1010 -130 1010 -90 {lab=GND}
N 1120 -250 1170 -250 {lab=vout}
C {vsource.sym} 370 -740 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 80n 195.3125n)"}
C {gnd.sym} 370 -680 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 370 -800 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} 100 -920 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 80n 195.3125n)"}
C {gnd.sym} 100 -860 0 0 {name=l14 lab=GND}
C {lab_pin.sym} 100 -980 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} 100 -740 0 0 {name=V7 value="PULSE(0 1.2 110n 1n 1n 80n 195.3125n)"}
C {gnd.sym} 100 -680 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 100 -800 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} 370 -920 0 0 {name=V8 value="PULSE(1.2 0 110n 1n 1n 80n 195.3125n)"}
C {gnd.sym} 370 -860 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 370 -980 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {vsource.sym} 100 -520 0 0 {name=V1 value=0.6}
C {vsource.sym} 100 -340 0 0 {name=V2 value="SIN(0.6 0.1 20k)"}
C {gnd.sym} 100 -280 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 100 -400 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} 100 -460 0 0 {name=l2 lab=GND}
C {vsource.sym} 540 -600 0 0 {name=V3 value=1.2}
C {lab_pin.sym} 540 -660 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 540 -540 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 100 -580 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {vsource.sym} 370 -520 0 0 {name=V9 value=0.3}
C {gnd.sym} 370 -460 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 370 -580 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} 370 -340 0 0 {name=V10 value=0.2}
C {gnd.sym} 370 -280 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 370 -400 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} 370 -130 0 0 {name=V12 value=0.5}
C {gnd.sym} 370 -70 0 0 {name=l20 lab=GND}
C {lab_pin.sym} 370 -190 0 0 {name=p35 sig_type=std_logic lab=Vref_neg}
C {vsource.sym} 100 -130 0 0 {name=V11 value=0.7}
C {gnd.sym} 100 -70 0 0 {name=l19 lab=GND}
C {lab_pin.sym} 100 -190 0 0 {name=p34 sig_type=std_logic lab=Vref_pos}
C {simulator_commands_shown.sym} 720 -860 0 0 {
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
C {devices/launcher.sym} 830 -640 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {first_order_modulator.sym} 970 -250 0 0 {name=x1}
C {lab_pin.sym} 710 -300 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 710 -280 0 0 {name=p5 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 710 -260 0 0 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 710 -240 0 0 {name=p9 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 710 -220 0 0 {name=p10 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} 710 -200 0 0 {name=p11 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} 860 -410 0 0 {name=p12 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 860 -450 0 0 {name=p13 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 860 -470 0 0 {name=p14 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 860 -430 0 0 {name=p15 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1010 -410 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {gnd.sym} 1010 -90 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1170 -250 0 1 {name=p19 sig_type=std_logic lab=vout}
C {devices/code_shown.sym} 1150 -970 0 0 {name=NGSPICE1
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
write first_order_modulator_tb3.raw
wrdata output3.txt v(vout)
.endc
" }
