%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Modification log
%%
%% 2004/03/25 v0.1 based on amsart.cls, inspired by jair.sty 
%% 2004/09/01 v0.2 based on amsart.cls
%% 2004/10/12 v0.3 based on amsart.cls
%% 2004/12/16 v0.4 based on amsart.cls
%% 2005/01/24 v0.5 based on amsart.cls
%% 2006/01/18 v0.6 based on amsart.cls
%% 2006/07/24 v0.7 based on amsart.cls
%% 2009/05/25 v0.8 based on amsart.cls
%%                
%%                 Juergen Koslowski, Stefan Milius
%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{LMCS}
              [2009/05/25 v0.8 LMCS Layout Editor Class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}
\ProcessOptions\relax

\LoadClass[11pt,reqno]{amsart}
\usepackage{helvet,cclicenses}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   		Use of this class, cf. also lmcs-smp.tex
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% This class builds upon the amsart class of AMS-LaTeX and requires use
% of LaTeX 2e. 
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 		Start of the paper
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% \documentclass{lmcs} 
%
% without any options followed optionally by
%
% \usepackage{package1,package2,...}
%
% loading additional macro packages you may wish to use, (eg, xypic, etc.)
% (This also is the place to define further theorem-environments, in case
% those provided by default do not suffice, cf. below.)
%
% \begin{document}
% \title[short_title]{real title}
%
% and a list of author information of the form
%
% \author[short_author1]{Author 1}
% \address{address 1}
% \email{author1@email1}
% \thanks{thanks 1}
%
% \author[short_author2]{Author 2}
% \address{address 2}
% \email{author2@email2}
% \thanks{thanks 2}
%
% \author[short_author3]{Author 3}
% \address{address 3}
% \email{author3@email3}
% \thanks{thanks 3}
%
% The \author, \address and \email fields are mandatory.
%
% The \thanks fields are optional.  They appear
% in footnotes on the title page, the addresses and email information
% is relegated to the top of the article.  The optional arguments to
% the \title and \author macros determine a running head on the odd
% and even pages, respectively.
%
% Lists of keywords and phrases as well as an ACM Subject
% classification are mandatory; these appear in footnotes on the
% title page, preceeding any \thanks fields.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Body of the paper
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% We encourage the use of LaTeX's crossreferencing capabilities with the
% \label and \ref commands, for sections, subsections, theorems etc., and
% displayed equations and figures.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 		Theorems, Definitions etc.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% The following theorem-like environments are available.  The
% numbering is consecutive within sections.
%
% thm   Theorem
% cor   Corollary
% lem   Lemma
% prop  Proposition
% asm   Asumption
%
% defi  Definition
% rem   Remark
% rems  Remarks (intended for use with itemized remarks)
% exa   Example
% exas  Examples (intended for use with itemized examples)
% conj  Conjecture
% prob  Problem
% oprob Open Problem
% algo  Algorithm
% obs   Observation
%
% If you require additional environments, you can add them before
% \begin{document} by means of
%
% \theoremstyle{plain}\newtheorem{env}[thm]{Environment}
%
% or
%
% \theoremstyle{definition}\newtheorem{env}[thm]{Environment}
%
% In the first case the font within the new environment will be italicised.
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Proofs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Proofs start with the command \proof and should be ended by \qed,
% which provides an end-of-proof box at the right margin:
%
% \proof ... \qed
%
% In itemized or enumerated proofs the \qed command has to occur BEFORE 
% \end{itemize} or \end{enumerate} to ensure proper placement of the box:
%
% \proof
% \begin{itemize}
% \item[(1)] ...
% \item[(2)] ...
% ...
% \item[(n)] ... \qed
% \end{itemize}
%
% Similarly, the box may be used within theorem environments, when no
% explicit proof is given:
%
% \begin{thm} ... \qed \end{thm}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%		Itemized or enumerated environments and proofs
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% By default, the first item of an itemized (or enumerated) environment
% or proof appears inlined on the same line as the environment title.
% This can be prevented by placing \hfill before the itemization, e.g.:
%
% \begin{thm}\label{T:abc}\hfill
% \begin{itemize} ...
%
% \proof\hfill
% \begin{itemize} ...


%
%		End of the paper
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Acknowledgements should be placed in a non-numbered section:
%
% \section*{Acknowledgement}
%
% The bibliography uses alpha.bst where references are built from the 
% authors' initials and the year of publication.  The use of bibtex
% for creating the bibliography is strongly encouraged.  Then the
% end of the paper takes the form
%
% \begin{thebibliography}{key}
% \end{thebibliography}
% \end{document}
%
% where ``key'' is the longest alphanumerical key expected to occur.
%
% Optionally, appendices can be inserted after the bibliography by
% means of
%
% \end{thebibliography}
% \appendix
% \section{} % Appendix A
% \section{} % Appendix B
% % etc.
% \end{document}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%                   actual macros
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\count255=\the\catcode`\@ \catcode`\@=11 \edef\catc@de{\the\count255}

\newif\ifsuPer \suPertrue
\def\rsuper#1{\ifsuPer${\,}^{\MakeLowercase #1}$\fi}%
\def\lsuper#1{\ \hskip-2 pt\ifsuPer\hbox to0 pt{\hss${}^{\MakeLowercase #1}\ $\fi}}%

\def\titlecomment#1{\def\@titlecomment{#1}}
\let\@titlecomment=\@empty

\renewcommand{\sfdefault}{phv}
\renewcommand*\subjclass[2][1991]{%
  \def\@subjclass{#2}%
  \@ifundefined{subjclassname@#1}{%
    \ClassWarning{\@classname}{Unknown edition (#1) of ACM
      Subject Classification; using '1991'.}%
  }{%
    \@xp\let\@xp\subjclassname\csname subjclassname@1998\endcsname
  }%
}
\@namedef{subjclassname@1998}{1998 ACM Subject Classification}

\def\amsclass#1{\def\@amsclass{#1}}
\let\@amsclass=\@empty
\def\amsclassname{2000 Mathematics Subject Classification}

\renewenvironment{abstract}{%
  \ifx\maketitle\relax
    \ClassWarning{\@classname}{Abstract should precede
      \protect\maketitle\space in AMS documentclasses; reported}%
  \fi
  \global\setbox\abstractbox=\vtop \bgroup
    \normalfont\Small
    \list{}{\labelwidth\z@
      \leftmargin3pc \rightmargin\leftmargin
      \listparindent\normalparindent \itemindent\z@
      \parsep\z@ \@plus\p@
      \let\fullwidthdisplay\relax
    }%
    \item[\hskip\labelsep\scshape\abstractname.]%
}{%
  \endlist\egroup
  \ifx\@setabstract\relax \@setabstracta \fi
}
\newcommand{\revisionname}{Revision Note}
\newbox\revisionbox
\newenvironment{revision}{%
  \ifx\maketitle\relax
    \ClassWarning{\@classname}{Revision should precede 
      \protect\maketitle\space in LMCS documentclasses; reported}%
  \fi
  \global\setbox\revisionbox=\vtop \bgroup
    \normalfont\Small
    \list{}{\labelwidth\z@
      \leftmargin3pc \rightmargin\leftmargin
      \listparindent\normalparindent \itemindent\z@
      \parsep\z@ \@plus\p@
      \let\fullwidthdisplay\relax
    }%
    \item[\hskip\labelsep\scshape\revisionname.]%
}{%
  \endlist\egroup
  \ifx\@setrevision\relax \@setrevisiona \fi
}
\def\@setrevision{\@setrevisiona \global\let\@setrevision\relax}
\def\@setrevisiona{%
  \ifvoid\revisionbox
  \else
    \skip@20\p@ \advance\skip@-\lastskip
    \advance\skip@-\baselineskip \vskip\skip@
    \box\revisionbox
    \prevdepth\z@ % because \revisionbox is a vtop
    \bigskip\hrule\medskip
  \fi
}
\def\@setsubjclass{%
  {\itshape\subjclassname:}\enspace\@subjclass\@addpunct.}
\def\@setamsclass{%
  {\itshape\amsclassname:}\enspace\@amsclass\@addpunct.}
\def\@setkeywords{%
  {\itshape \keywordsname:}\enspace\@keywords\@addpunct.}
\def\@settitlecomment{\@titlecomment\@addpunct.}
%\def\@settitle{\begin{center}%
%  \baselineskip14\p@\relax
%    \bfseries
%\uppercasenonmath\@title
%  {\ \phantom{x}}\\{\ \phantom{x}}\\ \@title
%  \@title
%  \end{center}%
%}
\def\@maketitle{%
  \normalfont\normalsize
  \let\@makefnmark\relax  \let\@thefnmark\relax
  \ifx\@empty\@date\else \@footnotetext{\@setdate}\fi
  \ifx\@empty\@subjclass\else \@footnotetext{\@setsubjclass}\fi
  \ifx\@empty\@amsclass\else \@footnotetext{\@setamsclass}\fi
  \ifx\@empty\@keywords\else \@footnotetext{\@setkeywords}\fi
  \ifx\@empty\@titlecomment\else \@footnotetext{\@settitlecomment}\fi
  \ifx\@empty\thankses\else \@footnotetext{%
    \def\par{\let\par\@par}\@setthanks\par}\fi
  \@mkboth{\@nx\shortauthors}{\@nx\shorttitle}%
  \global\topskip12\p@\relax % 5.5pc   "   "   "     "     "
  \topskip42 pt\@settitle
  \ifx\@empty\authors \else \@setauthors \fi
  \@setaddresses
  \ifx\@empty\@dedicatory
  \else
    \baselineskip18\p@
    \vtop{\centering{\footnotesize\itshape\@dedicatory\@@par}%
      \global\dimen@i\prevdepth}\prevdepth\dimen@i
  \fi
  \endfront@text
  \bigskip\hrule\medskip
  \@setrevision
  \@setabstract
  \vskip-\bigskipamount
  \normalsize
  \if@titlepage
    \newpage
  \else
    \dimen@34\p@ \advance\dimen@-\baselineskip
    \vskip\dimen@\relax
  \fi
}
\def\@setaddresses{\par
  \nobreak \begingroup
\footnotesize
  \def\author##1{\nobreak\addvspace\bigskipamount}%
  \def\\{\unskip, \ignorespaces}%
  \interlinepenalty\@M
  \def\address##1##2{\begingroup
    \par\addvspace\bigskipamount\noindent\narrower
    \@ifnotempty{##1}{(\ignorespaces##1\unskip) }%
    {\ignorespaces##2}\par\endgroup}%
  \def\curraddr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape Current address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      ##2\par}\endgroup}%
  \def\email##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape e-mail address}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      {##2}\par}\endgroup}%
  \def\urladdr##1##2{\begingroup
    \@ifnotempty{##2}{\nobreak\indent{\itshape URL}%
      \@ifnotempty{##1}{, \ignorespaces##1\unskip}\/:\space
      \ttfamily##2\par}\endgroup}%
  \addresses
  \endgroup
}
\copyrightinfo{}{}

%% Pagestyle

%% Defines the pagestyle for the title page.
%% Usage: \lmcsheading{vol}{issue}{year}{pages}{subm}{publ}{rev}{spec_iss}{title}

\def\lmcsheading#1#2#3#4#5#6#7{\def\ps@firstpage{\let\@mkboth\@gobbletwo%
\def\@oddhead{%
\hbox{\fontencoding{T1}%
  \vbox to 30 pt{\scriptsize\vfill
    \hbox{\textsf{Logical Methods in Computer Science}\hfil}
%    \hbox{\textsf{Vol.~\doi, pp.\ 1--#2}}
    \hbox{\textsf{Vol.~\doi, pp.\ #2}}
    \hbox{\textsf{www.lmcs-online.org}}
    \rlap{\vrule width\hsize depth .4 pt}}}\hfill
\raise 4pt
\hbox{\fontencoding{T1}%
  \vbox to 30 pt{\scriptsize\vfill
    \hbox{\textsf{#3}}
    \hbox{\textsf{#4}}}}\hfill
\raise 4pt
\hbox{\fontencoding{T1}%
  \vbox to 30 pt{\scriptsize\vfill
    \hbox to 94 pt{\textsf{Submitted\hfill #5}}
    \hbox to 94 pt{\textsf{Published\hfill #6}}
    #7}}}
\def\@evenhead{}\def\@evenfoot{}}%
\thispagestyle{firstpage}}

\def\endfront@text{%
    \insert\copyins{\hsize\textwidth
      \fontsize{6}{7\p@}\normalfont\upshape
      \noindent
\hbox{\fontencoding{T1}%
  \vbox{\fontsize{6}{8 pt}\baselineskip=6 pt\vss
    \hbox{\hbox to 20 pt{\hfill}
          \textsf{LOGICAL METHODS}\hfil}
    \hbox{\hbox to 20 pt{\font\logo=LMCS-logo\smash{\logo l}}
          \textsf{IN COMPUTER SCIENCE}}}}
\hfill\textsf{DOI:10.2168/LMCS-\doi}
%\hfill\textsf{\copyright\shortauthors}
\hfill
\hbox{\fontencoding{T1}%
  \vbox{\fontsize{6}{8 pt}\baselineskip=6 pt\vss
    \hbox{\textsf{\,\,\copyright\quad \shortauthors}\hfil}
    \hbox{\textsf{\cC\ \href{http://creativecommons.org/about/licenses}{Creative Commons}}\hfil}}}
\par\kern\z@}%
}

\def\enddoc@text{\nobreak%
    \insert\copyins{\hsize.57\textwidth
\vbox to 0pt{\vskip12 pt%
      \fontsize{6}{7\p@}\normalfont\upshape
      \everypar{}%
      \noindent\fontencoding{T1}%
  \textsf{This work is licensed under the Creative Commons
  Attribution-NoDerivs License. To view a copy of this license, visit
  \texttt{http://creativecommons.org/licenses/by-nd/2.0/} or send a
  letter to Creative Commons, 171 Second St, Suite 300, San Francisco,
    CA 94105, USA, or Eisenacher Strasse 2, 10777 Berlin, Germany}\vss}
      \par
      \kern\z@}%
}

%% Defines the pagestyle for the rest of the pages
%% Usage: \ShortHeadings{Minimizing Conflicts}{Minton et al}
%%	  \ShortHeadings{short title}{short authors}

%\def\firstpageno#1{\setcounter{page}{#1}}
%\def\ShortHeadings#1#2{\def\ps@lmcsps{\let\@mkboth\@gobbletwo%
%\def\@oddhead{\hfill {\small\sc #1} \hfill}%
%\def\@oddfoot{\hfill \small\rm \thepage \hfill}%
%\def\@evenhead{\hfill {\small\sc #2} \hfill}%
%\def\@evenfoot{\hfill \small\rm \thepage \hfill}}%
%\pagestyle{lmcsps}}

%% MISCELLANY

\def\@startsection#1#2#3#4#5#6{\bigskip%
 \if@noskipsec \leavevmode \fi
 \par \@tempskipa #4\relax
 \@afterindenttrue
 \ifdim \@tempskipa <\z@ \@tempskipa -\@tempskipa \@afterindentfalse\fi
 \if@nobreak \everypar{}\else
     \addpenalty\@secpenalty\addvspace\@tempskipa\fi
 \@ifstar{\@dblarg{\@sect{#1}{\@m}{#3}{#4}{#5}{#6}}}%
         {\@dblarg{\@sect{#1}{#2}{#3}{#4}{#5}{#6}}}%
}

\def\figurecaption#1#2{\noindent\hangindent 40pt
                       \hbox to 36pt {\small\sl #1 \hfil}
                       \ignorespaces {\small #2}}
% Figurecenter prints the caption title centered.
\def\figurecenter#1#2{\centerline{{\sl #1} #2}}
\def\figurecenter#1#2{\centerline{{\small\sl #1} {\small #2}}}

%
%  Allow ``hanging indents'' in long captions
%
\long\def\@makecaption#1#2{
   \vskip 10pt 
   \setbox\@tempboxa\hbox{#1: #2}
   \ifdim \wd\@tempboxa >\hsize               % IF longer than one line:
       \begin{list}{#1:}{
       \settowidth{\labelwidth}{#1:}
       \setlength{\leftmargin}{\labelwidth}
       \addtolength{\leftmargin}{\labelsep}
        }\item #2 \end{list}\par   % Output in quote mode
     \else                                    %   ELSE  center.
       \hbox to\hsize{\hfil\box\@tempboxa\hfil}  
   \fi}


% Define strut macros for skipping spaces above and below text in a
% tabular environment.
\def\abovestrut#1{\rule[0in]{0in}{#1}\ignorespaces}
\def\belowstrut#1{\rule[-#1]{0in}{#1}\ignorespaces}

%%% Theorem environments

% the following environments switch to a slanted font:
\theoremstyle{plain}

\newtheorem{thm}{Theorem}[section]
\newtheorem{cor}[thm]{Corollary}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{prop}[thm]{Proposition}
\newtheorem{asm}[thm]{Assumption}

% the following environments keep the roman font:
\theoremstyle{definition}

\newtheorem{rem}[thm]{Remark}
\newtheorem{rems}[thm]{Remarks}
\newtheorem{exa}[thm]{Example}
\newtheorem{exas}[thm]{Examples}
\newtheorem{defi}[thm]{Definition}
\newtheorem{conv}[thm]{Convention}
\newtheorem{conj}[thm]{Conjecture}
\newtheorem{prob}[thm]{Problem}
\newtheorem{oprob}[thm]{Open Problem}
\newtheorem{algo}[thm]{Algorithm}
\newtheorem{obs}[thm]{Observation}
\newtheorem{fact}[thm]{Fact}
\newtheorem{qu}[thm]{Question}
\newtheorem{pty}[thm]{Property}
\newtheorem{oqu}[thm]{Open Question}

\numberwithin{equation}{section}

% end-of-proof sign, to appear at right margin
% Paul Taylor and Chris Thompson, Cambridge, 1986
%
\def\pushright#1{{%        set up
   \parfillskip=0pt            % so \par doesn't push #1 to left
   \widowpenalty=10000         % so we dont break the page before #1
   \displaywidowpenalty=10000  % ditto
   \finalhyphendemerits=0      % TeXbook exercise 14.32
  %
  %                 horizontal
   \leavevmode                 % \nobreak means lines not pages
   \unskip                     % remove previous space or glue
   \nobreak                    % don't break lines
   \hfil                       % ragged right if we spill over
   \penalty50                  % discouragement to do so
   \hskip.2em                  % ensure some space
   \null                       % anchor following \hfill
   \hfill                      % push #1 to right
   {#1}                        % the end-of-proof mark (or whatever)
  %
  %                   vertical
   \par}}                      % build paragraph

%\def\qEd{{\lower1 pt\hbox{\vbox{\hrule\hbox{\vrule\kern4 pt
%    \vbox{\kern4 pt\hbox{\hss}\kern4 pt}\kern4 pt\vrule}\hrule}}}}
\def\qED#1{{\lower#1 pt\hbox{\vbox{\hrule\hbox{\vrule\kern4 pt
    \vbox{\kern4 pt\hbox{\hss}\kern4 pt}\kern4 pt\vrule}\hrule}}}}
\def\qEd{\qED{1}}
\def\qed{\pushright{\qEd}
    \penalty-700 \par\addvspace{\medskipamount}}
\def\Qed{\pushright{\qEd}
    \penalty-700 \par\addvspace{\medskipamount}}

\newenvironment{Proof}[1][\proofname]{\par
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bf
    #1.]\ignorespaces
}{%
  \popQED\endtrivlist\@endpefalse
}
% Bibliographystyle

\bibliographystyle{alpha}

\DeclareRobustCommand{\cC}{%
  \ifmmode{\nfss@text{\text@cc}}\else\text@cc\fi}
\DeclareRobustCommand{\cCnd}{%
  \ifmmode{\nfss@text{\text@ccnd}}\else\text@ccnd\fi}
\DeclareRobustCommand{\cCby}{%
  \ifmmode{\nfss@text{\text@ccby}}\else\text@ccby\fi}
\DeclareRobustCommand{\cCnc}{%
  \ifmmode{\nfss@text{\text@ccnc}}\else\text@ccnc\fi}
\DeclareRobustCommand{\cCsa}{%
  \ifmmode{\nfss@text{\text@ccsa}}\else\text@ccsa\fi}
\renewcommand{\by}{\cCby}
\renewcommand{\bynd}{\cCby\cCnd}
\renewcommand{\byncnd}{\cCby\cCnc\cCnd}
\renewcommand{\bync}{\cCby\cCnc}
\renewcommand{\byncsa}{\cCby\cCnc\cCsa}
\renewcommand{\bysa}{\cCby\cCsa}
\renewcommand{\nd}{\cCnd}
\renewcommand{\ndnc}{\cCnd\cCnc}
\renewcommand{\nc}{\cCnc}
\renewcommand{\ncsa}{\cCnc\cCsa}
\renewcommand{\sa}{\cCsa}

\def\eqalign#1{\null\,\vcenter{\openup\jot\mathsurround=0 pt
  \ialign{\strut\hfil$\displaystyle{##}$&$\displaystyle{{}##}$\hfil
      \crcr#1\crcr}}\,}

\def\Rlap#1{\rlap{\mths$#1$}}
\def\Llap#1{\llap{\mths$#1$}}

\endinput
