% loop2.mp -- do not edit, generated automatically by EPFLcombined.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.0pt#, 60*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__l1);
vright (__r1);
vconnect ("photon,label=$A_{\m }$", __l1, __v1);
vconnect ("photon,label=$A_{\n }$", __v2, __r1);
vconnect ("plain,left=1.0,tension=0.5,label=$ $", __v1, __v2);
vconnect ("plain,left=1.0,tension=0.5,label=$ $,l.side=left", __v2, __v1);
vfreeze;
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
