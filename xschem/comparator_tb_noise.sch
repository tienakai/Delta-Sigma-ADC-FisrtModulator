v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 1120 -680 1120 -620 {lab=V_DD}
N 1120 -500 1120 -440 {lab=V_SS}
N 1260 -560 1550 -560 {lab=v_out}
N 1120 -320 1120 -290 {lab=V_DD}
N 1120 -230 1120 -200 {lab=GND}
N 1210 -320 1210 -290 {lab=V_SS}
N 1210 -230 1210 -200 {lab=GND}
N 830 -520 830 -480 {lab=V_cm}
N 830 -420 830 -380 {lab=V_SS}
N 760 -580 1060 -580 {lab=#net1}
N 760 -520 830 -520 {lab=V_cm}
N 830 -530 830 -520 {lab=V_cm}
N 830 -530 1060 -530 {lab=V_cm}
N 1060 -540 1060 -530 {lab=V_cm}
N 1300 -500 1300 -470 {lab=V_SS}
C {devices/code_shown.sym} 40 -600 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
set filetype=ascii
save all

*op
*write comparator_tb_noise.raw
*set appendwrite

ac dec 101 1k 1G
*write OTA_tb_noise.raw
plot 20*log10(v_out)

noise v(v_out) Vin lin 1000 1MEG 1000MEG 1
print inoise_total
print onoise_total

setplot noise1
plot inoise_spectrum linplot
plot onoise_spectrum linplot

setplot noise2
write comparator_tb_noise.raw

.endc
"}
C {devices/code_shown.sym} 50 -70 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/launcher.sym} 470 -70 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 1550 -560 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 1120 -680 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 1120 -440 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {vsource.sym} 760 -550 2 0 {name=Vin value="dc 0 ac 1" savecurrent=false}
C {vsource.sym} 1120 -260 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 1120 -320 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 1120 -200 0 0 {name=l2 lab=GND}
C {vsource.sym} 1210 -260 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 1210 -320 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 1210 -200 0 0 {name=l3 lab=GND}
C {vsource.sym} 830 -450 0 0 {name=Vin3 value=0.6 savecurrent=false}
C {lab_pin.sym} 830 -510 0 0 {name=p14 sig_type=std_logic lab=V_cm}
C {lab_pin.sym} 830 -380 0 0 {name=p1 sig_type=std_logic lab=V_SS}
C {devices/code_shown.sym} 20 10 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value=".include [file rootname [xschem get schname]].save
"}
C {devices/launcher.sym} 700 -70 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {comparator.sym} 920 -380 0 0 {name=x1}
C {capa-2.sym} 1300 -530 0 0 {name=C1
m=1
value=0.05p
footprint=1206
device=polarized_capacitor}
C {lab_pin.sym} 1300 -470 0 0 {name=p12 sig_type=std_logic lab=V_SS}
