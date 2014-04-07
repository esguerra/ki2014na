#!/usr/bin/python
#Example taken form the pymol wiki at:
#http://pymolwiki.org/index.php/Gallery
load nucleic.pdb
as spheres
color lightblue, not org
color magenta, org
remove solvent
orient all within 8 of org
unset specular
set ray_trace_gain, 0
set ray_trace_mode, 3
bg_color white
set ray_trace_color, black
unset depth_cue
ray
