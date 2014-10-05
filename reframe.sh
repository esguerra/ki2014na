#!/bin/bash
find_pair adna12step.pdb  adna12step.inp
analyze adna12step.inp
cp ref_frames.dat adna.dat
frame_mol -x -4,7 bdna.dat adna12step.pdb adna12step1.pdb

find_pair bdna12step.pdb  bdna12step.inp
analyze bdna12step.inp
cp ref_frames.dat bdna.dat
frame_mol -x -4,7 bdna.dat bdna12step.pdb bdna12step1.pdb

find_pair zdna12step.pdb  zdna12step.inp
analyze zdna12step.inp
cp ref_frames.dat zdna.dat
frame_mol -x -4,7 bdna.dat zdna12step.pdb zdna12step1.pdb