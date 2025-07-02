
package require psfgen

topology ../toppar/top_all36_carb0.rtf
topology ../toppar/top_all36_cgenff.rtf
topology ../toppar/bglcn.str
foreach txt {a b c d e f g h i j k l m n o p q r s t u v w x} txt1 {A B C D E F G H I J K L M N O P Q R S T U V W X} {
segment ${txt1} {
       pdb seg${txt}.pdb 
}
coordpdb seg${txt}.pdb ${txt1} 
patch 14bb ${txt1}:1 ${txt1}:2
patch 14bb ${txt1}:2 ${txt1}:3
patch 14bb ${txt1}:3 ${txt1}:4
patch 14bb ${txt1}:4 ${txt1}:5
patch 14bb ${txt1}:5 ${txt1}:6
patch 14bb ${txt1}:6 ${txt1}:7
patch 14bb ${txt1}:7 ${txt1}:8
patch 14bb ${txt1}:8 ${txt1}:9
patch 14bb ${txt1}:9 ${txt1}:10
}
guesscoord
regenerate angles
regenerate dihedrals 

writepsf all.psf
writepdb all.pdb

quit
