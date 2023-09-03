% eft-diag2.mp -- do not edit, generated automatically by EPFLcombined.tex
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
vvertex ("d.sh=circle,d.filled=full,d.si=.1w,label=$\G _{\textit {eff}}$,l.a=90,l.d=.08w", __v1);
vconnect ("plain,label=$\psi $,l.d=.05w", __l1, __v1);
vconnect ("plain,label=$\psi $,l.d=.05w", __v1, __r1);
vconnect ("plain,label=$\psi $,l.d=.05w", __v1, __l2);
vconnect ("plain,label=$\psi $,l.d=.05w", __v1, __r2);
vfreeze;
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
