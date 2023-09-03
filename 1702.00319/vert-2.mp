% vert-2.mp -- do not edit, generated automatically by EPFLcombined.tex
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
vconnect ("photon,label=$ $,label.side=right", __c1, __c2);
vconnect ("plain,label=$p_1$,tension=2,label.side=left", __l1, __c1);
vconnect ("plain,label=$p_2$,tension=2,label.side=left", __c1, __r1);
vconnect ("plain,label=$p_3$,tension=2,label.side=left", __l2, __c2);
vconnect ("plain,label=$p_4$,tension=2,label.side=left", __c2, __r2);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
