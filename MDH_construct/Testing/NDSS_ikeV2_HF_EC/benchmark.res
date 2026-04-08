
NDSS IKE with assoc: running...

real	0m3.780s
user	0m4.062s
sys	0m0.033s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.

NDSS IKE no collision: running...

real	0m5.976s
user	0m6.474s
sys	0m0.044s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.

NDSS IKE with collision: running...

real	0m6.076s
user	0m4.222s
sys	0m0.057s
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B,x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> event(initB(B,A,x,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> event(initA(A,B',x,y')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B,x,y')) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptA(A,B,x,y)) ==> (event(initB(B,A,x,y')) && eq_hash(y,y')) || event(Dishonest(A)) || event(Dishonest(B)) is true.
RESULT event(acceptB(B,A,x,y)) ==> (event(initA(A,B',x,y)) && eq_hash(y,y')) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB2(B,A,x,y,h)) ==> (event(initA2(A,B',x',y',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(x)) is false.
RESULT not event(SanityB(x)) is false.

Generated NDSS IKE log files:
/home/hafeez/projects/Fast_and_FuriHash/Proverif-Case-Studies/MDH_construct/Testing/logs/NDSS_ikeV2_HF_EC/LOG_assoc.txt
/home/hafeez/projects/Fast_and_FuriHash/Proverif-Case-Studies/MDH_construct/Testing/logs/NDSS_ikeV2_HF_EC/LOG_col.txt
/home/hafeez/projects/Fast_and_FuriHash/Proverif-Case-Studies/MDH_construct/Testing/logs/NDSS_ikeV2_HF_EC/LOG_no.txt
