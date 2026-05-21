v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {OSR = 64 -> fs = 2.56Mhz} -460 -730 0 0 0.4 0.4 {}
N -760 -550 -760 -520 {lab=phi1}
N -760 -460 -760 -430 {lab=GND}
N -1030 -730 -1030 -700 {lab=phi1n}
N -1030 -640 -1030 -610 {lab=GND}
N -1030 -550 -1030 -520 {lab=phi2}
N -1030 -460 -1030 -430 {lab=GND}
N -760 -730 -760 -700 {lab=phi2n}
N -760 -640 -760 -610 {lab=GND}
N -1030 -330 -1030 -300 {lab=Vcm}
N -1030 -240 -1030 -210 {lab=GND}
N -1030 -150 -1030 -120 {lab=Vin}
N -1030 -60 -1030 -30 {lab=GND}
N -590 -410 -590 -380 {lab=vdd}
N -590 -320 -590 -290 {lab=GND}
N -760 -330 -760 -300 {lab=VBN}
N -760 -240 -760 -210 {lab=GND}
N -760 -150 -760 -120 {lab=VBP}
N -760 -60 -760 -30 {lab=GND}
N -760 60 -760 90 {lab=Vref_neg}
N -760 150 -760 180 {lab=GND}
N -1030 60 -1030 90 {lab=Vref_pos}
N -1030 150 -1030 180 {lab=GND}
N -420 -50 -310 -50 {lab=Vin}
N -420 -30 -310 -30 {lab=VBN}
N -420 -10 -310 -10 {lab=VBP}
N -420 10 -310 10 {lab=Vcm}
N -420 30 -310 30 {lab=Vref_pos}
N -420 50 -310 50 {lab=Vref_neg}
N -240 -160 -240 -120 {lab=phi1}
N -270 -160 -240 -160 {lab=phi1}
N -220 -180 -220 -120 {lab=phi1n}
N -270 -180 -220 -180 {lab=phi1n}
N -200 -200 -200 -120 {lab=phi2}
N -270 -200 -200 -200 {lab=phi2}
N -180 -220 -180 -120 {lab=phi2n}
N -270 -220 -180 -220 {lab=phi2n}
N -120 -160 -120 -120 {lab=vdd}
N -120 120 -120 160 {lab=GND}
N -10 0 40 0 {lab=#net1}
N 110 -110 110 -70 {lab=phi1}
N 80 -110 110 -110 {lab=phi1}
N 130 -130 130 -70 {lab=phi1n}
N 80 -130 130 -130 {lab=phi1n}
N 150 -150 150 -70 {lab=phi2}
N 80 -150 150 -150 {lab=phi2}
N 170 -170 170 -70 {lab=phi2n}
N 80 -170 170 -170 {lab=phi2n}
N 230 -110 230 -70 {lab=vdd}
C {vsource.sym} -760 -490 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 160n 390.625n)"}
C {gnd.sym} -760 -430 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -760 -550 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} -1030 -670 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 160n 390.625n)"}
C {gnd.sym} -1030 -610 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -1030 -730 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} -1030 -490 0 0 {name=V7 value="PULSE(0 1.2 220n 1n 1n 160n 390.625n)"}
C {gnd.sym} -1030 -430 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -1030 -550 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} -760 -670 0 0 {name=V8 value="PULSE(1.2 0 220n 1n 1n 160n 390.625n)"}
C {gnd.sym} -760 -610 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -760 -730 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {vsource.sym} -1030 -270 0 0 {name=V1 value=0.6}
C {vsource.sym} -1030 -90 0 0 {name=V2 value="SIN(0.6 0.1 20k)"}
C {gnd.sym} -1030 -30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1030 -150 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} -1030 -210 0 0 {name=l2 lab=GND}
C {vsource.sym} -590 -350 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -590 -410 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -590 -290 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -1030 -330 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {vsource.sym} -760 -270 0 0 {name=V9 value=0.3}
C {gnd.sym} -760 -210 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -760 -330 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} -760 -90 0 0 {name=V10 value=0.2}
C {gnd.sym} -760 -30 0 0 {name=l16 lab=GND}
C {lab_pin.sym} -760 -150 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} -760 120 0 0 {name=V12 value=0.5}
C {gnd.sym} -760 180 0 0 {name=l20 lab=GND}
C {lab_pin.sym} -760 60 0 0 {name=p35 sig_type=std_logic lab=Vref_neg}
C {vsource.sym} -1030 120 0 0 {name=V11 value=0.7}
C {gnd.sym} -1030 180 0 0 {name=l19 lab=GND}
C {lab_pin.sym} -1030 60 0 0 {name=p34 sig_type=std_logic lab=Vref_pos}
C {devices/code_shown.sym} -50 -750 0 0 {name=NGSPICE
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
C {simulator_commands_shown.sym} -410 -590 0 0 {
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
C {devices/launcher.sym} -290 -400 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {first_order_modulator.sym} -160 0 0 0 {name=x1}
C {lab_pin.sym} -420 -50 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -420 -30 0 0 {name=p5 sig_type=std_logic lab=VBN}
C {lab_pin.sym} -420 -10 0 0 {name=p6 sig_type=std_logic lab=VBP}
C {lab_pin.sym} -420 10 0 0 {name=p9 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} -420 30 0 0 {name=p10 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} -420 50 0 0 {name=p11 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} -270 -160 0 0 {name=p12 sig_type=std_logic lab=phi1}
C {lab_pin.sym} -270 -200 0 0 {name=p13 sig_type=std_logic lab=phi2}
C {lab_pin.sym} -270 -220 0 0 {name=p14 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} -270 -180 0 0 {name=p15 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} -120 -160 0 1 {name=p16 sig_type=std_logic lab=vdd}
C {gnd.sym} -120 160 0 0 {name=l4 lab=GND}
C {first_order_modulator.sym} 190 50 0 0 {name=x2}
C {lab_pin.sym} 40 20 0 0 {name=p20 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 40 40 0 0 {name=p21 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 40 60 0 0 {name=p22 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 40 80 0 0 {name=p23 sig_type=std_logic lab=Vref_pos}
C {lab_pin.sym} 40 100 0 0 {name=p24 sig_type=std_logic lab=Vref_neg}
C {lab_pin.sym} 80 -110 0 0 {name=p25 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 80 -150 0 0 {name=p26 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 80 -170 0 0 {name=p27 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 80 -130 0 0 {name=p30 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 230 -110 0 1 {name=p31 sig_type=std_logic lab=vdd}
C {gnd.sym} 230 170 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 340 50 0 1 {name=p32 sig_type=std_logic lab=vout}
