v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 530 -720 530 -660 {lab=V_DD}
N 530 -540 530 -480 {lab=V_SS}
N 790 -540 790 -510 {lab=V_SS}
N -20 -490 -20 -460 {lab=V_in}
N -20 -400 -20 -370 {lab=GND}
N 160 -490 160 -460 {lab=V_DD}
N 160 -400 160 -370 {lab=GND}
N 250 -490 250 -460 {lab=V_SS}
N 250 -400 250 -370 {lab=GND}
N 960 -600 960 -520 {lab=v_out}
N 960 -460 960 -420 {lab=V_SS}
N 710 -600 960 -600 {lab=v_out}
N 260 -620 470 -620 {lab=V_in}
N 710 -600 710 -410 {lab=v_out}
N 670 -600 710 -600 {lab=v_out}
N 430 -410 710 -410 {lab=v_out}
N 430 -580 430 -410 {lab=v_out}
N 430 -580 470 -580 {lab=v_out}
C {devices/code_shown.sym} -660 -40 0 0 {name=MODEL only_toplevel=true
format="tcleval( @value )"
value=".lib cornerMOSlv.lib mos_tt
"}
C {devices/code_shown.sym} -660 -690 0 0 {name=NGSPICE only_toplevel=true 
value="
.temp 27
.control
option sparse
save all
op
write comparator_tb_ac.raw
set appendwrite

ac dec 101 1k 100MEG
write comparator_tb_ac.raw
plot 20*log10(v_out)

meas ac dcgain MAX vmag(v_out) FROM=10 TO=10k
let f3db = dcgain/sqrt(2)
meas ac fbw WHEN vmag(v_out)=f3db FALL=1
let gainerror=(dcgain-1)/1
print dcgain
print fbw
print gainerror

noise v(v_out) Vin dec 101 1k 100MEG
print onoise_total

.endc
"}
C {devices/launcher.sym} -60 -20 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {lab_pin.sym} 260 -620 0 0 {name=p1 sig_type=std_logic lab=V_in}
C {lab_pin.sym} 860 -600 0 1 {name=p2 sig_type=std_logic lab=v_out}
C {lab_pin.sym} 530 -720 0 0 {name=p3 sig_type=std_logic lab=V_DD}
C {lab_pin.sym} 530 -480 0 0 {name=p5 sig_type=std_logic lab=V_SS}
C {capa-2.sym} 790 -570 0 0 {name=C1
m=1
value=0.05p
footprint=1206
device=polarized_capacitor}
C {vsource.sym} -20 -430 0 0 {name=Vin value="dc 0.7 ac 1" savecurrent=false}
C {lab_pin.sym} -20 -490 0 0 {name=p7 sig_type=std_logic lab=V_in}
C {gnd.sym} -20 -370 0 0 {name=l1 lab=GND}
C {vsource.sym} 160 -430 0 0 {name=VDD value=1.2 savecurrent=false}
C {lab_pin.sym} 160 -490 0 0 {name=p8 sig_type=std_logic lab=V_DD}
C {gnd.sym} 160 -370 0 0 {name=l2 lab=GND}
C {vsource.sym} 250 -430 0 0 {name=V_SS value=0 savecurrent=false}
C {lab_pin.sym} 250 -490 0 0 {name=p9 sig_type=std_logic lab=V_SS}
C {gnd.sym} 250 -370 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 790 -510 0 0 {name=p12 sig_type=std_logic lab=V_SS}
C {isource.sym} 960 -490 2 0 {name=I1 value="dc 0 ac 0"}
C {lab_pin.sym} 960 -420 0 0 {name=p13 sig_type=std_logic lab=V_SS}
C {devices/launcher.sym} 260 -20 0 0 {name=h3
descr="annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/code_shown.sym} -660 -140 0 0 {name=SAVE only_toplevel=true
format="tcleval( @value )"
value=".include [file rootname [xschem get schname]].save
"}
C {devices/spice_probe.sym} 740 -600 0 0 {name=p14 attrs=""}
C {devices/spice_probe.sym} 380 -620 0 0 {name=p15 attrs=""}
C {comparator.sym} 330 -420 0 0 {name=x1}
