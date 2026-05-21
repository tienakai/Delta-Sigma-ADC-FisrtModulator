v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -740 -230 -740 -200 {lab=Vcm}
N -740 -140 -740 -110 {lab=GND}
N -740 -50 -740 -20 {lab=Vin}
N -740 40 -740 70 {lab=GND}
N -740 -580 -740 -550 {lab=vdd}
N -740 -490 -740 -460 {lab=GND}
N -460 -220 -460 -190 {lab=VBN}
N -460 -130 -460 -100 {lab=GND}
N -460 -40 -460 -10 {lab=VBP}
N -460 50 -460 80 {lab=GND}
N -710 -400 -710 -370 {lab=Vfb}
N -710 -310 -710 -280 {lab=GND}
N -200 -460 -200 -430 {lab=phi1}
N -200 -370 -200 -340 {lab=GND}
N -470 -640 -470 -610 {lab=phi1n}
N -470 -550 -470 -520 {lab=GND}
N -470 -460 -470 -430 {lab=phi2}
N -470 -370 -470 -340 {lab=GND}
N -200 -640 -200 -610 {lab=phi2n}
N -200 -550 -200 -520 {lab=GND}
N 730 310 840 310 {lab=sc_int_out}
N 650 170 650 200 {lab=vdd}
N 380 260 430 260 {lab=Vin}
N 380 300 430 300 {lab=VBN}
N 380 320 430 320 {lab=VBP}
N 380 380 430 380 {lab=Vfb}
N 580 420 580 450 {lab=GND}
N 540 170 540 200 {lab=phi1}
N 380 340 430 340 {lab=Vcm}
N 540 140 560 140 {lab=phi1n}
N 560 140 560 200 {lab=phi1n}
N 540 110 580 110 {lab=phi2}
N 580 110 580 200 {lab=phi2}
N 540 80 600 80 {lab=phi2n}
N 600 80 600 200 {lab=phi2n}
C {vsource.sym} -740 -170 0 0 {name=V1 value=0.6}
C {vsource.sym} -740 10 0 0 {name=V2 value="SIN(0 0.1 20k)"}
C {gnd.sym} -740 70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -740 -50 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {gnd.sym} -740 -110 0 0 {name=l2 lab=GND}
C {vsource.sym} -740 -520 0 0 {name=V3 value=1.2}
C {lab_pin.sym} -740 -580 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} -740 -460 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -740 -230 0 0 {name=p1 sig_type=std_logic lab=Vcm}
C {devices/code_shown.sym} 570 -140 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 10n 200u
write Sc_intergrator_tb.raw
.endc
" }
C {lab_pin.sym} 840 310 0 1 {name=p16 sig_type=std_logic lab=sc_int_out}
C {simulator_commands_shown.sym} 840 -140 0 0 {
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
C {devices/launcher.sym} 60 -100 0 0 {name=h3
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {vsource.sym} -460 -160 0 0 {name=V9 value=0.4}
C {gnd.sym} -460 -100 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -460 -220 0 0 {name=p28 sig_type=std_logic lab=VBN}
C {vsource.sym} -460 20 0 0 {name=V10 value=0.2}
C {gnd.sym} -460 80 0 0 {name=l16 lab=GND}
C {lab_pin.sym} -460 -40 0 0 {name=p29 sig_type=std_logic lab=VBP}
C {vsource.sym} -710 -340 0 0 {name=V4 value=0}
C {gnd.sym} -710 -280 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -710 -400 0 0 {name=p12 sig_type=std_logic lab=Vfb}
C {vsource.sym} -200 -400 0 0 {name=V5 value="PULSE(0 1.2 0 1n 1n 40n 97.65625n)"}
C {gnd.sym} -200 -340 0 0 {name=l13 lab=GND}
C {lab_pin.sym} -200 -460 0 0 {name=p17 sig_type=std_logic lab=phi1}
C {vsource.sym} -470 -580 0 0 {name=V6 value="PULSE(1.2 0 0 1n 1n 40n 97.65625n)"}
C {gnd.sym} -470 -520 0 0 {name=l14 lab=GND}
C {lab_pin.sym} -470 -640 0 0 {name=p18 sig_type=std_logic lab=phi1n}
C {vsource.sym} -470 -400 0 0 {name=V7 value="PULSE(0 1.2 55n 1n 1n 40n 97.65625n)"}
C {gnd.sym} -470 -340 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -470 -460 0 0 {name=p7 sig_type=std_logic lab=phi2}
C {vsource.sym} -200 -580 0 0 {name=V8 value="PULSE(1.2 0 55n 1n 1n 40n 97.65625n)"}
C {gnd.sym} -200 -520 0 0 {name=l7 lab=GND}
C {lab_pin.sym} -200 -640 0 0 {name=p8 sig_type=std_logic lab=phi2n}
C {SC_integrator.sym} 580 310 0 0 {name=x1}
C {lab_pin.sym} 380 320 0 0 {name=p4 sig_type=std_logic lab=VBP}
C {gnd.sym} 580 450 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 380 260 0 0 {name=p5 sig_type=std_logic lab=Vin}
C {lab_pin.sym} 380 300 0 0 {name=p6 sig_type=std_logic lab=VBN}
C {lab_pin.sym} -740 -230 0 0 {name=p9 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 380 340 0 0 {name=p10 sig_type=std_logic lab=Vcm}
C {lab_pin.sym} 380 380 0 0 {name=p11 sig_type=std_logic lab=Vfb}
C {lab_pin.sym} 540 170 0 0 {name=p13 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 540 140 0 0 {name=p14 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 540 110 0 0 {name=p15 sig_type=std_logic lab=phi2}
C {lab_pin.sym} 540 80 0 0 {name=p19 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 650 170 0 1 {name=p20 sig_type=std_logic lab=vdd}
