%%%%  Start of file revtex.cls %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
%% This file allows REVTeX v3.1 to function correctly under
%% the 12/94 release of LaTeX 2e. Put this file wherever
%% revtex.sty is. Continue to use \documentstyle{revtex}
%% (with the correct options) and REVTeX will run normally
%% in compatibility mode. Thanks to David Carlisle for
%% pointing out this fix. 
  
\ifx\every@math@size\undefined\else 
  \let\old@expast\@expast
  \def\@expast#1{\old@expast{#1}\let\@tempa\reserved@a}
\fi

\input{revtex.sty}
%%%%  End of file revtex.cls %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
