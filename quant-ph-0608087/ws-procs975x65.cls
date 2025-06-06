%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% For support please email: ykoh@wspc.com.sg (or) rajesh@wspc.com.sg
%% The content, structure, format and layout of this style file is the
%% property of World Scientific Publishing Co. Pte. Ltd.
%% Copyright 2006 by World Scientific Publishing Co.
%% All rights are reserved.
%%
%% Proceedings Trim Size: 9.75in x 6.5in
%% Text Area: 8in (include runningheads) x 5in
%% Main Text is 10/13pt
%% Last Modified: 7-7-05
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{ws-procs975x65}[1994/07/13 v1.2u Standard LaTeX document class]
\@twosidetrue\@mparswitchtrue\@twocolumnfalse
\newif\if@openright
\@openrighttrue
\newif\if@restonecol
%
\newif\if@draft
\newif\if@wssquare
%
\newdimen\draftrule
\draftrule=0pt
%
\DeclareOption{splissue}{\@splissuetrue}
\DeclareOption{draft}{\@drafttrue\setlength\overfullrule{5pt}\draftrule0.01pt}%
%
\hoffset=-0.09in
\voffset=-0.09in
%
\DeclareOption{square}{\@wssquaretrue}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
%
\ExecuteOptions{a4paper,10pt,twoside,onecolumn,final}
\ProcessOptions
%
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\newcommand\bibname{References}%
%
\newcommand\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
    \space\number\day, \number\year}
\newcount\minute
\newcount\hour
\def\currenttime{%
    \minute\time
    \hour\minute
    \divide\hour60
    \the\hour:\multiply\hour60\advance\minute-\hour\the\minute}
%
\newdimen\trimheight
\newdimen\trimwidth
\newdimen\typeheight
\newdimen\typewidth
\newdimen\tempdimen
\newdimen\tablewidth
\newdimen\normaltextheight
\newbox\tempbox
\newdimen\tablewd
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Fonts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\foliofont{\fontsize{8}{10}\selectfont}
\def\bibfont{\fontsize{9}{11}\selectfont}
\def\rhfont{\footnotesize\itshape{}}
\def\catchlinefont{\footnotesize}
\def\titlefont{\fontsize{10}{13}\bfseries\boldmath\selectfont\centering{}}
\def\authorfont{\footnotesize}
\def\abstractfont{\footnotesize}
\let\affiliationfont\rhfont
\def\datefont{\footnotesize}
\def\sectionfont{\bfseries\boldmath\rightskip2pc plus1fill{}}
\def\subsectionfont{\bfseries\boldmath\itshape\rightskip2pc plus1fill{}}
\def\subsubsectionfont{\itshape\rightskip2pc plus1fill{}}
\def\paragraphfont{\bfseries\boldmath}
\def\subparagraphfont{\itshape}
\def\figurecaptionfont{\footnotesize}
\def\tablefont{\footnotesize}
\def\tablecaptionfont{\footnotesize}
\def\foot{\small}
%
\renewcommand\normalsize{%
   \@setfontsize\normalsize\@xpt{13}%\@xiiipt    %%10/13pt
   \abovedisplayskip6\p@\@plus4\p@\@minus2\p@
   \abovedisplayshortskip\abovedisplayskip
   \belowdisplayshortskip\abovedisplayshortskip
   \belowdisplayskip\abovedisplayskip
   \let\@listi\@listI}
\normalsize
%
\newcommand\small{%
   \@setfontsize\small\@ixpt{11}%
   \abovedisplayskip 8\p@ \@plus3\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus2\p@
   \belowdisplayshortskip 4\p@ \@plus2\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 4\p@ \@plus2\p@ \@minus2\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
%
\newcommand\footnotesize{%
   \@setfontsize\footnotesize\@viiipt{10}%
   \abovedisplayskip 6\p@ \@plus2\p@ \@minus4\p@
   \abovedisplayshortskip \z@ \@plus\p@
   \belowdisplayshortskip 3\p@ \@plus\p@ \@minus2\p@
   \def\@listi{\leftmargin\leftmargini
               \topsep 3\p@ \@plus\p@ \@minus\p@
               \parsep 2\p@ \@plus\p@ \@minus\p@
               \itemsep \parsep}%
   \belowdisplayskip \abovedisplayskip}
%
\newcommand\scriptsize{\@setfontsize\scriptsize\@viipt\@viiipt}
\newcommand\tiny{\@setfontsize\tiny\@vpt\@vipt}
\newcommand\large{\@setfontsize\large\@xiipt{14}}%
\newcommand\Large{\@setfontsize\Large\@xivpt{16}}%%
\newcommand\LARGE{\@setfontsize\LARGE\@xviipt{22}}
\newcommand\huge{\@setfontsize\huge\@xxpt{25}}
\newcommand\Huge{\@setfontsize\Huge\@xxvpt{30}}
\setlength\smallskipamount{3\p@ \@plus 1\p@ \@minus 1\p@}
\setlength\medskipamount{6\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\bigskipamount{12\p@ \@plus 4\p@ \@minus 4\p@}
%
\DeclareOldFontCommand{\rm}{\rmfamily}{\mathrm}
\DeclareOldFontCommand{\sf}{\sffamily}{\mathsf}
\DeclareOldFontCommand{\tt}{\ttfamily}{\mathtt}
\DeclareOldFontCommand{\bf}{\bfseries}{\mathbf}
\DeclareOldFontCommand{\it}{\itshape}{\mathit}
\DeclareOldFontCommand{\sl}{\slshape}{\@nomath\sl}
\DeclareOldFontCommand{\sc}{\scshape}{\@nomath\sc}
\DeclareOldFontCommand{\bi}{\bfseries\itshape}{\bfseries\itshape}
\renewcommand{\rmdefault}{cmr}%
%
\DeclareMathSizes{28}{28}{25}{20}
\DeclareMathSizes{24}{24}{21}{18}
\DeclareMathSizes{22}{22}{19}{17}
\DeclareMathSizes{20}{20}{17}{15}
\DeclareMathSizes{18}{18}{15}{10}
\DeclareMathSizes{12}{11}{8}{5}
\DeclareMathSizes{11}{11}{8}{5}
\DeclareMathSizes{10}{10}{7}{5}
\DeclareMathSizes{9.5}{9}{7}{5}
\DeclareMathSizes{9}{9}{7}{5}
\DeclareMathSizes{8}{8}{6}{5}
\DeclareMathSizes{7}{7}{5}{5}
\DeclareMathSizes{6}{6}{5}{5}
\DeclareMathSizes{5}{5}{5}{5}
\def\bm#1{\mathchoice
    {\mbox{\boldmath$#1$}}%
          {\mbox{\boldmath$#1$}}%
          {\mbox{\boldmath$\scriptstyle#1$}}%
          {\mbox{\boldmath$\scriptscriptstyle#1$}}}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%Initializations %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newdimen\trimheight \trimheight9.75truein
\newdimen\trimwidth \trimwidth6.50truein
\newdimen\typeheight \typeheight8in
%
\setlength\parindent{15pt}
\setlength\headheight{5\p@}
\setlength\headsep   {.25in}
\setlength\topskip   {7\p@}
\setlength\footskip{10pt}
\setlength\maxdepth{4\p@}
\setlength\@maxdepth\maxdepth
\setlength\textwidth{5in}
\setlength\textheight\typeheight
\advance\textheight-\headheight
\advance\textheight-\headsep
\setlength\normaltextheight{\textheight}
\setlength\oddsidemargin{19mm}
\setlength\evensidemargin{\trimwidth}
\addtolength\evensidemargin{-\textwidth}
\addtolength\evensidemargin{-\oddsidemargin}
\setlength\marginparwidth{.75in}
\setlength\marginparsep{7\p@}
\setlength\marginparpush{5\p@}
\setlength\topmargin{0.54in}
\setlength\footnotesep{6\p@} %6pt
\setlength{\skip\footins}{18\p@ \@plus 5\p@ \@minus 2\p@}
\setlength\floatsep    {18\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\textfloatsep{18\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\intextsep   {18\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dblfloatsep    {18\p@ \@plus 2\p@ \@minus 2\p@}
\setlength\dbltextfloatsep{18\p@ \@plus 2\p@ \@minus 4\p@}
\setlength\@fptop{0\p@}
\setlength\@fpsep{8\p@ \@plus 2fil}
\setlength\@fpbot{0\p@ \@plus 1fil}
\setlength\@dblfptop{0\p@ \@plus 1fil}
\setlength\@dblfpsep{8\p@ \@plus 2fil}
\setlength\@dblfpbot{0\p@ \@plus 1fil}
\setlength\partopsep{0\p@}
%
\setlength\lineskip{1\p@}
\setlength\normallineskip{1\p@}%
\renewcommand\baselinestretch{}%{}
\setlength\parskip{0\p@}
\@lowpenalty   51
\@medpenalty  151
\@highpenalty 301
\@beginparpenalty -\@lowpenalty
\@endparpenalty   -\@lowpenalty
\@itempenalty     -\@lowpenalty
%
\newenvironment{contents}{%
    \cleardoublepage
    \vspace*{0.92in}
    {\centering{
    {\bf {\uppercase{Contents}}\par}\par}}
    \vskip 0.05in             %VSPACE BEFORE CONTENT TEXT
    \vskip -3pt
    \normalsize
}{\par\vfill\pagebreak\par}%
%
\newcommand\mastertoc{%
    \cleardoublepage
    \title{CONTENTS}
    \normalsize
    \@starttoc{toc}%
    \par\vfill\pagebreak\par
    \pagenumbering{arabic}
    \setcounter{page}{1}}
%
\newenvironment{titlepages}{%
    \thispagestyle{plain}
    \renewcommand\thepage{\roman{page}}
    \par\ \par
    \vspace*{2.76in}
     \begin{flushleft}
     \Large
     {\bfseries Proceedings Trim Size: 9.75in x 6.5in \\
     Text Area: 8in (include runningheads) x 5in \\
     Main Text is 10/13pt} \\[29pt]
     {\large For Half-Title Page (prepared by publisher)}
    \end{flushleft}
    \vfill
    \pagebreak\par
    \thispagestyle{plain}
    \ \par
    \vspace*{2.5in}
    {\begin{center}\large Publishers' page --- (Blank page)\end{center} }\par
    \vfill
    \pagebreak\par
    \thispagestyle{plain}
    \ \par
    \vspace*{2.5in}
    {\begin{center}\large For Full Title Page (prepared by publisher)
    \end{center} }\par
    \vfill
    \pagebreak
    \vspace*{2.5in}
    {\begin{center}\large For Copyright Page (prepared by publisher)
    \end{center} }\par
    \vfill
    \pagebreak\par}{\par}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Part %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\CNfont{\large\bfseries}
\def\CTfont{\Large\bfseries\boldmath{}}
\newcounter{part}
\renewcommand\thepart{\Alph{part}}
\newcommand\part{\cleardoublepage
                 \renewcommand\thepage{\arabic{page}}
                 \thispagestyle{pblind}%
                 \global\@topnum\z@
                 \@afterindentfalse
                 \secdef\@part\@spart}
%
\def\@part[#1]#2#3{%
 {\vspace*{3pc}
  \vbox{\parindent\z@ \reset@font
         \refstepcounter{part}
%    \addcontentsline{toc}{part}{#2}
    \addcontentsline{toc}{part}{Part~\thepart\quad #1}
         \vskip 1.4in
         {\centering{\CNfont PART \thepart}
         \par
         \vskip 12\p@
    \vbox{\CTfont #1}\par}
    \vskip 106\p@
    \vbox{\noindent #3}\par
    \nobreak}}
  \@endpart}
%
\def\@spart#1{%
    {\PTfont #1\par}%
    \@endpart}
%
\def\@endpart{\vfil\newpage
              \if@twoside
                \hbox{}%
                \thispagestyle{pblind}%
                \newpage
              \fi}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%Title %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\@clinebuf{}
%
\def\title#1{
    \setcounter{section}{0}
    \setcounter{subsection}{0}
    \setcounter{subsubsection}{0}
    \setcounter{footnote}{0}
    \setcounter{table}{0}
    \setcounter{figure}{0}
    \setcounter{equation}{0}
    \setcounter{appendixc}{0}
    \@addtoreset{theorem}{section}
    \renewcommand{\thelemma}{\thesection.\arabic{lemma}}
    \renewcommand{\thetheorem}{\thesection.\arabic{theorem}}
    \renewcommand{\thedefinition}{\thesection.\arabic{definition}}
    \renewcommand{\thecorollary}{\thesection.\arabic{corollary}}
    \renewcommand\theequation{\arabic{equation}}
    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
    \long\def\@makefntext##1{\noindent
    \@textsuperscript{\normalfont\@thefnmark}{{##1}}}%
   %\cleardoublepage %to start a new paper in odd page
    \thispagestyle{plain}\@thanks
    \vspace*{-14pt}
    \vskip 79pt
    \@clinebuf
    {\centering{\titlefont #1\par}}%
    \vskip 1em
}
\def\subtitle#1{\titlefont :~{{#1}}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Title %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
\newcounter{ptitl}
\def\@empty{}

\def\wstoc#1#2{\refstepcounter{ptitl}
    \addtocontents{toc}
    {\protect\contentsline{chapter}
        \protect{\noindent#1}{\thepage}
    }
    \ifx#2\@empty\else
    \addcontentsline{toc}{authors}{\noindent#2}\fi
    }
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Local Definitions %%%%%%%%%%%%%%%%%%%%%%
%
\def\cdash{$^{\raisebox{-0.5pt}{\hbox{--}}}$}
\def\mtb{\fboxsep=0pt\fbox{\phantom{e}}}
\def\email#1{\it #1\par}
\def\http#1{\it http://#1\par}

\def\breakhere{\par\vskip-\lastskip
            \pagebreak}
\def\forcebreak{\vadjust{\pagebreak}}
%

\newcommand{\cal}{\protect\pcal}
\newcommand{\pcal}{\@fontswitch{\relax}{\mathcal}}
%
\def\author#1{\par
    {\centering{\authorfont#1}\par\vspace*{0.05in}}
}

\def\address#1{\par
    {\centering{\affiliationfont#1\par}}\par\vspace*{11pt}
}
%
\newenvironment{abstract}{\par%
    \vspace*{6pt}
    \abstractfont
    \noindent\leftskip18pt\rightskip18pt
}{%
  \par}
%
\def\keywords#1{\par
    \vspace*{8pt}
    {\authorfont{\leftskip18pt\rightskip\leftskip
    \noindent{\it Keywords}\/:\ #1\par}}\vskip-12pt}
%
\def\category#1#2{\par
    \vspace*{8pt}
    {\authorfont{\leftskip18pt\rightskip\leftskip
    \noindent{\it Categories}\/:\ #1:\ #2\par}}\par}
%
\newif\if@cghi
\def\cite{\@cghitrue\@ifnextchar [{\@tempswatrue
    \@citex}{\@tempswafalse\@citex[]}}
\def\citelow{\@cghifalse\@ifnextchar [{\@tempswatrue
    \@citex}{\@tempswafalse\@citex[]}}
\def\@cite#1#2{{$^{#1}$\if@tempswa\typeout
    {WSPC warning: optional citation argument
    ignored: `#2'} \fi}}
\newcommand{\citeup}{\cite}
%
\newcount\@tempcntc
\def\@citex[#1]#2{\if@filesw\immediate\write\@auxout{\string\citation{#2}}\fi
 \@tempcnta\z@\@tempcntb\m@ne\def\@citea{}\@cite{\@for\@citeb:=#2\do
  {\@ifundefined
   {b@\@citeb}{\@citeo\@tempcntb\m@ne\@citea\def\@citea{,}%
     {\mbox{\bfseries ?}}\@warning
   {Citation `\@citeb' on page \thepage \space undefined}}%
  {\setbox\z@\hbox{\global\@tempcntc0\csname b@\@citeb\endcsname\relax}%
   \ifnum\@tempcntc=\z@ \@citeo\@tempcntb\m@ne
    \@citea\def\@citea{;\ }\hbox{\csname b@\@citeb\endcsname}%
   \else
    \advance\@tempcntb\@ne
    \ifnum\@tempcntb=\@tempcntc
    \else\advance\@tempcntb\m@ne\@citeo
    \@tempcnta\@tempcntc\@tempcntb\@tempcntc\fi\fi}}\@citeo}{#1}}
\def\@citeo{\ifnum\@tempcnta>\@tempcntb\else\@citea\def\@citea{,}%
 \ifnum\@tempcnta=\@tempcntb\the\@tempcnta\else
  {\advance\@tempcnta\@ne\ifnum\@tempcnta=\@tempcntb \else \def\@citea{\mbox{--\/}}\fi
   \advance\@tempcnta\m@ne\the\@tempcnta\@citea\the\@tempcntb}\fi\fi}
\def\@refcitex[#1]#2{\if@filesw\immediate\write\@auxout
    {\string\citation{#2}}\fi
\def\@citea{}\@refcite{\@for\@citeb:=#2\do
    {\@citea\def\@citea{, }\@ifundefined
    {b@\@citeb}{{\bf ?}\@warning
    {Citation `\@citeb' on page \thepage \space undefined}}
    \hbox{\csname b@\@citeb\endcsname}}}{#1}}
 \def\@refcite#1#2{{#1\if@tempswa\typeout
        {WSPC warning: optional citation argument
    ignored: `#2'} \fi}}
 \def\refcite{\@ifnextchar[{\@tempswatrue
    \@refcitex}{\@tempswafalse\@refcitex[]}}
%%%%%%%%%%%%%%%%%%%%%%%% Table of Contents %%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Lists %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\@listI{\leftmargin\leftmargini
            \listparindent\itemindent
            \parsep \z@\labelsep.5em
            \topsep 6.5\p@ \@plus3\p@% \@minus2\p@
            \itemsep0\p@}
%
\let\@listi\@listI
\@listi
%
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \topsep    3.5\p@ \@plus2\p@ \@minus\p@
              \parsep    \z@
              \itemsep\z@}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \topsep 3.5\p@ \@plus\p@\@minus\p@
              \parsep \z@
             % \partopsep \p@ \@plus\z@ \@minus\p@
              \itemsep0\p@}%
\def\@listiv {\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep}
\def\@listv  {\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep}
\def\@listvi {\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep}
%
\setlength\leftmargini{3pc}
\setlength\leftmarginii{2.2em}
\setlength\leftmarginiii{1.87em}
\setlength\leftmarginiv{1.7em}
\setlength\leftmarginv{1em}
\setlength\leftmarginvi{1em}
\setlength\leftmargin{\leftmargini}
\setlength\listparindent{\parindent}
\setlength\labelsep{.5em}
\setlength\labelwidth{\leftmargini}
\addtolength\labelwidth{-\labelsep}
\renewcommand\theenumi{\arabic{enumi}}
\renewcommand\theenumii{\alph{enumii}}
\renewcommand\theenumiii{\roman{enumiii}}
\renewcommand\theenumiv{\Alph{enumiv}}
\newcommand\labelenumi{(\theenumi)}
\newcommand\labelenumii{(\theenumii)}
\newcommand\labelenumiii{\theenumiii.}
\newcommand\labelenumiv{\theenumiv.}
\renewcommand\p@enumii{\theenumi}
\renewcommand\p@enumiii{\theenumi(\theenumii)}
\renewcommand\p@enumiv{\p@enumiii\theenumiii}
\newcommand\labelitemi{$\m@th\bullet$}
\newcommand\labelitemii{\normalfont\bfseries --}
\newcommand\labelitemiii{$\m@th\ast$}
\newcommand\labelitemiv{$\m@th\cdot$}
%
\def\enummax#1{\setbox\tempbox=\hbox{#1\hskip\labelsep}%
  \expandafter\global\csname leftmargin\romannumeral\the\@enumdepth\endcsname\wd\tempbox}
%
\def\enumerate{\@ifnextchar[{\@enumerate}{\@enumerate[\csname label\@enumctr\endcsname]}}
%
\def\@enumerate[#1]{\ifnum \@enumdepth >3 \@toodeep\else
      \advance\@enumdepth \@ne\edef\@enumctr{enum\romannumeral\the\@enumdepth}%
      \enummax{#1}\list
      {\csname label\@enumctr\endcsname}{\usecounter
        {\@enumctr}\def\makelabel##1{\hss\llap{##1}}}\fi}
%
\let\Item\item
\newenvironment{enumeroman}{%
  \def\theenumi{\roman{enumi}}\def\theenumii{\alph{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
        \let\item\Item
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{alphlist}{%
  \def\theenumi{\alph{enumi}}\def\theenumii{\alph{enumii}}%
  \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
        \let\item\Item
  \begin{enumerate}%
}{%
  \end{enumerate}}
%
\newenvironment{arabiclist}{%
    \def\theenumi{\arabic{enumi}}\def\theenumii{\alph{enumii}}
    \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
    \let\item\Item
    \begin{enumerate}
    }{%
    \end{enumerate}}
%
\newenvironment{romanlist}{%
    \def\theenumi{\roman{enumi}}\def\theenumii{\alph{enumii}}
    \def\labelenumi{(\theenumi)}\def\labelenumii{(\theenumii)}%
    \let\item\Item
    \begin{enumerate}
    }{%
    \end{enumerate}}
%
\newenvironment{itemlist}{%
    \def\labelenumi{\labelitemi}
    \let\item\Item
    \begin{enumerate}
    }{%
    \end{enumerate}}
%
\newenvironment{description}
               {\list{}{\labelwidth\z@ \itemindent-\leftmargin
                        \let\makelabel\descriptionlabel}}
               {\endlist}
\newcommand*\descriptionlabel[1]{\hspace\labelsep
                                \normalfont\bfseries #1}
%
\newenvironment{unnumlist}{%
    \let\item\Item
    \leftmargini2pc
    \ifnum \@enumdepth >3 \@toodeep\else
        \advance\@enumdepth \@ne
        \list{}{\itemindent-2pc\topsep6pt
              \def\makelabel##1{\hss\llap{##1}}}%
   \fi
}{%
  \endlist}
%
\newenvironment{quote}
               {\list{}{\rightmargin18pt\leftmargin18pt}%
                \item[]}
               {\endlist}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Sections %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setcounter{secnumdepth}{3}
\newcounter {section}
\newcounter {subsection}[section]
\newcounter {subsubsection}[subsection]
\newcounter {paragraph}[subsubsection]
\newcounter {subparagraph}[paragraph]
\renewcommand\thesection      {\arabic{section}}
\renewcommand\thesubsection   {\thesection.\arabic{subsection}}
\renewcommand\thesubsubsection{\thesubsection.\arabic{subsubsection}}
\renewcommand\theparagraph    {\thesubsubsection.\arabic{paragraph}}
\renewcommand\thesubparagraph {\theparagraph.\arabic{subparagraph}}
%
\newcommand\section{\@startsection{section}{1}{\z@}{-18pt \@plus-3pt minus-6pt}{5pt}{\sectionfont}}
\newcommand\subsection{\@startsection{subsection}{2}{\z@}{-18pt \@plus-3pt minus-6pt}{5pt}{\subsectionfont}}
\newcommand\subsubsection{\@startsection{subsubsection}{3}{\z@}{-18pt \@plus-3pt minus-3pt}{5pt}{\subsubsectionfont}}
\newcommand\paragraph{\@startsection{paragraph}{4}{\z@}{12pt \@plus -3pt}{-.5em}{\paragraphfont}}
\newcommand\subparagraph{\@startsection{subparagraph}{5}{\parindent}{3.25ex \@plus1ex}{-1em}{\subparagraphfont}}
%
\def\@seccntformat#1{{\upshape{\csname the#1\endcsname.}}\hskip .5em}
%
\def\body{
\setcounter{footnote}{0}
\def\thefootnote{\alph{footnote}}
\def\@makefnmark{{$^{\rm \@thefnmark}$}}
}
\def\bodymatter{\body}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Floats %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setcounter{topnumber}{3}
\def\topfraction{.98}
\setcounter{bottomnumber}{3}
\def\bottomfraction{.98}
\setcounter{totalnumber}{6}%4
\def\textfraction{.01}
\def\floatpagefraction{.98100}
\setcounter{dbltopnumber}{2}
\def\dbltopfraction{.981}
\def\dblfloatpagefraction{.99}
%
%
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{6\p@}% plus3pt minus3pt}
\setlength\belowcaptionskip{-1\p@}
%
\def\FigName{figure}%
%
\InputIfFileExists{psfig.sty}{\typeout{^^Jpsfig.sty inputed...ok}}{\typeout{^^JWarning: psfig.sty could be be found.^^J}}
\InputIfFileExists{epsfsafe.tex}{\typeout{^^Jepsfsafe.tex inputed...ok}}
            {\typeout{^^JWarning: epsfsafe.tex could not be found.^^J}}
\InputIfFileExists{epsfig.sty}{\typeout{^^Jepsfig.sty inputed...ok}}{\typeout{^^JWarning: epsfig.sty could not be found.^^J}}
\InputIfFileExists{epsf.sty}{\typeout{^^Jepsf.sty inputed...ok}}{\typeout{^^JWarning: epsf.sty could not be found.^^J}}%
%
\newbox\captionbox
%
\long\def\@makecaption#1#2{%
  \ifx\FigName\@captype
        \vskip\abovecaptionskip
    \setbox\captionbox\hbox{%
    {\figurecaptionfont#1.\unskip\ignorespaces\hskip1em#2\par}}
    \ifdim\wd\captionbox>\hsize
    {\figurecaptionfont#1.\unskip\ignorespaces\hskip1em#2\par}\par
    \else
    \centerline{\figurecaptionfont#1.\unskip\ignorespaces\hskip1em#2}\par
    \fi\else\global\setbox\captionbox\hbox{%
    {\tablecaptionfont#1.\ignorespaces\hskip1em#2\par}}
    \fi
}
%
\def\figurename{Fig.}
\newcounter{figure}
\renewcommand\thefigure{\@arabic\c@figure}
\def\fps@figure{htbp}
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename~\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
%
\def\ArtDir{\jobname/}
\def\figurebox#1#2#3{%
        \def\arg{#3}%
        \ifx\arg\empty
        {\hfill\vbox{\hsize#2\hrule\hbox to #2{%
                \vrule\hfill\vbox to #1{\hsize#2\vfill}\vrule}\hrule}\hfill}%
        \else
        \hbox to \hsize{\hfill\epsfbox{\ArtDir#3.eps}\hfill}
        \fi}
%
\def\PSFIG#1#2#3{\par
  {\hbox to \hsize{%
    \hfill{\psfig{file=\ArtDir#1.eps,width=#2,angle=#3}}\hfill}\par}}%
%
\newcounter{table}
\def\tablename{Table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{htbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename~\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
%
\long\def\tbl#1#2{%
    \parindent\z@\ignorespaces\noindent\tablecaptionfont
    \caption{#1}%
    \par\setbox\tempbox\hbox{\tablefont #2}%
    \tablewd\hsize\advance\tablewd-\wd\tempbox\global\divide\tablewd\tw@
    \ifdim\wd\captionbox<\wd\tempbox\centerline{\unhbox\captionbox}
    \else\leftskip\tablewd\rightskip\leftskip{\unhbox\captionbox}\par
    \fi\vskip5pt\centerline{\box\tempbox}
}%
\long\def\ttbl#1#2#3{%
    \parindent\z@
    \noindent
    \tablecaptionfont
    \caption{#2}%
    \tablewd\hsize
    \advance\tablewd-#1
    \global\divide\tablewd\tw@
    \ifdim \wd\captionbox<#1
    \centerline{\unhbox\captionbox}
    \else
    {\leftskip\tablewd% plus1fill{}
    \rightskip\tablewd% plus1fill{}
    \unhbox\captionbox\par}
    \fi
    \vskip-8pt
    \centerline{#3}
}%
%
\newenvironment{InTextTable}{%
    \par\addvspace{16pt plus6pt minus6pt}%
    \begin{center}
    \tablecaptionfont\noindent\ignorespaces
}{%
    \end{center}
    \par\addvspace{17pt plus6pt minus6pt}}
%
\newenvironment{tabnote}{%
    \par\vskip5pt\footnotesize%
    \@ifnextchar[{\@tabnote}{\@tabnote[Note]}}{%
    \par\vskip-5pt}
\def\@tabnote[#1]{%
    \leftskip\tablewd\rightskip\leftskip {\it #1}\/:\ \ignorespaces}
%
\def\Hline{%
  \noalign{\ifnum0=`}\fi\hrule \@height 2\arrayrulewidth \futurelet
   \@tempa\@xhline}

\def\x{@{\extracolsep{\fill}}}
\def\toprule{\Hline\\[-6.5pt]}
\def\colrule{\\[-7pt]\hline\\[-6pt]}
\def\TMcolrule{\\[-9.5pt]\hline\\[-9.5pt]}
\def\botrule{\\[-7pt]\Hline}
\def\crule#1{\\[-7pt]#1\\[-6pt]}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Maths %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\setlength\arraycolsep{1.5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}

\renewcommand\theequation{\arabic{equation}}

%
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
%
\def\bstrut{\vrule width0pt depth5pt}
\def\tstrut{\vrule width0pt height10pt}
\jot=3pt
%

\def\refstepeqcnt{\refstepcounter{equation}}
\def\eqnnum{\displaywidth\linewidth\hbox{\@eqnnum}}
%
\def\@equation{\let\topsep\abovedisplayskip\@beginparpenalty\predisplaypenalty\@endparpenalty\postdisplaypenalty
     \refstepeqcnt
     \trivlist \item[]\leavevmode
       \hbox to\linewidth\bgroup\hfill $\m@th% $
       \displaystyle}%
\def\end@equation{$\hfill\eqnnum\egroup\endtrivlist}
%
\renewenvironment{eqnarray}{%
   \stepcounter{equation}%
   \def\@currentlabel{\p@equation\theequation}%
   \global\@eqnswtrue
   \m@th
   \global\@eqcnt\z@
   \tabskip\@centering
   \let\\\@eqncr
   $$\everycr{}\halign to\displaywidth\bgroup
       \hskip\@centering$\displaystyle\tabskip\z@skip{##}$\@eqnsel
      &\global\@eqcnt\@ne\hskip \tw@\arraycolsep \hfil${##}$\hfil
      &\global\@eqcnt\tw@ \hskip \tw@\arraycolsep
         $\displaystyle{##}$\hfil\tabskip\@centering
      &\global\@eqcnt\thr@@ \hb@xt@\z@\bgroup\hss##\egroup
         \tabskip\z@skip
      \cr}
        {%
      \@@eqncr
      \egroup
      \global\advance\c@equation\m@ne
   $$\global\@ignoretrue
}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Footnote %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\renewcommand\footnoterule{%
  \kern-3\p@
%  \hrule depth0pt height0pt \@width.2\columnwidth
  \hrule width .4\columnwidth
  \kern2.6\p@}
\newcommand\@makefntext[1]{%
    \parindent 1em%
    \noindent
     \@makefnmark#1}
%
\def\@fnsymbol#1{\ensuremath{\ifcase#1\or *\or \dagger\or \ddagger\or
    \mathchar "278\or \mathchar "27B\or \|\or **\or \dagger\dagger
    \or \ddagger\ddagger \else\@ctrerr\fi}}
%
\def\thefootnote{\alph{footnote}}
\def\@makefnmark{{$^{\rm \@thefnmark}$}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Page Style %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\mark{{}{}}
%
\def\ps@plain{%
     \let\@mkboth\@gobbletwo
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
    \def\@evenhead{\rhfont{\upshape{\thepage}}\hfill}%
    \def\@oddhead{\hfill\rhfont{\upshape{\thepage}}}}%
%
\def\RightMark{}
%
\def\ps@headings{%
    \let\@oddfoot\@empty
    \let\@evenfoot\@empty
    \def\@evenhead{\rhfont{\upshape{\thepage}}\hskip1em\leftmark\hfill}%
    \def\@oddhead{\hfill\rhfont\rightmark\hskip1em{\upshape{\thepage}}}%
    \let\@mkboth\markboth
    \def\authormark##1{\markboth{##1}{\RightMark}}%
    \def\chaptermark##1{\gdef\RightMark{##1}\markright{##1}}}%
    %\def\sectionmark##1{\gdef\RightMark{##1}\markright{##1}}}%
%
\def\ps@myheadings{%
    \let\@oddfoot\@empty\let\@evenfoot\@empty
    \def\@evenhead{\rlap{\foliofont \thepage}\hfill{\rhfont\leftmark}\hfill}%
    \def\@oddhead{\hfill{\rhfont\rightmark}\hfill{\foliofont\thepage}}%
    \let\@mkboth\@gobbletwo
    \let\chaptermark\@gobble
    \let\sectionmark\@gobble}
%
\def\ps@pblind{%
    \let\@mkboth\@gobbletwo
    \def\@evenhead{}%
    \def\@oddhead{}
    \def\@oddfoot{\hfill\mbox{\lower8pc\hbox{}}\hfill}
   \let\@evenfoot\@oddfoot}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%% Index Shortcuts %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\aindx#1{\index{author}{#1}}    %For Author index
\def\sindx#1{\index{subject}{#1}}   %For Subject index
\def\gindx#1{\index{general}{#1}}   %For General index
%
%%%%%%%%%%%%%%%%%%%%%%%% THEOREM ENVIRONMENTS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\@xthm#1#2{\@begintheorem{#2}{\csname the#1\endcsname}{}\ignorespaces}
\def\@ythm#1#2[#3]{\@opargbegintheorem{#2}{\csname the#1\endcsname}{#3}\ignorespaces}
\def\@opargbegintheorem#1#2#3{\trivlist
      \item[\hskip \labelsep{\bfseries #1\ #2\ (#3).}]\itshape}
%
\let\Casefont\upshape%
\let\Commentfont\upshape%
\let\Conditionfont\upshape
\let\Conventionfont\upshape
\let\Criterionfont\upshape
\let\Definitionfont\upshape%
\let\Questionfont\upshape
\let\Notationfont\upshape
\let\Notefont\upshape
\let\Remarkfont\upshape
\let\Examplefont\upshape
\let\Propfont\upshape
\let\Observationfont\upshape
\let\Solutionfont\upshape
\let\Stepfont\upshape
\let\Summaryfont\upshape
\let\Algorithmfont\itshape
\let\Answerfont\itshape
\let\Assertionfont\itshape
\let\Assumptionfont\itshape
\let\Claimfont\itshape
\let\Conjecturefont\itshape
\let\Corollaryfont\itshape
\let\Lemmafont\itshape
\let\Theoremfont\itshape
\let\Problemfont\itshape
\let\Propositionfont\itshape
%
\let\Algorithmheadfont\bfseries
\let\Answerheadfont\bfseries
\let\Assertionheadfont\bfseries
\let\Assumptionheadfont\bfseries
\let\Caseheadfont\bfseries
\let\Claimheadfont\bfseries
\let\Commentheadfont\bfseries
\let\Conditionheadfont\bfseries
\let\Conjectureheadfont\bfseries
\let\Conventionheadfont\bfseries
\let\Corollaryheadfont\bfseries
\let\Criterionheadfont\bfseries
\let\Definitionheadfont\bfseries
\let\Exampleheadfont\bfseries
\let\Lemmaheadfont\bfseries
\let\Notationheadfont\bfseries
\let\Noteheadfont\bfseries
\let\Observationheadfont\bfseries
\let\Problemheadfont\bfseries
\let\Propheadfont\bfseries
\let\Propositionheadfont\bfseries
\let\Questionheadfont\bfseries
\let\Remarkheadfont\bfseries
\let\Solutionheadfont\bfseries
\let\Stepheadfont\bfseries
\let\Summaryheadfont\bfseries
\let\Theoremheadfont\bfseries
%
\def\@begintheorem#1#2#3{\par\addvspace{8pt plus3pt minus2pt}%
              \noindent{\csname#1headfont\endcsname#1\ \ignorespaces#3 #2.}%
              \csname#1font\endcsname\hskip.5em\ignorespaces}
\def\@endtheorem{\par\addvspace{8pt plus3pt minus2pt}\@endparenv}
%
\newtheorem{algorithm}{Algorithm}[section]
%\newtheorem{answer}{Answer}[section]
\newtheorem{assertion}{Assertion}[section]
\newtheorem{assumption}{Assumption}[section]
%\newtheorem{case}{Case}[section]
\newtheorem{claim}{Claim}[section]
%\newtheorem{comment}{Comment}[section]
\newtheorem{condition}{Condition}[section]
\newtheorem{conjecture}{Conjecture}[section]
\newtheorem{convention}{Convention}[section]
\newtheorem{corollary}{Corollary}[section]
\newtheorem{criterion}{Criterion}[section]
\newtheorem{definition}{Definition}[section]
\newtheorem{example}{Example}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{notation}{Notation}[section]
%\newtheorem{note}{Note}[section]
\newtheorem{observation}{Observation}[section]
\newtheorem{problem}{Problem}[section]
\newtheorem{prop}{Prop}[section]
\newtheorem{proposition}{Proposition}[section]
\newtheorem{question}{Question}[section]
\newtheorem{remark}{Remark}[section]
%\newtheorem{solution}{Solution}[section]
%\newtheorem{step}{Step}
%\newtheorem{summary}{Summary}[section]
\newtheorem{theorem}{Theorem}[section]
%
\newenvironment{answer}[1][Answer]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newenvironment{case}[1][Case]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newenvironment{comment}[1][Comment]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newenvironment{note}[1][Note]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newenvironment{solution}[1][Solution]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newenvironment{step}[1][Step]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newenvironment{summary}[1][Summary]{\begin{trivlist}
\item[\hskip \labelsep {\bfseries #1.}]}{\end{trivlist}}
%
\newif\iflogo
\def\prbox{\par
    \vskip-\lastskip\vskip-\baselineskip\hbox to \hsize{\hfill\fboxsep0pt\fbox{\phantom{\vrule width5pt height5pt depth0pt}}}\global\logofalse}
%
\newenvironment{proof}{%
    \par\addvspace{12pt plus3pt minus3pt}
   \global\logotrue
   \@ifnextchar[{\@proof}{\@proof[Proof]}%
   }{%
    \par\iflogo\vskip-\lastskip
    \vskip-\baselineskip\prbox\par
    \addvspace{12pt plus3pt minus3pt}\fi}
%
\def\@proof[#1]{\noindent{\normalfont\bfseries#1.}\hskip.5em\ignorespaces}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% CITATIONS %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcommand{\eref}[1]{Eq.~(\ref{#1})}
\newcommand{\sref}[1]{Sec.~\ref{#1}}
\newcommand{\cref}[1]{Chap.~\ref{#1}}
\newcommand{\fref}[1]{Fig.~\ref{#1}}
\newcommand{\tref}[1]{Table~\ref{#1}}
\newcommand{\Eref}[1]{Equation (\ref{#1})}
\newcommand{\Sref}[1]{Section~\ref{#1}}
\newcommand{\Cref}[1]{Chapter~\ref{#1}}
\newcommand{\Fref}[1]{Figure~\ref{#1}}
\newcommand{\Tref}[1]{Table~\ref{#1}}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Bibliography %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newdimen\bibindent
\bibindent=2em
\def\@biblabel#1{#1.}
\newenvironment{thebibliography}[1]
     {\section*{\bibname}\bibfont%
      \list{\@biblabel{\arabic{enumiv}}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
        \labelsep6pt%.33em
            \advance\leftmargin\labelsep
        \itemsep0pt\parsep0pt
            \usecounter{enumiv}%
            \renewcommand\theenumiv{\arabic{enumiv}}}%
      \sloppy\clubpenalty4000\widowpenalty4000%
      \sfcode`\.=\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\newcommand\newblock{}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\newcounter{appendixc}
\newcounter{subappendixc}[appendixc]
\newcounter{subsubappendixc}[subappendixc]
\renewcommand{\theappendixc}{\Alph{appendixc}}
\renewcommand{\thesubappendixc}{\Alph{appendixc}.\arabic{subappendixc}}
\renewcommand{\thesubsubappendixc}
   {\Alph{appendixc}.\arabic{subappendixc}.\arabic{subsubappendixc}}

\newcommand{\appendix}[1]{
       \vspace{14pt}
       \refstepcounter{appendixc}
       \setcounter{figure}{0}
       \setcounter{table}{0}
       \setcounter{lemma}{0}
       \setcounter{theorem}{0}
       \setcounter{corollary}{0}
       \setcounter{definition}{0}
       \setcounter{equation}{0}
       \renewcommand{\thefigure}{\Alph{appendixc}\arabic{figure}}
       \renewcommand{\thetable}{\Alph{appendixc}\arabic{table}}
       \renewcommand{\theappendixc}{\Alph{appendixc}}
       \renewcommand{\thelemma}{\Alph{appendixc}.\arabic{lemma}}
       \renewcommand{\thetheorem}{\Alph{appendixc}.\arabic{theorem}}
       \renewcommand{\thedefinition}{\Alph{appendixc}.\arabic{definition}}
       \renewcommand{\thecorollary}{\Alph{appendixc}.\arabic{corollary}}
       \renewcommand{\theequation}{\Alph{appendixc}.\arabic{equation}}
       \noindent{\sectionfont\appendixname~\theappendixc.{~\boldmath~#1}}
       \par\vspace{5pt}\@afterheading}

\newcommand{\subappendix}[1]{\vspace{14pt}
       \refstepcounter{subappendixc}
       \noindent{\sectionfont\appendixname~\thesubappendixc.~{~\bfseries\boldmath\itshape #1}}
       \par\vspace{8pt}\@afterheading}

\newcommand{\subsubappendix}[1]{\vspace{14pt}
       \refstepcounter{subsubappendixc}
       \noindent{\appendixname~\thesubsubappendixc.~{~\subsubsectionfont #1}}
       \par\vspace{8pt}\@afterheading}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End Appendix %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\bib{B\kern-.05em{I}\kern-.025em{B}\kern-.08em}
\def\btex{B\kern-.05em{I}\kern-.025em{B}\kern-.08em\TeX}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Trim Marks %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\def\draftnote{\hbox to \trimwidth{\scriptsize\sf\ \today
\quad\currenttime\hfil WSPC - Proceedings Trim Size: 9.75in x 6.5in
\quad\jobname\hfil}}%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Crop Mark %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\def\cropmarks{\nointerlineskip%
     \vbox to 0pt{\vskip-8.6pt
    \parindent0pt\hspace*{6pt}\draftnote
     \par\advance\trimheight by 2pc
     \vbox to \trimheight{\offinterlineskip\parindent0pt\vskip-2pc
     \hbox to \trimwidth{\raise2.6pc\hbox{\vrule height2pc width0.3pt}\raisebox{2pc}
   {\hspace*{-2.6pc}\vrule width2pc height0.3pt}\hfill\raisebox{2pc}
   {\vrule width2pc height0.3pt}\hspace*{-2.6pc}\raise2.6pc\hbox{\vrule height2pc width0.3pt}}\vfill
     \hbox to \trimwidth{\lower1.2pc\hbox{\vrule height2pc width0.3pt}\raisebox{1.4pc}
        {\hspace*{-2.6pc}\vrule width2pc height0.3pt}\hfill
    \lower1.2pc\hbox{\vrule height2pc width0.3pt}\rlap{\hspace*{0.6pc}\raisebox{1.4pc}{\vrule width2pc height0.3pt}}}}}
     \vbox to 0pt{\offinterlineskip\parindent0pt\vskip\topmargin%\vskip1.3pt
     \tempdimen\normaltextheight
     \advance\tempdimen24pt
     \moveright\@themargin
     \vbox to \tempdimen{\hrule height\draftrule
     \vbox to 0pt{\vskip\headheight\vskip\headsep%\vskip3pt
                \vrule height\draftrule width\textwidth}%
      \hbox to \textwidth{\vrule width\draftrule \hfill\vrule height\tempdimen width\draftrule}%
           \hrule height\draftrule}}}%%
%
\let\trimmarks\cropmarks
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Crop Marks %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% Output Routine %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
\def\@outputpage{%
\begingroup           % the \endgroup is put in by \aftergroup
  \let \protect \noexpand
  \@resetactivechars
  \let\-\@dischyph
  \let\'\@acci\let\`\@accii\let\=\@acciii
  \let\\\@normalcr
  \let\par\@@par          %% 15 Sep 87
  \shipout \vbox{%
    \set@typeset@protect
    \aftergroup \endgroup
    \aftergroup \set@typeset@protect
                                % correct? or just restore by ending
                                % the group?
  \if@specialpage
    \global\@specialpagefalse\@nameuse{ps@\@specialstyle}%
  \fi
  \if@twoside
    \ifodd\count\z@ \let\@thehead\@oddhead \let\@thefoot\@oddfoot
         \let\@themargin\oddsidemargin
    \else \let\@thehead\@evenhead
       \let\@thefoot\@evenfoot \let\@themargin\evensidemargin
    \fi
  \fi
  \reset@font
  \normalsize
  \baselineskip\z@skip \lineskip\z@skip \lineskiplimit\z@
    \@begindvi\trimmarks
    \vskip \topmargin
    \moveright\@themargin \vbox {%
      \setbox\@tempboxa \vbox to\headheight{%
        \vfil
        \color@hbox
          \normalcolor
          \hb@xt@\textwidth {%
            \let \label \@gobble
            \let \index \@gobble
            \let \glossary \@gobble %% 21 Jun 91
            \@thehead
            }%
        \color@endbox
        }%                        %% 22 Feb 87
      \dp\@tempboxa \z@
      \box\@tempboxa
      \vskip \headsep
      \box\@outputbox
      \baselineskip \footskip
      \color@hbox
        \normalcolor
        \hb@xt@\textwidth{%
          \let \label \@gobble
          \let \index \@gobble      %% 22 Feb 87
          \let \glossary \@gobble   %% 21 Jun 91
          \@thefoot
          }%
      \color@endbox
      }%
    }%
\global \@colht \textheight
\stepcounter{page}%
\let\firstmark\botmark
}
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Process Options %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
\pagestyle{headings}
\pagenumbering{arabic}
\onecolumn
\frenchspacing
\flushbottom
\def\sloppy{\tolerance=100000\hfuzz=\maxdimen \vfuzz=\maxdimen}
\sloppy
\vbadness=12000
\hbadness=12000
\usepackage{amsfonts,amssymb,amsmath}
\usepackage[figuresright]{rotating}
\usepackage{dcolumn,url}
\usepackage{chapterbib}
\if@wssquare
\usepackage[space]{cite}
\def\@biblabel#1{[#1]}
\else
\usepackage[super,nospace]{cite}
\def\@biblabel#1{#1.}
\fi
\let\refcite\citen
\endinput
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%% End of file %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%      For technical support please email: rajesh@wspc.com.sg
