
Universal protocol with assoc: running...

real	0m2.612s
user	0m2.578s
sys	0m0.029s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Universal protocol no collision: running...

real	0m5.348s
user	0m5.003s
sys	0m0.052s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Universal protocol with collision: running...

real	0m4.294s
user	0m7.896s
sys	0m0.090s
RESULT event(acceptB2(B,A,sA_4)) ==> event(initA2(A,sA_4)) || event(Dishonest(B)) || event(Dishonest(A)) is false.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(t,t')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(acceptB(B,A,x_1,y_1,t,h)) ==> (event(initA(A,B',x',y',t',h')) && eq_hash(h,h')) || event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyA(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT event(sessionKeyB(B,A,k)) && attacker(k) ==> event(Dishonest(B)) || event(Dishonest(A)) is true.
RESULT not event(SanityA(true,x_1)) is false.
RESULT not event(SanityA(false,x_1)) is false.
RESULT not event(SanityB(true,x_1)) is false.
RESULT not event(SanityB(false,x_1)) is false.

Generated universal log files:
/home/hafeez/projects/Fast_and_FuriHash/Proverif-Case-Studies/MDH_construct/Testing/logs/Universal_Protocol_Test/LOG_assoc.txt
/home/hafeez/projects/Fast_and_FuriHash/Proverif-Case-Studies/MDH_construct/Testing/logs/Universal_Protocol_Test/LOG_col.txt
/home/hafeez/projects/Fast_and_FuriHash/Proverif-Case-Studies/MDH_construct/Testing/logs/Universal_Protocol_Test/LOG_no.txt
