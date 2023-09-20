options nosource nonotes;

data hist1;
   input K y v x;
datalines;
1 1289   17 0
2 449     4 0
3 1038   13 0
4 16000 371 0
5 27845 590 0
;
run;

data hist2;
   input K y v x;
datalines;
1 301   4 1
2 438   4 1
3 318   4 1
4 152   4 1
5 164   3 1
;
run;

data hist3;
   input K y v x;
datalines;
1 1289   17 0
1 301     4 1
2 449     4 0
2 438     4 1
3 1038   13 0
3 318     4 1
4 16000 371 0
4 152     4 1
5 27845 590 0
5 164     3 1
;
run;

data hist4;
   input K y v x;
datalines;
1 1289   17 0
1 301     4 1
2 438     4 1
3 1038   13 0
4 16000 371 0
4 152     4 1
5 27845 590 0
5 164     3 1
;
run;


data curr;
	input K n p r TA TD TF;
datalines;
1 150  0.17  0.012 0 0.077 0.077
2 350  0.40  0.012 0 0.462 0.462
3 3500 0.40  0.012 0     2 2
4 400  0.25  0.012 0 0.462 0.462
5 375  0.20  0.012 0 0.462 0.462
6 740  0.25  0.012 0 0.462 0.462
7 750  0.33  0.012 0 0.462 0.462
8 564  0.33  0.012 0 0.462 0.462
9 8000 0.50  0.015 2     4 2
;
run;

data curr1;
	input K n p r TA TD TF;
datalines;
 1 8000 0.50  0.015 2     4 2
;
run;

data hist5;
   input K y v x;
datalines;
1 27845 590 0
;
run;

%include 'macroBSMED.sas';

%BSMED(HIST=hist1,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.10,REP=100,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=77,OUTPUT=HIST1_CURR_010_100T);
*%BSMED(HIST=hist1,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.10,REP=500,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=77,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST1_CURR_010_500);
*%BSMED(HIST=hist2,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.20,REP=100,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=37,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST2_CURR_020_100);
*%BSMED(HIST=hist2,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.20,REP=500,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=37,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST1_CURR_010_500);
*%BSMED(HIST=hist3,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.30,REP=100,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=10,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST3_CURR_030_100);
*%BSMED(HIST=hist3,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.30,REP=500,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=10,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST3_CURR_030_500);
*%BSMED(HIST=hist3,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.30,REP=1000,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=10,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST3_CURR_030_1000);
*%BSMED(HIST=hist3,CURR=curr,delta=1.3,eta0=0.96,NMCS=20000,nbi=5000,a0=0.30,REP=2000,sigma0=10,sigma1=10,tau0=10,tau=10,SEEDGEN=10,OUTPUT=P:\Projects\SASmacro\BSMED recent\Output\Output11\HIST3_CURR_030_2000);











