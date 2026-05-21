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
N 1270 -540 1560 -540 {lab=v_out}
N 1390 -480 1390 -450 {lab=V_SS}
N 1130 -300 1130 -270 {lab=V_DD}
N 1130 -210 1130 -180 {lab=GND}
N 1220 -300 1220 -270 {lab=V_SS}
N 1220 -210 1220 -180 {lab=GND}
N 1130 -130 1130 -100 {lab=V_BN}
N 1130 -40 1130 -10 {lab=GND}
N 1220 -130 1220 -100 {lab=V_BP}
N 1220 -40 1220 -10 {lab=GND}
N 820 -510 820 -470 {lab=V_cm}
N 820 -410 820 -370 {lab=V_SS}
N 750 -570 1050 -570 {lab=#net1}
N 750 -510 820 -510 {lab=V_cm}
N 820 -520 820 -510 {lab=V_cm}
N 820 -520 1050 -520 {lab=V_cm}
C {devices/code_shown.sym} 0 -850 0 0 {name=NGSPICE only_toplevel=true 
value=".temp 27

.control
option sparse
set filetype=ascii
save all

ac dec 101 1k 1G

* Plot gain
plot 20*log10(v(v_out))

* ===== Tìm UGF =====
* UGF là tần số khi gain = 0 dB
meas ac UGF when vdb(v_out)=0

* In kết quả
print UGF

* ===== Noise analysis =====
noise v(v_out) Vin lin 1000 1MEG 1000MEG 1

print inoise_total
print onoise_total

setplot noise1
plot inoise_spectrum linplot
plot onoise_spectrum linplot

setplot noise2
write OTA_tb_noise.raw

.endc
"}
C {devices/launcher.sym} 470 -50 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {Pseudo_compensated_self_cascode_OTA.sym} 850 -360 0 0 {name=x1}
C {lab_pin.sym} 1560 -540 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 1130 -680 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1200 -680 0 1 {name=p4 sig_type=std_logic lab=V_BN}
C {lab_pin.sym} 1130 -400 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {lab_pin.sym} 1210 -400 0 1 {name=p6 sig_type=std_logic lab=V_BP}
C {vsource.sym} 750 -540 2 0 {name=Vin value="dc 0 ac 1" savecurrent=false}
C {vsource.sym} 1130 -240 0 0 {name=VDD value=1.2 savecurrent=false}
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
C {vsource.sym} 820 -440 0 0 {name=Vin3 value=0.6 savecurrent=false}
C {lab_pin.sym} 820 -500 0 0 {name=p14 sig_type=std_logic lab=V_cm}
C {lab_pin.sym} 820 -370 0 0 {name=p1 sig_type=std_logic lab=V_SS}
C {devices/code_shown.sym} 30 30 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value=".include [file rootname [xschem get schname]].save
"}
C {devices/launcher.sym} 720 -50 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {sg13g2_pr/cap_cmim.sym} 1390 -510 0 0 {name=C2
model=cap_cmim
w=5.0e-6
l=5.0e-6
m=53
spiceprefix=X}
C {simulator_commands_shown.sym} 30 -150 0 0 {
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
