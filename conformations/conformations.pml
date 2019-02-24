load arna.pdb
load adna.pdb
load bdna.pdb

translate [-20,0,0], arna
translate [20,0,0], bdna

zoom all, -10

color black, elem c

bg white

set orthoscopic, 1

set antialias, 10
set ray_trace_mode, 0
png conformations1a.png, width=1200, height=1200, dpi=300, ray=0
set ray_trace_mode, 3
png conformations1b.png, width=1200, height=1200, dpi=300, ray=1

turn x, 90
zoom all, -10
set ray_trace_mode, 0
png conformations2a.png, width=1200, height=1200, dpi=300, ray=0
set ray_trace_mode, 3
png conformations2b.png, width=1200, height=1200, dpi=300, ray=1
