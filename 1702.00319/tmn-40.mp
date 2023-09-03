% tmn-40.mp -- do not edit, generated automatically by Lecture_4.tex
input feynmp
require_RCS_revision "1.30";
beginchar(1, 100*1.0pt#, 60*1.0pt#, 0);
"feynmf: 1";
LaTeX_unitlength:=1.0pt;
subgraph (0, 0, w, h);
vinit;
pickup pencircle scaled thin;
pickup pencircle scaled thick;
vleft (__l1, __l2, __l3);
vright (__r1, __r2, __r3);
vconnect ("dbl_wiggly,label=$h_{\m \n }$,tension=0.0001,label.side=right", __c22, __c1);
vconnect ("phantom,label=$ $,tension=2,label.side=left", __l1, __c1);
vconnect ("phantom,label=$ $,tension=2,label.side=left", __c1, __r1);
vconnect ("phantom,label=$ $,tension=2,label.side=left", __l3, __c3);
vconnect ("phantom,label=$ $,tension=2,label.side=left", __c3, __r3);
vconnect ("plain,label=$ $,tension=2,label.side=left", __l2, __c21);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c21, __c22);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c22, __c23);
vconnect ("plain,label=$ $,tension=2,label.side=left", __c23, __r2);
vconnect ("photon,label=$\gamma $,right=0.7,tension=0.0001,label.side=right", __c23, __c3);
vconnect ("photon,label=$ $,left=0.7,tension=0.0001,label.side=left", __c21, __c3);
vfreeze;
vdraw;
endsubgraph;
endchar;
% the end.
end.
endinput;
