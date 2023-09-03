% fmfdefault.mp -- do not edit, generated automatically by Lecture_4.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.0pt#, 60*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__I1, __I2);
vright (__r1, __r2);
vconnect ("plain,label=$ $,tension=2,label.side=left", __I2, __c1);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c1, __c2);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c2, __r2);
vconnect ("photon,label=$\gamma $,label.side=left", __I1, __c1);
vconnect ("photon,label=$\gamma $,label.side=right", __c2, __r1);
vfreeze;
vdraw;
endsubgraph;
endchar;
