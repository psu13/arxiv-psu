% eft-loop1-1.mp -- do not edit, generated automatically by EPFLcombined.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.0pt#, 50*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__l1, __l2);
vright (__r1, __r2);
vconnect ("plain,label=$\pi ^+$,l.d=.05w", __v1, __l1);
vconnect ("plain,label=$\pi ^+$,l.d=.05w", __v1, __r1);
vconnect ("plain,label=$\pi ^0$,l.d=.05w", __v2, __l2);
vconnect ("plain,label=$\pi ^0$,l.d=.05w", __v2, __r2);
vconnect ("plain,left=1.0,tension=0.5,label=$\pi ^{+(0)}$", __v1, __v2);
vconnect ("plain,left=1.0,tension=0.5,label=$\pi ^{-(0)}$,l.side=left", __v2, __v1);
vfreeze;
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
