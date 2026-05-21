v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -230 140 -230 {lab=Vin}
N 500 -230 610 -230 {lab=#net1}
N 500 -230 500 -120 {lab=#net1}
N 300 -230 500 -230 {lab=#net1}
N 860 -230 1090 -230 {lab=#net2}
N 860 -230 860 -120 {lab=#net2}
N 670 -230 860 -230 {lab=#net2}
N 1250 -230 1470 -230 {lab=vout}
N -360 -680 -360 -650 {lab=Vcm}
N -360 -590 -360 -560 {lab=GND}
N -360 -500 -360 -470 {lab=Vin}
N -360 -410 -360 -380 {lab=GND}
N -190 -840 -190 -810 {lab=vdd}
N -190 -750 -190 -720 {lab=GND}
N -360 -850 -360 -820 {lab=Vfb}
N -360 -760 -360 -730 {lab=GND}
N 110 -270 140 -270 {lab=vdd}
N 110 -180 140 -180 {lab=GND}
N 220 -340 220 -310 {lab=phi1n}
N 220 -150 220 -120 {lab=phi1}
N 370 -40 420 -40 {lab=phi2}
N 580 -40 640 -40 {lab=phi2n}
N 450 40 450 70 {lab=GND}
N 500 40 500 70 {lab=Vfb}
N 540 40 540 70 {lab=vdd}
N 750 -40 780 -40 {lab=phi1}
N 940 -40 980 -40 {lab=phi1n}
N 810 40 810 70 {lab=GND}
N 860 40 860 70 {lab=Vcm}
N 900 40 900 70 {lab=vdd}
N 1060 -280 1090 -280 {lab=GND}
N 1060 -190 1090 -190 {lab=vdd}
N 1170 -350 1170 -310 {lab=phi2}
N 1170 -150 1170 -120 {lab=phi2n}
N 220 -800 220 -770 {lab=phi1}
N 220 -710 220 -680 {lab=GND}
N -50 -980 -50 -950 {lab=phi1n}
N -50 -890 -50 -860 {lab=GND}
N -50 -800 -50 -770 {lab=phi2}
N -50 -710 -50 -680 {lab=GND}
N 220 -980 220 -950 {lab=phi2n}
N 220 -890 220 -860 {lab=GND}
N 1340 -330 1340 -290 {lab=GND}
C {T_gate.sym} 220 -230 0 0 {name=x1}
C {T_gate.sym} 500 -40 1 1 {name=x2}
C {T_gate.sym} 860 -40 1 1 {name=x3}
C {sg13g2_pr/cap_cmim.sym} 640 -230 3 0 {name=C1
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=70
spiceprefix=X}
C {T_gate.sym} 1170 -230 2 1 {name=x4}
C {vsource.sym} -360 -620 0 0 {name=V1 value=0.6}
C {vsource.sym} -360 -440 0 0 {name=V2 value="SIN(0 0.1 5k)"}
C {gnd.sym} -360 -380 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -360 -500 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} -360 -560 0 0 {name=l2 lab=GND}
C {vsource.sym} -190 -780 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -190 -840 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -190 -720 0 0 {name=l3 lab=GND}
C {vsource.sym} -360 -790 0 0 {name=V4 value=0}
C {gnd.sym} -360 -730 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -360 -850 0 0 {name=p12 sig_type=std_logic lab=Vfb}
C {lab_pin.sym} -360 -680 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {devices/code_shown.sym} 950 -590 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 1u 300u
write T_gate_tb.raw
.endc
" }
C {lab_pin.sym} 30 -230 0 0 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 110 -270 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {gnd.sym} 110 -180 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 540 70 0 1 {name=p9 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 900 70 0 1 {name=p10 sig_type=std_logic lab=vdd}
C {gnd.sym} 810 70 0 0 {name=l9 lab=GND}
C {gnd.sym} 450 70 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 500 70 0 1 {name=p11 sig_type=std_logic lab=Vfb}
C {lab_pin.sym} 860 70 0 1 {name=p13 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 1060 -190 0 0 {name=p14 sig_type=std_logic lab=vdd}
C {gnd.sym} 1060 -280 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1470 -230 0 1 {name=p16 sig_type=std_logic lab=vout}
C {simulator_commands_shown.sym} 1220 -590 0 0 {
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
C {vsource.sym} 220 -740 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 180n 390.625n)"}
C {gnd.sym} 220 -680 0 0 {name=l13 lab=GND}
C {lab_pin.sym} 220 -800 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} -50 -920 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 180n 390.625n)"}
C {gnd.sym} -50 -860 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -50 -980 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 220 -120 0 0 {name=p6 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 220 -340 0 0 {name=p19 sig_type=std_logic lab=phi1n}
C {vsource.sym} -50 -740 0 0 {name=V7 value="PULSE(0 1.2 210n 1n 1n 180n 390.625n)"}
C {gnd.sym} -50 -680 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -50 -800 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} 220 -920 0 0 {name=V8 value="PULSE(1.2 0 210n 1n 1n 180n 390.625n)"}
C {gnd.sym} 220 -860 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 220 -980 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 640 -40 0 1 {name=p15 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 370 -40 0 0 {name=p20 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 750 -40 0 0 {name=p21 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 980 -40 0 1 {name=p22 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1170 -350 0 0 {name=p23 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 1170 -120 0 1 {name=p24 sig_type=std_logic lab=phi2n}
C {sg13g2_pr/cap_cmim.sym} 1340 -260 2 0 {name=C4
model=cap_cmim
w=7.0e-6
l=7.0e-6
m=10
spiceprefix=X}
C {gnd.sym} 1340 -330 2 0 {name=l15 lab=GND}
