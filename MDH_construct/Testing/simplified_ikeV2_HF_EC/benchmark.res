
########################################
Starting simplified IKE benchmark with LIB_SET=current
########################################

Simplified ike with assoc: running...

real	0m3.748s
user	0m3.714s
sys	0m0.086s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

Simplified ike no collision: running...

real	0m4.524s
user	0m4.466s
sys	0m0.049s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

Simplified ike collision: running...

real	0m7.466s
user	0m7.330s
sys	0m0.115s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

Completed simplified IKE benchmark with LIB_SET=current

########################################
Starting simplified IKE benchmark with LIB_SET=legacy
########################################

Simplified ike with assoc: running...

real	0m2.715s
user	0m2.673s
sys	0m0.028s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

Simplified ike no collision: running...

real	0m2.599s
user	0m2.553s
sys	0m0.033s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

Simplified ike collision: running...

real	2m7.108s
user	2m5.873s
sys	0m1.257s
RESULT event(acceptB2(B,A,sA)) ==> event(initA2(A,sA)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT event(acceptB(B,A,x,y,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) cannot be proved.
RESULT not event(SanityA(true,x)) is false.
RESULT not event(SanityA(false,x)) is false.
RESULT not event(SanityB(true,x)) is false.
RESULT not event(SanityB(false,x)) is false.

Completed simplified IKE benchmark with LIB_SET=legacy

Generated simplified IKE log files:
/home/hafeez/projects/Fast_and_FuriHash/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/current/LOG_assoc.txt
/home/hafeez/projects/Fast_and_FuriHash/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/current/LOG_col.txt
/home/hafeez/projects/Fast_and_FuriHash/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/current/LOG_no.txt
/home/hafeez/projects/Fast_and_FuriHash/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/legacy/LOG_assoc.txt
/home/hafeez/projects/Fast_and_FuriHash/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/legacy/LOG_col.txt
/home/hafeez/projects/Fast_and_FuriHash/MDH_construct/Testing/simplified_ikeV2_HF_EC/logs/legacy/LOG_no.txt
