v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -700 90 -680 {
lab=GND}
N 90 -790 90 -760 {
lab=G}
N 320 -780 320 -720 {
lab=GND}
N 320 -900 320 -840 {
lab=D}
N 280 -900 320 -900 {
lab=D}
N 150 -840 180 -840 {lab=G}
N 150 -790 150 -730 {lab=G}
N 150 -730 180 -730 {lab=G}
N 220 -810 220 -760 {lab=#net1}
N 220 -900 220 -870 {lab=#net2}
N 220 -680 220 -650 {lab=GND}
N 90 -790 150 -790 {lab=G}
N 150 -840 150 -790 {lab=G}
N 220 -730 240 -730 {lab=GND}
N 240 -730 240 -680 {lab=GND}
N 220 -680 240 -680 {lab=GND}
N 220 -700 220 -680 {lab=GND}
N 220 -840 280 -840 {lab=#net3}
N 280 -840 280 -600 {lab=#net3}
N 280 -540 280 -530 {lab=GND}
C {devices/gnd.sym} 90 -680 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 90 -730 0 0 {name=Vgs value=0.6}
C {devices/vsource.sym} 320 -810 0 0 {name=Vds value=1.2}
C {devices/gnd.sym} 320 -720 0 0 {name=l3 lab=GND}
C {devices/ammeter.sym} 250 -900 1 0 {name=Vd}
C {lab_pin.sym} 90 -790 0 0 {name=p1 sig_type=std_logic lab=G}
C {lab_pin.sym} 320 -900 0 1 {name=p2 sig_type=std_logic lab=D}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 -730 0 0 {name=M1
l=\{l1\}
w=\{wx\}
ng=3
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 200 -840 0 0 {name=M2
l=\{l2\}
w=\{wx\}
ng=3
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {devices/gnd.sym} 220 -650 0 0 {name=l5 lab=GND}
C {devices/vsource.sym} 280 -570 0 0 {name=Vb value=0.4}
C {devices/gnd.sym} 280 -530 0 0 {name=l1 lab=GND}
C {devices/launcher.sym} 90 -450 0 0 {name=h4
descr="Simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {devices/code_shown.sym} 10 -350 0 0 {name=MODEL1 only_toplevel=true
format="tcleval( @value )"
value="
.lib cornerMOSlv.lib mos_tt
.lib cornerRES.lib res_typ
"}
C {devices/code_shown.sym} -680 -1080 0 0 {name=NGSPICE only_toplevel=true 
value=".param l1=0.2u
.param l2='2u - l1'
.param wx = 30u
.control
save @n.xm1.nsg13_lv_nmos[gm]
save @n.xm1.nsg13_lv_nmos[gds]
save @n.xm1.nsg13_lv_nmos[l]
save @n.xm2.nsg13_lv_nmos[gm]
save @n.xm2.nsg13_lv_nmos[gds]
save @n.xm2.nsg13_lv_nmos[gmb]
save @n.xm2.nsg13_lv_nmos[vbs]
compose l1_vec start=0.13u stop=1.87u step=0.05u

let gm_vec  = vector(length(l1_vec))
let rout_vec  = vector(length(l1_vec))

let idx = 0

foreach val $&l1_vec
    alterparam l1 = $val
    alterparam l2 = 1u - $val

    reset
    op

    let gm_val1  = @n.xm1.nsg13_lv_nmos[gm]
    let gds_val1 = @n.xm1.nsg13_lv_nmos[gds]
    let gm_val2 = @n.xm2.nsg13_lv_nmos[gm]
    let gds_val2 = @n.xm2.nsg13_lv_nmos[gds]
    let gmb_val2 = @n.xm2.nsg13_lv_nmos[gmb]    

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
