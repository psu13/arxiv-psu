% eft-diag3.mp -- do not edit, generated automatically by EPFLcombined.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.0pt#, 60*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__l1, __l2);
vright (__r1, __r2);
vconnect ("plain,label=$\pi ^+$,l.d=.05w", __l1, __v1);
vconnect ("plain,label=$\pi ^+$,l.d=.05w", __r1, __v1);
vconnect ("plain,label=$\pi ^0$,l.d=.05w", __l2, __v1);
vconnect ("plain,label=$\pi ^0$,l.d=.05w", __r2, __v1);
vfreeze;
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
