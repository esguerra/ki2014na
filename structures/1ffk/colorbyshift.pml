#!/usr/bin/python
load 1ffk_onlyna.pdb, 1ffk

# orient the "hand"

reset
turn y,-60
turn z,180
move y,-15

hide 
select patoms, n. P
select nucleotides, resn a+c+g+t+u
set cartoon_nucleic_acid_mode, 2
set cartoon_ladder_mode, 1 
set cartoon_ring_mode, 3 
set cartoon_ring_finder, 3 
set cartoon_ring_transparency, 0.5

set cartoon_nucleic_acid_color, red, nucleotides
set cartoon_nucleic_acid_color,    red, resn a
set cartoon_nucleic_acid_color, yellow, resn c
set cartoon_nucleic_acid_color,  green, resn g
set cartoon_nucleic_acid_color,   cyan, resn u

#show cartoon, 1ffk
show ribbon, patoms
#show cartoon, patoms
show spheres, patoms
set sphere_scale, 1


#set depth_cue=0
#set ray_trace_fog=0

# open the file of new values (just 1 column of numbers, one for each atom)
inFile = open("shiftvalues", 'r')
# create the global, stored array
stored.newB = []
# read the new B factors from file
for line in inFile.readlines(): stored.newB.append( float(line) )
# close the input file
inFile.close()
# clear out the old B Factors
alter 1ffk, b=0.0
# update the B Factors with new properties
alter patoms, b=stored.newB.pop(0)
# color the molecule based on the new B Factors.
spectrum b, blue_white_red, minimum=-30, maximum=30



set internal_gui=0



movie.add_roll(8.0,axis='x',start=1)
cmd.ending()
ending
movie.add_roll(8.0,axis='y',start=241)
set cache_frames,1

deselect
