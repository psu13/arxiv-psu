% lamu.cls
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{lamu}[1997]

\let\if@runhead\iffalse
\DeclareOption{runningheads}{\let\if@runhead\iftrue}
\ProcessOptions
\LoadClass[twoside]{article}
\setlength{\textwidth}{12.2cm}
\setlength{\textheight}{19.0cm}

\frenchspacing
\def~{\penalty\@M\kern3pt}
\renewcommand{\abstractname}{Abstract.}
\newcommand{\andname}{and}
\renewcommand{\contentsname}{Table of Contents}
\newcommand\contriblistname{List of Contributors}
\newcommand{\participantslistname}{List of Participants}
\renewcommand{\figurename}{Fig.\thinspace}
\newcommand{\lastandname}{, and}
\newcommand{\listoffiguresname}{List of Figures}
\newcommand{\listoftablesname}{List of Tables}
\newcommand{\literaturename}{References}
\renewcommand\tablename{Table }


%\renewenvironment{thebibliography}[1]
%     {\section*{\literaturename}%
%       \small\list{}%{\@biblabel{\@arabic\c@enumiv}}%
%       {\settowidth\labelwidth{\hspace{10\p@}\hskip-\labelsep}%\@biblabel{#1}}%
%         \leftmargin\labelwidth
%         \advance\leftmargin\labelsep
%         \usecounter{enumiv}%
%         \let\p@enumiv\@empty
%         \renewcommand\theenumiv{\@arabic\c@enumiv}}%
%       \def\newblock{\hskip .11em plus .33em minus .07em}
%       \sloppy
%       \clubpenalty4000
%       \@clubpenalty \clubpenalty
%       \widowpenalty4000%
%       \sfcode`\.=1000\relax}
%     {\def\@noitemerr
%       {\@latex@warning{Empty `thebibliography' environment}}%
%       \endlist}

%\def\@cite#1{#1}%

%\def\bibitem{\@bibitem}%
%\def\@bibitem#1#2#3{\ifx!#1!\item[]\hskip-\labelwidth
%    \hskip-\labelsep\else\item[\@biblabel{#1}]\fi
%    \if@filesw
%       {\def\protect##1{\string ##1\space}\immediate
%       \write\@auxout{\string\bibcite{#2}{#3}}}%
%    \fi\ignorespaces}%

%\def\cite{\@ifnextchar[{\@tempswatrue\@citex}%
%                       {\@tempswafalse\@citex[]}}%
%

%\def\@citex[#1]#2{%
%    \if@filesw
%       \immediate\write\@auxout{\string\citation{#2}}%
%    \fi
%    \def\@citea{}%
%    \@cite{\@for\@citeb:=#2\do
%       {\@citea\def\@citea{,\penalty\@m\ }\@ifundefined
%       {b@\@citeb}{{\bf ?}\@warning
%       {Citation `\@citeb' on page \thepage \space undefined}}%
%%{{       \hbox{\csname b@\@citeb\endcsname}}}%
%       {\csname b@\@citeb\endcsname}}}%
%    {#1}}%
%
%\def\@cite#1#2{{#1\if@tempswa , #2\fi}}%
%\def\@biblabel#1{#1\hfill}

\newif\if@mono\@monofalse
\def\ds@mono{\@monotrue}

\newif\if@envcountreset\@envcountresetfalse
\def\ds@envcountreset{\@envcountresettrue}

\def\@mbi{cmmib10}
\def\@ptsize{0} \@namedef{ds@11pt}{\def\@ptsize{1}}
\@namedef{ds@12pt}{\def\@ptsize{2}}
\def\ds@twoside{\@twosidetrue \@mparswitchtrue}
\def\ds@draft{\overfullrule
5pt}
\@options

\ds@twoside

\lineskip 1pt \normallineskip 1pt
\def\baselinestretch{1}

\def\@normalsize{\@setsize\normalsize{12pt}\xpt\@xpt
\abovedisplayskip=3 mm plus6pt minus 4pt
\belowdisplayskip=3 mm plus6pt minus 4pt
\abovedisplayshortskip=0mm plus6pt minus 2pt
\belowdisplayshortskip=2 mm plus4pt minus 4pt}

\DeclareMathSymbol{\Gamma}{\mathalpha}{letters}{"00}
\DeclareMathSymbol{\Delta}{\mathalpha}{letters}{"01}
\DeclareMathSymbol{\Theta}{\mathalpha}{letters}{"02}
\DeclareMathSymbol{\Lambda}{\mathalpha}{letters}{"03}
\DeclareMathSymbol{\Xi}{\mathalpha}{letters}{"04}
\DeclareMathSymbol{\Pi}{\mathalpha}{letters}{"05}
\DeclareMathSymbol{\Sigma}{\mathalpha}{letters}{"06}
\DeclareMathSymbol{\Upsilon}{\mathalpha}{letters}{"07}
\DeclareMathSymbol{\Phi}{\mathalpha}{letters}{"08}
\DeclareMathSymbol{\Psi}{\mathalpha}{letters}{"09}
\DeclareMathSymbol{\Omega}{\mathalpha}{letters}{"0A}

\def\small{\@setsize\small{11pt}\ixpt\@ixpt
\abovedisplayskip=2.5 mm plus5pt minus 3pt
\belowdisplayskip=2.5 mm plus5pt minus 3pt
\abovedisplayshortskip=0mm plus6pt minus 2pt
\belowdisplayshortskip=2 mm plus4pt minus 4pt
\def\@listi{\leftmargin\leftmargini\topsep 4pt plus 2pt minus 2pt}}

\def\footnotesize{\@setsize\footnotesize{11pt}\ixpt\@ixpt
\abovedisplayskip=2.5 mm plus5pt minus 3pt
\belowdisplayskip=2.5 mm plus5pt minus 3pt
\abovedisplayshortskip=0mm plus6pt minus 2pt
\belowdisplayshortskip=2 mm plus4pt minus 4pt
\def\@listi{\leftmargin\leftmargini\topsep 4pt plus 2pt minus 2pt}}

\def\scriptsize{\@setsize\scriptsize{8.4pt}\viipt\@viipt}

\def\tiny{\@setsize\tiny{6pt}\vpt\@vpt}
\def\large{\@setsize\large{13.2pt}\xipt\@xipt}
\def\Large{\@setsize\Large{14.4pt}\xiipt\@xiipt}
\def\LARGE{\@setsize\LARGE{16.8pt}\xivpt\@xivpt}
\def\huge{\@setsize\huge{22pt}\xxpt\@xxpt}
\def\Huge{\@setsize\Huge{30pt}\xxvpt\@xxvpt}
\@normalsize


\setlength\oddsidemargin   {63\p@}
\setlength\evensidemargin  {63\p@}
\setlength\marginparwidth  {90\p@}
\setlength\marginparsep    {11\p@}
\setlength\topmargin       {11\p@}
\setlength\headheight      {12\p@}
\setlength\headsep   {13.66\p@}

%\setlength\footheight{12\p@}
%\setlength\footskip{30\p@}
\setlength\columnsep{1cc}
\setlength\footnotesep{7.7\p@}
\skip\footins 9pt plus 4pt minus 2pt
\setlength\floatsep{12pt\@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{8mm\@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {8mm\@plus 2\p@ \@minus 2\p@}
%\@maxsep 8mm

\setlength\dblfloatsep{12pt\@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{12pt\@plus 2\p@ \@minus 4\p@}
%\@dblmaxsep 20pt

\@fptop 0pt plus 1fil \@fpsep 8pt plus 2fil \@fpbot 0pt plus 1fil
\@dblfptop0pt plus1fil \@dblfpsep8pt plus2fil\@dblfpbot 0pt plus1fil
\marginparpush 5pt

\parskip 0pt plus 1pt \parindent 1.5em \topsep 8pt plus 2pt minus
4pt
\partopsep 2pt plus 1pt minus 1pt \itemsep \z@
\@lowpenalty 51 \@medpenalty 151 \@highpenalty 301
\@beginparpenalty-\@lowpenalty\@endparpenalty
-\@lowpenalty\@itempenalty
-\@lowpenalty


\def\vec#1{\mathchoice{\mbox{\boldmath$\displaystyle\bf#1$}}
{\mbox{\boldmath$\textstyle\bf#1$}}
{\mbox{\boldmath$\scriptstyle\bf#1$}}
{\mbox{\boldmath$\scriptscriptstyle\bf#1$}}}

\def\@sect#1#2#3#4#5#6[#7]#8{\ifnum #2>\c@secnumdepth
  \def\@svsec{}\else
  \refstepcounter{#1}\edef\@svsec{\csname the#1\endcsname\quad }\fi
  \@tempskipa #5\relax
   \ifdim \@tempskipa>\z@
  \begingroup #6\relax
  \noindent{\hskip #3\relax\@svsec}{\interlinepenalty \@M #8\par}
  \endgroup
    \csname #1mark\endcsname{#7}\addcontentsline
   {toc}{#1}{\ifnum #2>\c@secnumdepth \else
            \protect\numberline{\csname the#1\endcsname}\fi
          #7}\else
  \def\@svsechd{#6\hskip #3\@svsec #8\csname #1mark\endcsname
            {#7}\addcontentsline
             {toc}{#1}{\ifnum #2>\c@secnumdepth \else
               \protect\numberline{\csname the#1\endcsname}\fi
             #7}}\fi
  \@xsect{#5}}


\setcounter{secnumdepth}{2}
\newcounter {chapter}
\renewcommand\thechapter      {\@arabic\c@chapter}
\renewcommand\part{\cleardoublepage
                 \thispagestyle{empty}%
                 \if@twocolumn
                     \onecolumn
                     \@tempswatrue
                   \else
                     \@tempswafalse
                 \fi
                 %\null\vfil
                 \secdef\@part\@spart}
\def\@part[#1]#2{%
    \ifnum \c@secnumdepth >-2\relax
      \refstepcounter{part}%
      \addcontentsline{toc}{part}{\partname\thepart\hspace{1em}#1}%
    \else
      \addcontentsline{toc}{part}{#1}%
    \fi
    \markboth{}{}%
    {\centering
%     \interlinepenalty \@M
%     \normalfont
     \ifnum \c@secnumdepth >-2\relax
       \huge %\bfseries
       \partname~\thepart
       \par
       %\vskip 20\p@
     \@tempdima=118pt\advance\@tempdima by-\pagetotal
     \vskip\@tempdima            %        Add space before title.
     \fi
     \huge \bfseries #2\par}%
    \@endpart}


\def\@endpart{\vfil\newpage
  \if@twoside
  %\null
  \hbox{}
  \thispagestyle{empty}%
  \newpage
  \fi
  \if@tempswa
  \twocolumn
  \fi}
\def\@spart#1{%
    {\centering
%     \interlinepenalty \@M
%     \normalfont
     \huge \bfseries #1\par}%
    \@endpart}

% definition of chapter
\def\@chapapp{\chaptername}
\def\chaptername{Chapter}

\def\sec@hangfrom#1{#1}

\def\@makechapterhead#1{
  {\parindent0pt\raggedright
    \hyphenpenalty \@M
    \LARGE\bf\boldmath
    \sec@hangfrom{\thechapter.\hskip\betweenumberspace}%
    \ignorespaces#1\par
    \ifdim\pagetotal>118pt
      \vskip 24pt
    \else
      \@tempdima=118pt\advance\@tempdima by-\pagetotal
    \vskip\@tempdima
    \fi}
}

\def\@makeschapterhead#1{%
  {\parindent0pt\raggedright
    \hyphenpenalty \@M
    \LARGE\bfseries\boldmath
    \ignorespaces#1\par
    \ifdim\pagetotal>118pt
      \vskip 24pt
    \else
     \@tempdima=118pt\advance\@tempdima by-\pagetotal
     \vskip\@tempdima
    \fi}
}
%  {\parindent \z@ \raggedright
%    \normalfont
%    \interlinepenalty\@M
%    \Large \bfseries  #1\par\nobreak
%    \vskip 40\p@


\newcommand\chapter{\clearpage
  \thispagestyle{empty}%
  \global\@topnum\z@
  \@afterindentfalse
  \secdef\@chapter\@schapter}

\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
  \refstepcounter{chapter}%
  \typeout{\@chapapp\space\thechapter.}%
  \addcontentsline{toc}{chapter}%
  {\protect\numberline{\thechapter}#1}%
  \else
  \addcontentsline{toc}{chapter}{#1}%
  \fi
  \chaptermark{#1}%
  \addtocontents{lof}{\protect\addvspace{10\p@}}%
  \addtocontents{lot}{\protect\addvspace{10\p@}}%
  \if@twocolumn
  \@topnewpage[\@makechapterhead{#2}]%
  \else
  \@makechapterhead{#2}%
  \@afterheading
  \fi}


\def\@schapter#1{\if@twocolumn
  \@topnewpage[\@makeschapterhead{#1}]%
  \else
  \@makeschapterhead{#1}%
  \@afterheading
  \fi}


\def\preface{\chapter*{Preface}}

\newenvironment{contributorlist}
{\@restonecoltrue
   \if@twocolumn\@restonecolfalse\fi
   \columnseprule \z@ \columnsep 20\p@
   \twocolumn
   \chapter*{\contriblistname}
   \let\and\bigskip
   \parindent\z@\obeylines
}
{\if@restonecol\onecolumn\else\clearpage\fi}

\let\enddescription\endlist

\newenvironment{participantslist}
{\chapter*{\participantslistname}
  \def\participlabel##1{\hspace\labelsep ##1}%
  \def\member##1##2{\item[##1]\ \hfil{\tt##2}\break}\list{}{\labelwidth\z@
    \itemindent-\leftmargin\let\makelabel\participlabel}}
{\endlist}


\renewcommand\section{\@startsection{section}{1}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {12\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\Large\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {8\p@ \@plus 4\p@ \@minus 4\p@}%
                       {\normalfont\normalsize\bfseries\boldmath
                        \rightskip=\z@ \@plus 8em\pretolerance=10000 }}
\renewcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}%
                       {-18\p@ \@plus -4\p@ \@minus -4\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\normalfont\normalsize\bfseries\boldmath}}
\renewcommand\paragraph{\@startsection{paragraph}{4}{\z@}%
                       {-12\p@ \@plus -4\p@ \@minus -4\p@}%
                       {-0.5em \@plus -0.22em \@minus -0.1em}%
                       {\normalfont\normalsize\itshape}}
\renewcommand\subparagraph[1]{\typeout{LNCSE warning: You should not use
                  \string\subparagraph\space with this class}\vskip0.5cm
You should not use \verb|\subparagraph| with this class.\vskip0.5cm}

\setcounter{secnumdepth}{2}


\setlength\leftmargini  {17\p@}
\setlength\leftmargin    {\leftmargini}
\setlength\leftmarginii  {\leftmargini}
\setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini}
\setlength\leftmarginv   {10\p@}
\setlength\leftmarginvi  {10\p@}
\setlength  \labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\setlength  \labelsep  {5pt}
\parsep 0pt plus 1pt


\def\@listi{\leftmargin\leftmargini}
\def\@listii{\leftmargin\leftmarginii
 \labelwidth\leftmarginii\advance\labelwidth-\labelsep
 \topsep 0pt plus 1pt}
\def\@listiii{\leftmargin\leftmarginiii
 \labelwidth\leftmarginiii\advance\labelwidth-\labelsep
 \topsep 0pt plus 1pt}
\def\@listiv{\leftmargin\leftmarginiv
 \labelwidth\leftmarginiv\advance\labelwidth-\labelsep
 \topsep 0pt plus 1pt}
\def\@listv{\leftmargin\leftmarginv
 \labelwidth\leftmarginv\advance\labelwidth-\labelsep
 \topsep 0pt plus 1pt}
\def\@listvi{\leftmargin\leftmarginvi
 \labelwidth\leftmarginvi\advance\labelwidth-\labelsep
 \topsep 0pt plus 1pt}

\def\labelenumi{\arabic{enumi}.}
\def\theenumi{\arabic{enumi}}
\def\labelenumii{(\alph{enumii})}
\def\theenumii{\alph{enumii}}
\def\p@enumii{\theenumi}
\def\labelenumiii{\roman{enumiii}.}
\def\theenumiii{\roman{enumiii}}
\def\p@enumiii{\theenumi(\theenumii)}
\def\labelenumiv{\Alph{enumiv}.}
\def\theenumiv{\Alph{enumiv}}
\def\p@enumiv{\p@enumiii\theenumiii}

\renewcommand\labelitemi{\normalfont\bfseries --}
\renewcommand\labelitemii{$\m@th\bullet$}
\renewcommand\labelitemiii{$\m@th\ast$}
\renewcommand\labelitemiv{$\m@th\cdot$}

\setcounter{tocdepth}{0}


\def\l@part#1#2{\addpenalty{\@secpenalty}%
   \addvspace{2.25em plus\p@}%  % space above part line
   \begingroup
     \parindent \z@
     \rightskip \z@ plus 5em
     \hrule\vskip5pt
     \bfseries\boldmath   % set line in boldface
     \leavevmode          % TeX command to enter horizontal mode.
     #1\par
     \vskip5pt
     \hrule
     \vskip1pt
     \nobreak             % Never break after part entry
   \endgroup\addvspace{11pt}}


\def\numberline#1{\advance\hangindent by\@tempdima%
\hbox to\@tempdima{#1\hss\enspace}}
%
\def\bf@dottedtocline#1#2#3#4#5{\ifnum #1>\c@tocdepth \else
  \vskip \z@ plus .2pt
  {\leftskip #2\relax \rightskip \@tocrmarg \parfillskip -\rightskip
    \parindent #2\relax\@afterindenttrue
   \interlinepenalty\@M
   \leavevmode
   \@tempdima #3\relax \advance\leftskip \@tempdima \hbox{}\hskip
   -\leftskip
{\bf#4}\nobreak\leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern
\@dotsep
       mu$}\hfill \nobreak \hbox to\@pnumwidth{\hfil\rm #5}\par}\fi}


%
\def\l@author#1#2{%\addpenalty{-\@highpenalty}
%\vskip 1.0em plus 1pt
%\@tempdima 1.5em
 \@tempdima \z@
 \begingroup
 \parindent \z@ \rightskip \@pnumwidth
 \parfillskip -\@pnumwidth
 \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip
 #1\nobreak
 \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern
 \@dotsep mu$}\hfill
 \nobreak\hbox to\@pnumwidth{\hss #2}\par
 \penalty\@highpenalty \endgroup}
%
\def\l@chapter#1#2{\addpenalty{-\@highpenalty}%
 \vskip 1.0em plus 1pt \@tempdima 1.5em \begingroup
 \parindent \z@ \rightskip \@pnumwidth
 \parfillskip -\@pnumwidth
 \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip
 {\bf\boldmath#1}\nobreak
 \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern
 \@dotsep mu$}\hfill
 \nobreak\hbox to\@pnumwidth{\hss #2}\par
 \penalty\@highpenalty \endgroup}

\def\l@section{\@dottedtocline{1}{0em}{1.7em}}
\def\l@subsection{\@dottedtocline{2}{1.7em}{2.3em}}
\def\l@subsubsection{\@dottedtocline{3}{4em}{2em}}
\def\l@paragraph{\@dottedtocline{4}{6em}{2em}}
\def\l@subparagraph{\@dottedtocline{5}{8em}{2em}}


\newif\if@restonecol
\def\indexname{Subject Index}
\def\theindex{\@restonecoltrue\if@twocolumn\@restonecolfalse\fi
\columnseprule \z@
\columnsep 1cc\twocolumn[\hid@chapter*{\indexname}%
    \csname indexstarthook\endcsname]%
    \@mkboth{\indexname}{\indexname}%
    \thispagestyle{plain}\parindent\z@
    \rightskip0\p@ plus 40\p@
    \parskip\z@ plus .3\p@\relax\let\item\@idxitem
    \def\,{\relax\ifmmode\mskip\thinmuskip
           \else\hskip0.2em\ignorespaces\fi}%
    \small\rm}

\def\idxquad{\hskip 10\p@}% space that divides entry from number

\def\@idxitem{\par\hangindent 10\p@}

\def\subitem{\par\setbox0=\hbox{--\enspace}% second order
                \noindent\hangindent\wd0\box0}% index entry

\def\subsubitem{\par\setbox0=\hbox{--\,--\enspace}% third
                \noindent\hangindent\wd0\box0}% order index entry

\def\endtheindex{\if@restonecol\onecolumn\else\clearpage\fi}

\def\indexspace{\par \vskip 10\p@ plus5\p@ minus3\p@\relax}

\def\footnoterule{\kern-3\p@\hrule width 2 true cm\kern 2.6\p@}

\long\def\@makefntext#1{\@setpar{\@@par\@tempdima \hsize
  \advance\@tempdima-1em\parshape \@ne 1em\@tempdima}\par
  \parindent 1em\noindent \hbox to \z@{\hss$^{\@thefnmark}$\ }#1}

\setcounter{topnumber}{2}
\def\topfraction{.9}
\setcounter{bottomnumber}{1}
\def\bottomfraction{.3}
\setcounter{totalnumber}{3}
\def\textfraction{.15}
\def\floatpagefraction{.85}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.85}
\def\dblfloatpagefraction{.85}

\long\def\@makecaption#1#2{
 \vskip 10pt
 \setbox\@tempboxa\hbox{{\bf #1} #2}
 \ifdim \wd\@tempboxa >\hsize \unhbox\@tempboxa\par \else \hbox
to\hsize{\hfil\box\@tempboxa\hfil}
 \fi\vskip5pt}

\long\def\@caption#1[#2]#3{\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\par
  \begingroup
    \@parboxrestore
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}


\renewenvironment{figure}
               {\small\rm\@float{figure}}
               {\end@float}
\renewenvironment{table}
               {\small\rm\@float{table}}
               {\end@float}


\def\@fnsymbol#1{\ensuremath{\ifcase#1\or\star\or{\star\star}\or
   {\star\star\star}\or \dagger\or \ddagger\or
   \mathchar "278\or \mathchar "27B\or \|\or **\or \dagger\dagger
   \or \ddagger\ddagger \else\@ctrerr\fi}}


\newcounter{@inst}
\newcounter{@auth}
\newcounter{auco}
\newdimen\instindent
\newbox\authrun
\newtoks\authorrunning
\newtoks\tocauthor
\newbox\titrun
\newtoks\titlerunning
\newtoks\toctitle


\def\institute#1{\gdef\@institute{#1}}

\def\institutename{\par
 \begingroup
 \parskip=\z@
 \parindent=\z@
 \setcounter{@inst}{1}%
 \def\and{\par\stepcounter{@inst}%
          \noindent
          \llap{\hbox to\instindent{\hss$^{\the@inst}$%
                              \enspace}}\ignorespaces}%
 \setbox0=\vbox{\def\thanks##1{}\@institute}%
 \ifnum\value{@inst}>9\relax\setbox0=\hbox{$^{88}$\enspace}%
                 \else\setbox0=\hbox{$^{8}$\enspace}\fi
 \instindent=\wd0
 \leftskip=\wd0\relax
 \ifnum\value{@inst}=1\relax
   \leftskip=\z@
 \else
   \setcounter{footnote}{\c@@inst}%
   \setcounter{@inst}{1}%
   \noindent
   \llap{\hbox to\instindent{\hss$^{\the@inst}$\enspace}}\ignorespaces
 \fi
 \ignorespaces
 \@institute\par
 \endgroup}


\def\inst#1{\unskip$^{#1}$}
\def\fnmsep{\unskip$^,$}

\def\subtitle#1{\gdef\@subtitle{#1}}
\def\@subtitle{}
\def\@date{}


\renewcommand\maketitle{\par

 \stepcounter{chapter}%
  \addtocounter{chapter}{-1}%
  \stepcounter{section}%
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{figure}{0}
  \setcounter{table}{0}
  \setcounter{equation}{0}
  \setcounter{footnote}{0}%
  \begingroup
    \parindent=\z@
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \if@twocolumn
      \ifnum \col@number=\@ne
        \@maketitle
      \else
        \twocolumn[\@maketitle]%
      \fi
    \else
      \newpage
      \global\@topnum\z@   % Prevents figures from going at top of page.
      \@maketitle
    \fi
    \thispagestyle{empty}\@thanks
%
    \def\\{\unskip\ \ignorespaces}\def\inst##1{\unskip{}}%
    \def\thanks##1{\unskip{}}\def\fnmsep{\unskip}%
    \instindent=\hsize
    \advance\instindent by-\headlineindent
    \if!\the\toctitle!\addcontentsline{toc}{title}{\@title}\else
       \addcontentsline{toc}{title}{\the\toctitle}\fi
    \if@runhead
       \if!\the\titlerunning!\else
         \edef\@title{\the\titlerunning}%
       \fi
       \global\setbox\titrun=\hbox{\small\rm\unboldmath\ignorespaces\@title}%
       \ifdim\wd\titrun>\instindent
          \typeout{Title too long for running head. Please supply}%
          \typeout{a shorter form with \string\titlerunning\space prior to
                   \string\maketitle}%
          \global\setbox\titrun=\hbox{\small\rm
          Title Suppressed Due to Excessive Length}%
       \fi
       \xdef\@title{\copy\titrun}%
    \fi
%
    \if!\the\tocauthor!\relax
      {\def\and{\noexpand\protect\noexpand\and}%
      \protected@xdef\toc@uthor{\@author}}%
    \else
      \def\\{\noexpand\protect\noexpand\newline}%
      \protected@xdef\scratch{\the\tocauthor}%
      \protected@xdef\toc@uthor{\scratch}%
    \fi
    \addtocontents{toc}{{\protect\raggedright
    \protect\leftskip15\p@
    \protect\rightskip\@tocrmarg
    \protect\advance\protect\rightskip\@flushglue
    \protect\itshape\toc@uthor\protect\endgraf}}%
    \if@runhead
       \if!\the\authorrunning!
         \value{@inst}=\value{@auth}%
         \setcounter{@auth}{1}%
       \else
         \edef\@author{\the\authorrunning}%
       \fi
       \global\setbox\authrun=\hbox{\small\unboldmath\@author\unskip}%
       \ifdim\wd\authrun>\instindent
          \typeout{Names of authors too long for running head. Please supply}%
          \typeout{a shorter form with \string\authorrunning\space prior to
                   \string\maketitle}%
          \global\setbox\authrun=\hbox{\small\rm
          Authors Suppressed Due to Excessive Length}%
       \fi
       \xdef\@author{\copy\authrun}%
       \markboth{\@author}{\@title}%
     \fi
  \endgroup
  \setcounter{footnote}{0}%
  }
%
\def\@maketitle{\clearpage
 \markboth{}{}%
 \def\lastand{\ifnum\value{@inst}=2\relax
                 \unskip{} \andname\
              \else
                 \unskip \lastandname\
              \fi}%
 \def\and{\stepcounter{@auth}\relax
          \ifnum\value{@auth}=\value{@inst}%
             \lastand
          \else
             \unskip,
          \fi}%
  \raggedright
 {\Large \bfseries\boldmath
  \pretolerance=10000
  \@title \par}\vskip .8cm
\if!\@subtitle!\else {\large \bfseries\boldmath
  \vskip -.65cm
  \pretolerance=10000
  \@subtitle \par}\vskip .8cm\fi
 \setbox0=\vbox{\setcounter{@auth}{1}\def\and{\stepcounter{@auth}}%
 \def\thanks##1{}\@author}%
 \global\value{@inst}=\value{@auth}%
 \global\value{auco}=\value{@auth}%
 \setcounter{@auth}{1}%
{\lineskip .5em
\noindent\ignorespaces
\@author\vskip.35cm}
 {\small\institutename}%
 }

\renewenvironment{abstract}{%
      \advance\topsep by0.35cm\relax\small
      \labelwidth=\z@
      \listparindent=\z@
      \itemindent\listparindent
              \trivlist\item[\hskip\labelsep
                     \bfseries\abstractname]}
    {\endtrivlist}

\newdimen\betweenumberspace          % dimension for space between
\betweenumberspace=5pt               % number and text of titles.
\newdimen\headlineindent             % dimension for space between
\headlineindent=2.5cc                % number and text of headings.

\if@twoside
\def\ps@headings{\let\@mkboth\markboth
   \def\@oddfoot{}\def\@evenfoot{}
   \def\@evenhead{\small\rm\rlap{\thepage}\hskip\headlineindent
                  \leftmark\hfil}
   \def\@oddhead{\hfil\small\rm\rightmark\hskip\headlineindent
                  \llap{\thepage}}
   \def\chaptermark##1{\markboth{{\ifnum\c@secnumdepth>\m@ne
      \thechapter.\hskip\betweenumberspace\fi ##1}}{{\ifnum
      \c@secnumdepth>\m@ne\thechapter.\hskip\betweenumberspace\fi ##1}}}
   \def\sectionmark##1{\markright{{\ifnum\c@secnumdepth>\z@
      \thesection\hskip\betweenumberspace\fi ##1}}}}
\else \def\ps@headings{\let\@mkboth\markboth
   \def\@oddfoot{}\def\@evenfoot{}
   \def\@oddhead{\hfil\small\rm\rightmark\hskip\headlineindent
                 \llap{\thepage}}
   \def\chaptermark##1{\markright{{\ifnum\c@secnumdepth>\m@ne
      \thechapter.\hskip\betweenumberspace\fi ##1}}}}
\fi
\def\ps@myheadings{\let\@mkboth\@gobbletwo
   \def\@oddfoot{}\def\@evenfoot{}
   \def\@evenhead{\small\rm\rlap{\thepage}\hskip\headlineindent
                  \leftmark\hfil}
   \def\@oddhead{\hfil\small\rm\rightmark\hskip\headlineindent
                  \llap{\thepage}}
   \def\chaptermark##1{}
   \def\sectionmark##1{}%
   \def\subsectionmark##1{}}


\if@mono
   \ps@headings
\else
   \ps@myheadings
\fi

\def\D{{\rm d}}
\def\E{{\rm e}}
\let\eul=\E
\def\I{{\rm i}}
\let\imag=\I
\def\strich{\vskip0.5cm\hrule\vskip3ptplus12pt\null}

% Frame for paste-in figures or tables
\def\mpicplace#1#2{%#1 = width   #2 = height
\vbox{\@tempdima=#2\advance\@tempdima by-2\fboxrule
\hrule\@height \fboxrule\@width #1
\hbox to #1{\vrule\@width \fboxrule\@height\@tempdima\hfil
\vrule\@width \fboxrule\@height\@tempdima}\hrule\@height
\fboxrule\@width #1}}
\def\picplace#1{\mpicplace{\hsize}{#1}}
% Ragged bottom for the actual page
\def\thisbottomragged{\def\@textbottom{\vskip\z@ plus.0001fil
\global\let\@textbottom\relax}}
\flushbottom


\def\squareforqed{\hbox{\rlap{$\sqcap$}$\sqcup$}}
\def\qed{\ifmmode\squareforqed\else{\unskip\nobreak\hfil
\penalty50\hskip1em\null\nobreak\hfil\squareforqed
\parfillskip=0pt\finalhyphendemerits=0\endgraf}\fi}

\def\sun{\hbox{$\odot$}}
\def\la{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr<\cr\sim\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
<\cr\sim\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
<\cr\sim\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
<\cr\sim\cr}}}}}
\def\ga{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr>\cr\sim\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
>\cr\sim\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
>\cr\sim\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
>\cr\sim\cr}}}}}
\def\degr{\hbox{$^\circ$}}
\def\arcmin{\hbox{$^\prime$}}
\def\arcsec{\hbox{$^{\prime\prime}$}}
\def\utw{\smash{\rlap{\lower5pt\hbox{$\sim$}}}}
\def\udtw{\smash{\rlap{\lower6pt\hbox{$\approx$}}}}
\def\fd{\hbox{$.\!\!^{\rm d}$}}
\def\fh{\hbox{$.\!\!^{\rm h}$}}
\def\fm{\hbox{$.\!\!^{\rm m}$}}
\def\fs{\hbox{$.\!\!^{\rm s}$}}
\def\fdg{\hbox{$.\!\!^\circ$}}
\def\farcm{\hbox{$.\mkern-4mu^\prime$}}
\def\farcs{\hbox{$.\!\!^{\prime\prime}$}}
\def\fp{\hbox{$.\!\!^{\scriptscriptstyle\rm p}$}}
\def\cor{\mathrel{\mathchoice {\hbox{$\widehat=$}}{\hbox{$\widehat=$}}
{\hbox{$\scriptstyle\hat=$}}
{\hbox{$\scriptscriptstyle\hat=$}}}}
\def\sol{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr\sim\cr<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr\sim\cr
<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr\sim\cr
<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
\sim\cr<\cr}}}}}
\def\sog{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr\sim\cr>\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr\sim\cr
>\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
\sim\cr>\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
\sim\cr>\cr}}}}}
\def\lse{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr<\cr\simeq\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
<\cr\simeq\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
<\cr\simeq\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
<\cr\simeq\cr}}}}}
\def\gse{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr>\cr\simeq\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
>\cr\simeq\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
>\cr\simeq\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
>\cr\simeq\cr}}}}}
\def\grole{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr>\cr\noalign{\vskip-1.5pt}<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
>\cr\noalign{\vskip-1.5pt}<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
>\cr\noalign{\vskip-1pt}<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
>\cr\noalign{\vskip-0.5pt}<\cr}}}}}
\def\leogr{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr<\cr\noalign{\vskip-1.5pt}>\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
<\cr\noalign{\vskip-1.5pt}>\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
<\cr\noalign{\vskip-1pt}>\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
<\cr\noalign{\vskip-0.5pt}>\cr}}}}}
\def\loa{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr<\cr\approx\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
<\cr\approx\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
<\cr\approx\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
<\cr\approx\cr}}}}}
\def\goa{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr>\cr\approx\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
>\cr\approx\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
>\cr\approx\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
>\cr\approx\cr}}}}}
\def\diameter{{\ifmmode\mathchoice
{\ooalign{\hfil\hbox{$\displaystyle/$}\hfil\crcr
{\hbox{$\displaystyle\mathchar"20D$}}}}
{\ooalign{\hfil\hbox{$\textstyle/$}\hfil\crcr
{\hbox{$\textstyle\mathchar"20D$}}}}
{\ooalign{\hfil\hbox{$\scriptstyle/$}\hfil\crcr
{\hbox{$\scriptstyle\mathchar"20D$}}}}
{\ooalign{\hfil\hbox{$\scriptscriptstyle/$}\hfil\crcr
{\hbox{$\scriptscriptstyle\mathchar"20D$}}}}
\else{\ooalign{\hfil/\hfil\crcr\mathhexbox20D}}%
\fi}}

\def\getsto{\mathrel{\mathchoice {\vcenter{\offinterlineskip
\halign{\hfil
$\displaystyle##$\hfil\cr\gets\cr\to\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr\gets
\cr\to\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr\gets
\cr\to\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
\gets\cr\to\cr}}}}}
\def\lid{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr<\cr\noalign{\vskip1.2pt}=\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr<\cr
\noalign{\vskip1.2pt}=\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr<\cr
\noalign{\vskip1pt}=\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
<\cr
\noalign{\vskip0.9pt}=\cr}}}}}
\def\gid{\mathrel{\mathchoice {\vcenter{\offinterlineskip\halign{\hfil
$\displaystyle##$\hfil\cr>\cr\noalign{\vskip1.2pt}=\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr>\cr
\noalign{\vskip1.2pt}=\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr>\cr
\noalign{\vskip1pt}=\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
>\cr
\noalign{\vskip0.9pt}=\cr}}}}}
\def\grole{\mathrel{\mathchoice {\vcenter{\offinterlineskip
\halign{\hfil
$\displaystyle##$\hfil\cr>\cr\noalign{\vskip-1pt}<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\textstyle##$\hfil\cr
>\cr\noalign{\vskip-1pt}<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptstyle##$\hfil\cr
>\cr\noalign{\vskip-0.8pt}<\cr}}}
{\vcenter{\offinterlineskip\halign{\hfil$\scriptscriptstyle##$\hfil\cr
>\cr\noalign{\vskip-0.3pt}<\cr}}}}}
\def\bbbr{{\rm I\!R}} %reelle Zahlen
\def\bbbm{{\rm I\!M}}
\def\bbbn{{\rm I\!N}} %natuerliche Zahlen
\def\bbbf{{\rm I\!F}}
\def\bbbh{{\rm I\!H}}
\def\bbbk{{\rm I\!K}}
\def\bbbp{{\rm I\!P}}
\def\bbbone{{\mathchoice {\rm 1\mskip-4mu l} {\rm 1\mskip-4mu l}
{\rm 1\mskip-4.5mu l} {\rm 1\mskip-5mu l}}}
\def\bbbc{{\mathchoice {\setbox0=\hbox{$\displaystyle\rm C$}\hbox{\hbox
to0pt{\kern0.4\wd0\vrule height0.9\ht0\hss}\box0}}
{\setbox0=\hbox{$\textstyle\rm C$}\hbox{\hbox
to0pt{\kern0.4\wd0\vrule height0.9\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptstyle\rm C$}\hbox{\hbox
to0pt{\kern0.4\wd0\vrule height0.9\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptscriptstyle\rm C$}\hbox{\hbox
to0pt{\kern0.4\wd0\vrule height0.9\ht0\hss}\box0}}}}
\def\bbbq{{\mathchoice {\setbox0=\hbox{$\displaystyle\rm
Q$}\hbox{\raise
0.15\ht0\hbox to0pt{\kern0.4\wd0\vrule height0.8\ht0\hss}\box0}}
{\setbox0=\hbox{$\textstyle\rm Q$}\hbox{\raise
0.15\ht0\hbox to0pt{\kern0.4\wd0\vrule height0.8\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptstyle\rm Q$}\hbox{\raise
0.15\ht0\hbox to0pt{\kern0.4\wd0\vrule height0.7\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptscriptstyle\rm Q$}\hbox{\raise
0.15\ht0\hbox to0pt{\kern0.4\wd0\vrule height0.7\ht0\hss}\box0}}}}
\def\bbbt{{\mathchoice {\setbox0=\hbox{$\displaystyle\rm
T$}\hbox{\hbox to0pt{\kern0.3\wd0\vrule height0.9\ht0\hss}\box0}}
{\setbox0=\hbox{$\textstyle\rm T$}\hbox{\hbox
to0pt{\kern0.3\wd0\vrule height0.9\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptstyle\rm T$}\hbox{\hbox
to0pt{\kern0.3\wd0\vrule height0.9\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptscriptstyle\rm T$}\hbox{\hbox
to0pt{\kern0.3\wd0\vrule height0.9\ht0\hss}\box0}}}}
%
\def\bbbs{{\mathchoice
{\setbox0=\hbox{$\displaystyle     \rm S$}\hbox{\raise0.5\ht0\hbox
to0pt{\kern0.35\wd0\vrule height0.45\ht0\hss}\hbox
to0pt{\kern0.55\wd0\vrule height0.5\ht0\hss}\box0}}
{\setbox0=\hbox{$\textstyle        \rm S$}\hbox{\raise0.5\ht0\hbox
to0pt{\kern0.35\wd0\vrule height0.45\ht0\hss}\hbox
to0pt{\kern0.55\wd0\vrule height0.5\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptstyle      \rm S$}\hbox{\raise0.5\ht0\hbox
to0pt{\kern0.35\wd0\vrule height0.45\ht0\hss}\raise0.05\ht0\hbox
to0pt{\kern0.5\wd0\vrule height0.45\ht0\hss}\box0}}
{\setbox0=\hbox{$\scriptscriptstyle\rm S$}\hbox{\raise0.5\ht0\hbox
to0pt{\kern0.4\wd0\vrule height0.45\ht0\hss}\raise0.05\ht0\hbox
to0pt{\kern0.55\wd0\vrule height0.45\ht0\hss}\box0}}}}
\def\bbbz{{\mathchoice {\hbox{$\textstyle\sf Z\kern-0.4em Z$}}
{\hbox{$\textstyle\sf Z\kern-0.4em Z$}}
{\hbox{$\scriptstyle\sf Z\kern-0.3em Z$}}
{\hbox{$\scriptscriptstyle\sf Z\kern-0.2em Z$}}}}
\let\ts\,
%
\setlength\arraycolsep{1.4\p@}
\setlength\tabcolsep{1.4\p@}
\setlength\arrayrulewidth{.4\p@}
\doublerulesep
2pt
\tabbingsep \labelsep

\skip\@mpfootins = \skip\footins
\fboxsep = 3pt \fboxrule = .4pt


\def\tableofcontents{\chapter*{\contentsname\@mkboth{{\contentsname}}%
                                                    {{\contentsname}}}
 \def\authcount##1{\setcounter{auco}{##1}\setcounter{@auth}{1}}
 \def\lastand{\ifnum\value{auco}=2\relax
                 \unskip{} \andname\
              \else
                 \unskip \lastandname\
              \fi}%
 \def\and{\stepcounter{@auth}\relax
          \ifnum\value{@auth}=\value{auco}%
             \lastand
          \else
             \unskip,
          \fi}%
 \@starttoc{toc}\if@restonecol\twocolumn\fi}


\def\@dotsep{2}

\def\addnumcontentsmark#1#2#3{%
\addtocontents{#1}{\protect\contentsline{#2}{\protect\numberline
                                    {\thechapter}#3}{\thepage}}}
\def\addcontentsmark#1#2#3{%
\addtocontents{#1}{\protect\contentsline{#2}{#3}{\thepage}}}
\def\addcontentsmarkwop#1#2#3{%
\addtocontents{#1}{\protect\contentsline{#2}{#3}{0}}}

\def\@adcmk[#1]{\ifcase #1 \or
\def\@gtempa{\addnumcontentsmark}%
  \or    \def\@gtempa{\addcontentsmark}%
  \or    \def\@gtempa{\addcontentsmarkwop}%
  \fi\@gtempa{toc}{chapter}}
\def\addtocmark{\@ifnextchar[{\@adcmk}{\@adcmk[3]}}

\def\l@chapter#1#2{\addpenalty{-\@highpenalty}
 \vskip 1.0em plus 1pt \@tempdima 1.5em \begingroup
 \parindent \z@ \rightskip \@pnumwidth
 \parfillskip -\@pnumwidth
 \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip
 {\large\bfseries\boldmath#1}\ifx0#2\hfil\null
 \else
      \nobreak
      \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern
      \@dotsep mu$}\hfill
      \nobreak\hbox to\@pnumwidth{\hss #2}%
 \fi\par
 \penalty\@highpenalty \endgroup}

\def\l@title#1#2{\addpenalty{-\@highpenalty}
 \addvspace{8pt plus 1pt}
 \@tempdima \z@
 \begingroup
 \parindent \z@ \rightskip \@tocrmarg
 \parfillskip -\@tocrmarg
 \leavevmode \advance\leftskip\@tempdima \hskip -\leftskip
 #1\nobreak
 \leaders\hbox{$\m@th \mkern \@dotsep mu.\mkern
 \@dotsep mu$}\hfill
 \nobreak\hbox to\@pnumwidth{\hss #2}\par
 \penalty\@highpenalty \endgroup}


\def\fps@figure{htbp}
\def\fnum@figure{\figurename\thefigure}
\def \@floatboxreset {%
        \reset@font
        \small
        \@setnobreak
        \@setminipage
}
\def\fps@table{htbp}
\def\fnum@table{\tablename\thetable}
\renewenvironment{table}
               {\setlength\abovecaptionskip{0\p@}%
                \setlength\belowcaptionskip{10\p@}%
                \@float{table}}
               {\end@float}
\renewenvironment{table*}
               {\setlength\abovecaptionskip{0\p@}%
                \setlength\belowcaptionskip{10\p@}%
                \@dblfloat{table}}
               {\end@dblfloat}

\long\def\@caption#1[#2]#3{\par\addcontentsline{\csname
  ext@#1\endcsname}{#1}{\protect\numberline{\csname
  the#1\endcsname}{\ignorespaces #2}}\begingroup
    \@parboxrestore
    \@makecaption{\csname fnum@#1\endcsname}{\ignorespaces #3}\par
  \endgroup}


\endinput