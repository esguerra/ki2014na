load arna.pdb
load adna.pdb
load bdna.pdb

translate [-20,0,0], arna
translate [20,0,0], bdna

zoom all

zoom all, -18

color black, elem c

bg white

set orthoscopic, 1

ray

png conformations1.png

set ray_trace_mode, 3

ray

png conformations2.png
