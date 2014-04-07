#!/usr/bin/python
#Example taken form the pymol wiki at:
#http://pymolwiki.org/index.php/Gallery
load 1bna.pdb
hide everything
show sticks
show spheres
select waters, resn HOH
set stick_radius, .07
set sphere_scale, .18
set sphere_scale, .13, elem H
set bg_rgb=[1, 1, 1]
set stick_quality, 50
set sphere_quality, 4
color gray85, elem C
color red, elem O
color slate, elem N
color gray98, elem H
set stick_color, black
set ray_trace_mode, 1
set ray_texture, 2
set antialias, 3
set ambient, 0.5
set spec_count, 5
set shininess, 50
set specular, 1
set reflect, .1
set dash_gap, 0
set dash_color, black
set dash_gap, .15
set dash_length, .05
set dash_round_ends, 0
set dash_radius, .05

hide spheres, waters

python
preset.ball_and_stick("vis")
python end

deselect

ray
