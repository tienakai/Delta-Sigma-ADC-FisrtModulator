v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 420 -540 420 -520 {lab=VDD}
N 520 -490 580 -490 {lab=#net1}
N 620 -540 620 -520 {lab=VDD}
N 360 -490 420 -490 {lab=VDD}
N 360 -540 360 -490 {lab=VDD}
N 360 -540 420 -540 {lab=VDD}
N 420 -620 420 -540 {lab=VDD}
N 620 -490 690 -490 {lab=VDD}
N 690 -540 690 -490 {lab=VDD}
N 620 -540 690 -540 {lab=VDD}
N 620 -620 620 -540 {lab=VDD}
N 420 -420 420 -360 {lab=#net1}
N 620 -430 620 -360 {lab=#net2}
N 520 -490 520 -420 {lab=#net1}
N 460 -490 520 -490 {lab=#net1}
N 420 -420 520 -420 {lab=#net1}
N 420 -460 420 -420 {lab=#net1}
N 520 -330 620 -330 {lab=VSS}
N 420 -300 420 -220 {lab=#net3}
N 470 -220 620 -220 {lab=#net3}
N 620 -300 620 -220 {lab=#net3}
N 320 -330 380 -330 {lab=inp}
N 660 -330 720 -330 {lab=inn}
N 80 -540 80 -520 {lab=VDD}
N 80 -490 110 -490 {lab=VDD}
N 110 -540 110 -490 {lab=VDD}
N 80 -540 110 -540 {lab=VDD}
N 80 -620 80 -540 {lab=VDD}
N 620 -430 900 -430 {lab=#net2}
N 620 -460 620 -430 {lab=#net2}
N 940 -470 940 -460 {lab=VDD}
N 620 -620 940 -620 {lab=VDD}
N 80 -620 420 -620 {lab=VDD}
N 420 -620 620 -620 {lab=VDD}
N 940 -340 940 -280 {lab=out}
N 80 -100 80 -60 {lab=#net4}
N 40 -490 40 -430 {lab=#net4}
N 40 -430 80 -430 {lab=#net4}
N 80 -460 80 -430 {lab=#net4}
N 170 -30 200 -30 {lab=#net4}
N 140 -100 140 -30 {lab=#net4}
N 120 -30 140 -30 {lab=#net4}
N 80 -100 140 -100 {lab=#net4}
N 80 -430 80 -100 {lab=#net4}
N 470 -220 470 -60 {lab=#net3}
N 420 -220 470 -220 {lab=#net3}
N 240 -60 470 -60 {lab=#net3}
N 80 20 80 40 {lab=VSS}
N 520 40 940 40 {lab=VSS}
N 240 20 240 40 {lab=VSS}
N 80 40 240 40 {lab=VSS}
N 70 -30 80 -30 {lab=VSS}
N 70 -30 70 20 {lab=VSS}
N 70 20 80 20 {lab=VSS}
N 80 0 80 20 {lab=VSS}
N 240 -30 250 -30 {lab=VSS}
N 250 -30 250 20 {lab=VSS}
N 240 20 250 20 {lab=VSS}
N 240 0 240 20 {lab=VSS}
N 520 -330 520 40 {lab=VSS}
N 420 -330 520 -330 {lab=VSS}
N 240 40 520 40 {lab=VSS}
N 940 -200 940 40 {lab=VSS}
N 940 -340 1060 -340 {lab=out}
N 940 -400 940 -340 {lab=out}
N 940 -430 970 -430 {lab=VDD}
N 970 -470 970 -430 {lab=VDD}
N 940 -470 970 -470 {lab=VDD}
N 940 -620 940 -470 {lab=VDD}
N 940 -250 970 -250 {lab=VSS}
N 970 -250 970 -200 {lab=VSS}
N 940 -200 970 -200 {lab=VSS}
N 940 -220 940 -200 {lab=VSS}
N 520 40 520 80 {lab=VSS}
N 170 -30 170 60 {lab=#net4}
N 140 -30 170 -30 {lab=#net4}
N 170 60 800 60 {lab=#net4}
N 800 -250 800 60 {lab=#net4}
N 800 -250 900 -250 {lab=#net4}
C {sg13g2_pr/sg13_lv_pmos.sym} 600 -490 0 0 {name=M4
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 440 -490 0 1 {name=M3
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 400 -330 0 0 {name=M1
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 640 -330 0 1 {name=M2
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 60 -490 0 0 {name=M7
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_pmos.sym} 920 -430 0 0 {name=M8
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_pmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 100 -30 0 1 {name=M6
l=5u
w=2.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 220 -30 0 0 {name=M5
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {sg13g2_pr/sg13_lv_nmos.sym} 920 -250 0 0 {name=M9
l=5u
w=1.5u
ng=1
m=1
model=sg13_lv_nmos
spiceprefix=X
}
C {ipin.sym} 320 -330 0 0 {name=p1 lab=inp}
C {ipin.sym} 720 -330 0 1 {name=p2 lab=inn}
C {iopin.sym} 520 -620 3 0 {name=p3 lab=VDD}
C {iopin.sym} 520 80 1 0 {name=p4 lab=VSS}
C {opin.sym} 1060 -340 0 0 {name=p5 lab=out}
C {sg13g2_pr/annotate_fet_params.sym} 1260 -490 0 0 {name=annot1 ref=M0}
C {sg13g2_pr/annotate_fet_params.sym} 1450 -490 0 0 {name=annot2 ref=M1}
C {sg13g2_pr/annotate_fet_params.sym} 1260 -290 0 0 {name=annot3 ref=M2}
C {sg13g2_pr/annotate_fet_params.sym} 1450 -290 0 0 {name=annot4 ref=M3}
C {sg13g2_pr/annotate_fet_params.sym} 1260 -110 0 0 {name=annot5 ref=M4}
C {sg13g2_pr/annotate_fet_params.sym} 1880 -490 0 0 {name=annot6 ref=M6}
C {sg13g2_pr/annotate_fet_params.sym} 1690 -490 0 0 {name=annot7 ref=M5}
C {sg13g2_pr/annotate_fet_params.sym} 1690 -290 0 0 {name=annot8 ref=M7}
C {sg13g2_pr/annotate_fet_params.sym} 1880 -290 0 0 {name=annot9 ref=M8}
