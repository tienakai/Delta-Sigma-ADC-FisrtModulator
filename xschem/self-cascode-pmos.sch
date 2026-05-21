v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 840 -730 840 -710 {
lab=GND}
N 840 -820 840 -790 {
lab=G}
N 1070 -810 1070 -750 {
lab=GND}
N 1070 -900 1070 -870 {
lab=D}
N 1030 -930 1070 -930 {
lab=D}
N 900 -870 930 -870 {lab=G}
N 900 -820 900 -760 {lab=G}
N 900 -760 930 -760 {lab=G}
N 970 -840 970 -790 {lab=#net1}
N 970 -930 970 -900 {lab=#net2}
N 840 -820 900 -820 {lab=G}
N 900 -870 900 -820 {lab=G}
N 970 -760 1030 -760 {lab=#net3}
N 970 -730 970 -680 {lab=GND}
N 1030 -570 1030 -560 {lab=GND}
N 1030 -760 1030 -630 {lab=#net3}
N 970 -870 1020 -870 {lab=D}
N 1020 -900 1020 -870 {lab=D}
N 1020 -900 1070 -900 {lab=D}
N 1070 -930 1070 -900 {
lab=D}
C {devices/gnd.sym} 840 -710 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 840 -760 0 0 {name=Vgs value=0.4}
C {devices/vsource.sym} 1070 -840 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 1070 -750 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 1000 -930 1 0 {name=Vd}
C {lab_pin.sym} 840 -820 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 1070 -930 0 1 {name=p2 sig_type=std_logic lab=D}
C {devices/gnd.sym} 970 -680 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 1030 -600 0 0 {name=Vb value=0.4}
C {devices/gnd.sym} 1030 -560 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 850 -480 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 760 -380 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} 70 -1110 0 0 {name=NGSPICE only_toplevel=true 
value=".param l1=0.2u
.param l2='1u - l1'
.param wx = 5u
.control
save @n.xm1.nsg13_lv_pmos[gm]
save @n.xm1.nsg13_lv_pmos[gds]
save @n.xm1.nsg13_lv_pmos[l]
save @n.xm2.nsg13_lv_pmos[gm]
save @n.xm2.nsg13_lv_pmos[gds]
save @n.xm2.nsg13_lv_pmos[gmb]
save @n.xm2.nsg13_lv_pmos[vbs]
compose l1_vec start=0.13u stop=0.87u step=0.05u

let gm_vec  = vector(length(l1_vec))
let rout_vec  = vector(length(l1_vec))

let idx = 0

foreach val $&l1_vec
    alterparam l1 = $val
    alterparam l2 = 1u - $val

    reset
    op

    let gm_val1  = @n.xm1.nsg13_lv_pmos[gm]
    let gds_val1 = @n.xm1.nsg13_lv_pmos[gds]
    let gm_val2 = @n.xm2.nsg13_lv_pmos[gm]
    let gds_val2 = @n.xm2.nsg13_lv_pmos[gds]
    let gmb_val2 = @n.xm2.nsg13_lv_pmos[gmb]    

    let r1 = 1 / gds_val1
    let r2 = 1 / gds_val2
    
    * Lưu vào vector
    
    let gm_vec[idx]   = gm_val1
    let rout_vec[idx] = (gm_val2 + gmb_val2) * r1 * r2
    let idx = idx + 1
end

plot gm_vec vs l1_vec xlabel 'L1 (m)' ylabel 'gm (S)' 
plot rout_vec vs l1_vec xlabel 'L1 (m)' ylabel 'Rout (Ohm)' 

.endc
"}
C {sg13g2_pr/sg13_lv_pmos.sym} 950 -870 0 0 {name=M1
l=\{l1\}
w=\{wx\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 950 -760 0 0 {name=M2
l=\{l2\}
w=\{wx\}
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
