#!/bin/bash

COMMAND="parm ../../parm7 \n"
COMMAND="$COMMAND trajin ../../ncfile 56000 58000 \n"

COMMAND="$COMMAND vector vecs1 out vec1.dat :2@C1,C2,C3,C4,O5,C5 :9@C1,C2,C3,C4,O5,C5  \n"
COMMAND="$COMMAND vector vecs2 out vec2.dat :12@C1,C2,C3,C4,O5,C5 :19@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs3 out vec3.dat :22@C1,C2,C3,C4,O5,C5 :29@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs4 out vec4.dat :32@C1,C2,C3,C4,O5,C5 :39@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs5 out vec5.dat :42@C1,C2,C3,C4,O5,C5 :49@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs6 out vec6.dat :52@C1,C2,C3,C4,O5,C5 :59@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs7 out vec7.dat :62@C1,C2,C3,C4,O5,C5 :69@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs8 out vec8.dat :72@C1,C2,C3,C4,O5,C5 :79@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs9 out vec9.dat :82@C1,C2,C3,C4,O5,C5 :89@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs10 out vec10.dat :92@C1,C2,C3,C4,O5,C5 :99@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs11 out vec11.dat :102@C1,C2,C3,C4,O5,C5 :109@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs12 out vec12.dat :112@C1,C2,C3,C4,O5,C5 :119@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs13 out vec13.dat :122@C1,C2,C3,C4,O5,C5 :129@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs14 out vec14.dat :132@C1,C2,C3,C4,O5,C5 :139@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs15 out vec15.dat :142@C1,C2,C3,C4,O5,C5 :149@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs16 out vec16.dat :152@C1,C2,C3,C4,O5,C5 :159@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs17 out vec17.dat :162@C1,C2,C3,C4,O5,C5 :169@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs18 out vec18.dat :172@C1,C2,C3,C4,O5,C5 :179@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs19 out vec19.dat :182@C1,C2,C3,C4,O5,C5 :189@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs20 out vec20.dat :192@C1,C2,C3,C4,O5,C5 :199@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs21 out vec21.dat :202@C1,C2,C3,C4,O5,C5 :209@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs22 out vec22.dat :212@C1,C2,C3,C4,O5,C5 :219@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs23 out vec23.dat :222@C1,C2,C3,C4,O5,C5 :229@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND vector vecs24 out vec24.dat :232@C1,C2,C3,C4,O5,C5 :239@C1,C2,C3,C4,O5,C5 \n"
COMMAND="$COMMAND readdata vecAvg.dat name AvgVec \n"
COMMAND="$COMMAND writedata vecAvg2.dat AvgVec \n"
COMMAND="$COMMAND readdata vecAvg2.dat vector name AvgVec \n"


### re-run uncommented after average vector calculation
#j=1
#while [ $j -le 24 ];
#do
#arr=( 1 2 3 4 5 6 7 9 10 11 12 14 15 16 17 18 19 22 23 24 )
#for i in "${arr[@]}";
#do
#if [ $j -ne $i ]; then
#COMMAND="$COMMAND vectormath vec1 vecs${i} vec2 AvgVec dotproduct out vec_avg.dat norm name acos(|v${i}|*|avg|) \n"
#done

COMMAND="$COMMAND go"
echo -e "$COMMAND" | cpptraj

