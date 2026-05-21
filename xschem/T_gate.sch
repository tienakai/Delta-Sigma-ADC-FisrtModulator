v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {-) In most cases, equal W/L ratios for both p- and n-MOSFETs are used.

-) For transmission gates, the sizing of PMOS could be the same as NMOS because large PMOS increases its 
parasitic capacitance at the drain and the source. Thus, the speed is decreased in turn when (W/L)p=3(W/L)n.

-) If W is increased, the on-resistance decreases and vice versa.
 
-) If L is increased, the drain-source leakage current decreases but the TG gets slower and vice versa.

-) Furthermore, larger switches have more charge in the inversion layer, which leads to increased charge injection when the switches are turned off. 
Larger switches also increase the drain-source overlap capacitance, which leads to increased clock feedthrough.
Accordingly, larger switches are not always the solution. Alternatively, one can use bootstrapped switches [Wulff].

-) If available, minimum-sized thick-oxide MOSFETs decrease leakage currents and charge injection simultaneously [Fath].} -610 -990 0 0 0.5 0.5 {}
N 300 -330 380 -330 {lab=Vin}
N 300 -240 300 -160 {lab=Vin}
N 300 -160 380 -160 {lab=Vin}
N 440 -330 520 -330 {lab=Vout}
N 520 -240 520 -160 {lab=Vout}
N 440 -160 520 -160 {lab=Vout}
N 520 -240 560 -240 {lab=Vout}
N 520 -330 520 -240 {lab=Vout}
N 260 -240 300 -240 {lab=Vin}
N 300 -330 300 -240 {lab=Vin}
N 410 -200 410 -160 {lab=gnd}
N 410 -330 410 -310 {lab=vdd}
N 410 -410 410 -370 {lab=!Control}
N 410 -120 410 -80 {lab=Control}
C {sg13g2_pr/sg13_lv_nmos.sym} 410 -140 3 0 {name=M1
l=0.13u
w=1u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 410 -350 3 1 {name=M2
l=0.13u
w=3u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {iopin.sym} 560 -240 0 0 {name=p1 lab=Vout}
C {iopin.sym} 260 -240 0 1 {name=p2 lab=Vin}
C {iopin.sym} 410 -410 0 1 {name=p3 lab=!Control}
C {iopin.sym} 410 -80 0 1 {name=p4 lab=Control}
C {iopin.sym} 410 -200 1 1 {name=p5 lab=gnd}
C {iopin.sym} 410 -310 3 1 {name=p6 lab=vdd}
