
mol load pdb ../packmol/neutral.pdb


set a [atomselect top "residue 0 to 9"]
$a set chain A; $a set segid A
$a writepdb sega.pdb
set b [atomselect top "residue 10 to 19"]
$b set chain B; $b set segid B
$b writepdb segb.pdb
set c [atomselect top "residue 20 to 29"]
$c set chain C; $c set segid C 
$c writepdb segc.pdb 
set d [atomselect top "residue 30 to 39"]
$d set chain D; $d set segid D
$d writepdb segd.pdb
set e [atomselect top "residue 40 to 49"]
$e set chain E; $e set segid E 
$e writepdb sege.pdb 
set f [atomselect top "residue 50 to 59"]
$f set chain F; $f set segid F 
$f writepdb segf.pdb
set g [atomselect top "residue 60 to 69"]
$g set chain G; $G set segid G
$g writepdb segg.pdb
set h [atomselect top "residue 70 to 79"]
$h set chain H; $h set segid H 
$h writepdb segh.pdb
set i [atomselect top "residue 80 to 89"]
$i set chain I; $i set segid I 
$i writepdb segi.pdb 
set j [atomselect top "residue 90 to 99"]
$j set chain J; $j set segid J 
$j writepdb segj.pdb
set k [atomselect top "residue 100 to 109"]
$k set chain K; $k set segid K 
$k writepdb segk.pdb 
set l [atomselect top "residue 110 to 119"]
$l set chain L; $l set segid L
$l writepdb segl.pdb
set m [atomselect top "residue 120 to 129"]
$m set chain M; $m set segid M
$m writepdb segm.pdb
set n [atomselect top "residue 130 to 139"]
$n set chain N; $n set segid N
$n writepdb segn.pdb
set o [atomselect top "residue 140 to 149"]
$o set chain O; $o set segid O
$o writepdb sego.pdb
set p [atomselect top "residue 150 to 159"]
$p set chain P; $p set segid P
$p writepdb segp.pdb
set q [atomselect top "residue 160 to 169"]
$q set chain Q; $p set segid Q 
$q writepdb segq.pdb
set r [atomselect top "residue 170 to 179"]       
$r set chain R; $r set segid R 
$r writepdb segr.pdb
set s [atomselect top "residue 180 to 189"] 
$s set chain S; $s set segid S       
$s writepdb segs.pdb
set t [atomselect top "residue 190 to 199"]      
$t set chain T; $t set segid T        
$t writepdb segt.pdb 
set u [atomselect top "residue 200 to 209"]
$u set chain U; $u set segid U   
$u writepdb segu.pdb        
set v [atomselect top "residue 210 to 219"]
$v set chain V; $v set segid V
$v writepdb segv.pdb
set w [atomselect top "residue 220 to 229"]
$w set chain W; $w set segid W
$w writepdb segw.pdb
set x [atomselect top "residue 230 to 239"] 
$x set chain X; $x set segid X       
$x writepdb segx.pdb
quit

