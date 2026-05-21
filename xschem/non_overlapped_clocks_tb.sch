v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 880 -410 1000 -410 {lab=#net1}
N 360 -590 420 -590 {lab=clk}
N -150 -400 -150 -370 {lab=clk}
N -150 -310 -150 -280 {lab=GND}
N -380 -400 -380 -370 {lab=vdd}
N -380 -310 -380 -280 {lab=GND}
N 560 0 620 0 {lab=nclk}
N 500 -590 600 -590 {lab=nclk}
N 580 -440 620 -440 {lab=clk}
N 1040 -520 1040 -440 {lab=vdd}
N 710 -520 1040 -520 {lab=vdd}
N 710 -540 710 -520 {lab=vdd}
N 1040 -380 1040 -320 {lab=GND}
N 880 -30 1000 -30 {lab=#net2}
N 580 -60 620 -60 {lab=#net1}
N 1040 -140 1040 -60 {lab=vdd}
N 710 -140 1040 -140 {lab=vdd}
N 710 -160 710 -140 {lab=vdd}
N 1040 0 1040 60 {lab=GND}
N 580 -200 580 -60 {lab=#net1}
N 580 -200 880 -200 {lab=#net1}
N 880 -410 880 -200 {lab=#net1}
N 850 -410 880 -410 {lab=#net1}
N 500 -380 620 -380 {lab=#net2}
N 500 -380 500 180 {lab=#net2}
N 500 180 880 180 {lab=#net2}
N 880 -30 880 180 {lab=#net2}
N 850 -30 880 -30 {lab=#net2}
N 620 -390 620 -380 {lab=#net2}
N 620 -440 620 -430 {lab=clk}
N 620 -60 620 -50 {lab=#net1}
N 710 -140 710 -110 {lab=vdd}
N 710 50 710 80 {lab=GND}
N 710 -520 710 -490 {lab=vdd}
N 710 -330 710 -310 {lab=GND}
N 450 -650 450 -620 {lab=vdd}
N 450 -560 450 -520 {lab=GND}
N 1080 -410 1140 -410 {lab=#net3}
N 1170 -520 1170 -440 {lab=vdd}
N 1170 -520 1350 -520 {lab=vdd}
N 1170 -380 1170 -320 {lab=GND}
N 1170 -320 1350 -320 {lab=GND}
N 1080 -30 1140 -30 {lab=#net4}
N 1170 -140 1170 -60 {lab=vdd}
N 1170 -140 1350 -140 {lab=vdd}
N 1170 0 1170 60 {lab=GND}
N 1170 60 1350 60 {lab=GND}
N 1220 -410 1320 -410 {lab=phi1}
N 1400 -410 1470 -410 {lab=phi1n}
N 1350 -520 1350 -440 {lab=vdd}
N 1350 -380 1350 -320 {lab=GND}
N 1220 -30 1320 -30 {lab=phi2}
N 1350 -140 1350 -60 {lab=vdd}
N 1350 0 1350 60 {lab=GND}
N 1400 -30 1470 -30 {lab=phi2n}
N 1040 -140 1170 -140 {lab=vdd}
N 1040 60 1170 60 {lab=GND}
N 1040 -320 1170 -320 {lab=GND}
N 1040 -520 1170 -520 {lab=vdd}
C {lab_pin.sym} 360 -590 0 0 {name=p2 sig_type=std_logic lab=clk}
C {lab_pin.sym} -150 -400 0 0 {name=p12 sig_type=std_logic lab=clk}
C {vsource.sym} -150 -340 0 0 {name=V2 value="PULSE(0 1.2 0 1u 1u 10u 1u)"}
C {devices/code_shown.sym} -440 -680 0 0 {name=NGSPICE
only_toplevel=true
value="
.control
save all
tran 10n 30u
meas tran t1 TRIG v(phi2) VAL=0.6 FALl=3 TARG v(phi1) VAL=0.6 RISE = 3
meas tran t2 TRIG v(phi2n) VAL=0.6 RISE=3 TARG v(phi1n) VAL=0.6 RISE = 3
write non_overlapped_clocks_tb.raw
.endc
" }
C {simulator_commands_shown.sym} 140 -880 0 0 {
name=Libs_Ngspice
simulator=ngspice
only_toplevel=false
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerMOShv.lib mos_tt
.lib cornerHBT.lib hbt_typ
.lib cornerRES.lib res_typ
.lib cornerCAP.lib cap_typ
.include /opt/pdks/ihp-sg13g2/libs.ref/sg13g2_stdcell/spice/sg13g2_stdcell.spice 
"
      }
C {gnd.sym} -380 -280 0 0 {name=l1 lab=GND}
C {vsource.sym} -380 -340 0 0 {name=V1 value=1.2}
C {lab_pin.sym} -380 -400 0 0 {name=p1 sig_type=std_logic lab=vdd}
C {gnd.sym} -150 -280 0 0 {name=l2 lab=GND}
C {lab_pin.sym} 710 -540 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 560 0 0 0 {name=p6 sig_type=std_logic lab=nclk}
C {lab_pin.sym} 600 -590 0 1 {name=p5 sig_type=std_logic lab=nclk}
C {lab_pin.sym} 580 -440 0 0 {name=p7 sig_type=std_logic lab=clk}
C {gnd.sym} 1040 -320 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 710 -160 0 0 {name=p3 sig_type=std_logic lab=vdd}
C {gnd.sym} 1040 60 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 1270 -410 1 0 {name=p8 sig_type=std_logic lab=phi1}
C {lab_pin.sym} 1470 -410 1 0 {name=p9 sig_type=std_logic lab=phi1n}
C {lab_pin.sym} 1470 -30 1 0 {name=p10 sig_type=std_logic lab=phi2n}
C {lab_pin.sym} 1270 -30 1 0 {name=p11 sig_type=std_logic lab=phi2}
C {nand_gate.sym} 770 -20 0 0 {name=x1}
C {gnd.sym} 710 80 0 0 {name=l3 lab=GND}
C {nand_gate.sym} 770 -400 0 0 {name=x6}
C {gnd.sym} 710 -310 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 450 -650 0 0 {name=p13 sig_type=std_logic lab=vdd}
C {gnd.sym} 450 -520 0 0 {name=l7 lab=GND}
C {dlygate1_1.sym} 940 -250 0 0 {name=x3}
C {dlygate1_1.sym} 940 130 0 0 {name=x4}
C {inv_1.sym} 330 -440 0 0 {name=x2}
C {inv_1.sym} 1050 -260 0 0 {name=x5}
C {inv_1.sym} 1230 -260 0 0 {name=x7}
C {inv_1.sym} 1050 120 0 0 {name=x8}
C {inv_1.sym} 1230 120 0 0 {name=x9}
