%  CERN Report LaTeX2e format                
%
%  Version 1.0  (14/2/95)  JMJ
%  Adapted to latex2e from the old cas.sty, just a rather minor
%  modification of 12pt article class.
%
%  Last Modification:13/2/95
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%
%%
\def\fileversion{1.0}
\def\filedate{1995/02/14}
\def\docdate {1995/02/14}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cernrep}[\filedate\space cernrep class]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
 
\LoadClass[11pt]{article}
\RequirePackage{a4}
\RequirePackage{times}
\renewcommand{\rmdefault}{ptm}
 
\typeout{Document Style `cernrep' 1.0  2 June 1997}
%it uses the following info
%   \typist{..}  (may be filename) printed at top left of title page
%   \title{..}   
%   \author{..}
%   \date{..}  optional
%   \documentlabel{..}  printed at top right of title page
 
%%% Customization of visible document elements

\renewcommand\thesection      {\@arabic\c@section.}
\renewcommand\thesubsection   {\thesection\@arabic\c@subsection}
\renewcommand\thesubsubsection{\thesubsection \@arabic\c@subsubsection}
\renewcommand\baselinestretch{1.}
\renewcommand{\contentsname}{Contents}
\renewcommand{\listfigurename}{List of Figures}
\renewcommand{\listtablename}{List of Tables}
\renewcommand{\refname}{References}
\renewcommand{\indexname}{Index}
\renewcommand{\figurename}{Fig.}
\renewcommand{\tablename}{Table}
\renewcommand{\partname}{Part}
\renewcommand{\appendixname}{Appendix}
\renewcommand{\abstractname}{Abstract}
%\renewcommand{\today}{\ifcase\month\or


% Prevent infinite loops
\let\Otemize =\itemize  
\let\Onumerate =\enumerate
\let\Oescription =\description
% Zero the vertical spacing parameters
\def\Nospacing{\itemsep=2pt\topsep=0pt\partopsep=0pt\parskip=0pt\parsep=0pt}
% Redefine the environments in terms of the original values
\renewenvironment{itemize}{\vspace*{-3mm}\Otemize\Nospacing}%
                               {\endlist\vspace*{-3mm}}
\renewenvironment{enumerate}{\vspace*{-3mm}\Onumerate\Nospacing}
                               {\endlist\vspace*{-3mm}}
\renewenvironment{description}{\vspace*{-3mm}\Oescription\Nospacing}
                               {\endlist\vspace*{-3mm}}



% You also need to use \begin{document} and \end{document}
 
%  ****************************************
%  *            PAGE LAYOUT               *
%  ****************************************
%
% All margin dimensions measured from a point one inch from top and side
% of page.
 
% SIDE MARGINS:
\if@twoside                 % Values for two-sided printing:
   \oddsidemargin 21pt      %   Left margin on odd-numbered pages.
   \evensidemargin 59pt     %   Left margin on even-numbered pages.
   \marginparwidth 85pt    %   Width of marginal notes.
\else                       % Values for one-sided printing:
%  \oddsidemargin 39.5pt      %   Note that \oddsidemargin = \evensidemargin
%  \evensidemargin 39.5pt
   \oddsidemargin 0pt      %   Note that \oddsidemargin = \evensidemargin
   \evensidemargin 0pt
\fi
 
\pagestyle{empty}
\def\@oddhead{}\def\@evenhead{}     % Eliminate page numbers etc.
\def\@oddfoot{}
\def\@evenfoot{\@oddfoot}
 
 
% VERTICAL SPACING:
                         % Top of page:
%\topmargin 27pt         %    Nominal distance from top of page to top of
                         %    box containing running head.
\topmargin -1cm         % may need to be adjusted for your printer
 
                         % Bottom of page:
%\footheight 12pt         %    Height of box containing running foot.
%\footskip 30pt           %    Distance from baseline of box containing foot
                         %    to baseline of last line of text.
 
% DIMENSION OF TEXT:
 
 
\textheight 24cm       % Height of text (including footnotes and figures,
                       % excluding running head and foot).
\textwidth 16cm        % Width of text line.
 
 
 
% FLOATS: (a float is something like a figure or table)
%
%  FOR FLOATS ON A TEXT PAGE:
%
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\floatsep 14pt plus 2pt minus 4pt        % Space between adjacent floats moved
                                         % to top or bottom of text page.
\textfloatsep 20pt plus 2pt minus 4pt    % Space between main text and floats
                                         % at top or bottom of page.
\intextsep 14pt plus 4pt minus 4pt       % Space between in-text figures and
                                         % text.
%%\@maxsep 20pt                            % The maximum of \floatsep,
                                         % \textfloatsep and \intextsep (minus
                                         % the stretch and shrink).
%    TWO-COLUMN FLOATS IN TWO-COLUMN MODE:
\dblfloatsep 14pt plus 2pt minus 4pt     % Same as \floatsep for double-column
                                         % figures in two-column mode.
\dbltextfloatsep 20pt plus 2pt minus 4pt % \textfloatsep for double-column
                                         % floats.
%%%\@dblmaxsep 20pt                         % The maximum of \dblfloatsep and
                                         % \dbltexfloatsep.
 
%  FOR FLOATS ON A SEPARATE FLOAT PAGE OR COLUMN:
%    ONE-COLUMN MODE OR SINGLE-COLUMN FLOATS IN TWO-COLUMN MODE:
\@fptop 0pt plus 1fil    % Stretch at top of float page/column. (Must be
                         % 0pt plus ...)
\@fpsep 10pt plus 2fil    % Space between floats on float page/column.
\@fpbot 0pt plus 1fil    % Stretch at bottom of float page/column. (Must be
                         % 0pt plus ... )
 
%   DOUBLE-COLUMN FLOATS IN TWO-COLUMN MODE.
\@dblfptop 0pt plus 1fil % Stretch at top of float page. (Must be 0pt plus ...)
\@dblfpsep 10pt plus 2fil % Space between floats on float page.
\@dblfpbot 0pt plus 1fil % Stretch at bottom of float page. (Must be
                         % 0pt plus ... )
% MARGINAL NOTES:
%
\marginparpush 7pt       % Minimum vertical separation between two marginal
                         % notes.
 
% Define caption layout %%%%%

\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{{\footnotesize #1: #2}}%
  \ifdim \wd\@tempboxa >\hsize
    {\footnotesize #1: #2}\par
  \else
    \global \@minipagefalse
    \hbox to\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%    ****************************************
%    *             SECTIONS                 *
%    ****************************************
%
 
% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP}{AFTERSKIP}{STYLE}
%            optional * [ALTHEADING]{HEADING}
%    Generic command to start a section.
%    NAME       : e.g., 'subsection'
%    LEVEL      : a number, denoting depth of section -- e.g., section=1,
%                 subsection = 2, etc.  A section number will be printed if
%                 and only if LEVEL < or = the value of the secnumdepth
%                 counter.
%    INDENT     : Indentation of heading from left margin
%    BEFORESKIP : Absolute value = skip to leave above the heading.
%                 If negative, then paragraph indent of text following
%                 heading is suppressed.
%    AFTERSKIP  : if positive, then skip to leave below heading,
%                       else - skip to leave to right of run-in heading.
%    STYLE      : commands to set style
%  If '*' missing, then increments the counter.  If it is present, then
%  there should be no [ALTHEADING] argument.  A sectioning command
%  is normally defined to \@startsection + its first six arguments.
 
\renewcommand{\section}{\@startsection {section}{1}{\z@}%
                                   {-0.5cm \@plus -1ex \@minus -.2ex}%
                                   {0.3ex \@plus.2ex}%
                                   {\reset@font\normalsize\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{\z@}%
                                     {-0.5cm \@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .2ex}%
                                     {\reset@font\normalsize\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{\z@}%
                                     {-0.5cm \@plus -1ex \@minus -.2ex}%
                                     {0.1ex \@plus .2ex}%
                                     {\reset@font\normalsize\itshape}}
\renewcommand{\paragraph}{\@startsection{paragraph}{4}{\z@}%
                                    {3.25ex \@plus1ex \@minus.2ex}%
                                    {-1em}%
                                    {\reset@font\normalsize\bfseries}}
\renewcommand{\subparagraph}{\@startsection{subparagraph}{5}{\parindent}%
                                       {3.25ex \@plus1ex \@minus .2ex}%
                                       {-1em}%
                                      {\reset@font\normalsize\bfseries}}

% Default initializations of \...mark commands.  (See below for their
% us in defining page styles.
%
 
% \def\sectionmark#1{}           % Preloaded definitions
% \def\subsectionmark#1{}
% \def\subsubsectionmark#1{}
% \def\paragraphmark#1{}
% \def\subparagraphmark#1{}
 
% The value of the counter secnumdepth gives the depth of the
% highest-level sectioning command that is to produce section numbers.
%
 
\setcounter{secnumdepth}{3}
 
%-----------------------------------------------------------------------
% THE REMAINDER OF THIS FILE CONSISTS OF ADDITIONS TO ART12.DOC RATHER
% THAN JUST MODIFICATIONS.
%-----------------------------------------------------------------------
% PARAGRAPH INDENTATION
\setlength{\parindent}{1cm}
\setlength{\parskip}{3pt}
 
\def\institute#1{\gdef\@institute{#1}}          % see \@maketitle
\gdef\@institute{\hbox{}}
% Redefine title block, we have to copy the definition of \maketitle
% just in order to get rid of the page number on the first page
\def\maketitle{\par
 \begingroup
   \def\thefootnote{\fnsymbol{footnote}}
   \def\@makefnmark{\hbox
       to 0pt{$^{\@thefnmark}$\hss}}
   \if@twocolumn
     \twocolumn[\@maketitle]
     \else \newpage
     \global\@topnum\z@        % Prevents figures from going at top of page.
     \@maketitle \fi\thispagestyle{empty}\@thanks
 \endgroup
 \setcounter{footnote}{0}
 \let\maketitle\relax
 \let\@maketitle\relax
 \gdef\@thanks{}\gdef\@author{}\gdef\@title{}\let\thanks\relax}
\def\@maketitle{\begin{flushleft}
                    \baselineskip1.2\baselineskip\Large\bfseries \@title\par
                \end{flushleft}
                \mbox{}\\[-11mm]
                \begin{flushleft}
                    {\normalsize\itshape\@author}\\           %EJNW 12/5/92
                    {\normalsize\rmfamily\@institute}
                \end{flushleft}
%               \vskip 1.5em                              %EJNW 12/5/92
                \thispagestyle{empty}
               }
%-----------------------------------------------------------------------
% The abstract Environment is modelled on the quotation environment
 
\def\abstract{\list{}{\listparindent 0pt
    \setlength{\leftmargin}{2cm}
%   \setlength{\topsep}{1pt}                              %EJNW 12/5/92
%   \setlength{\parsep}{1pt}                              %EJNW 12/5/92
%   \setlength{\partopsep}{1pt}                           %EJNW 12/5/92
    \itemindent\listparindent
    \rightmargin\leftmargin }\item[]{\bf Abstract}\\}
\let\endabstract=\endlist
%-----------------------------------------------------------------------
 
% Here are some useful commands which facilitate correct formatting:
%
% To give a numerical value with units, e.g. \QTY{ 4.2 }{ MV\,n^{-1} }
% (this takes care that the units in an equation are in a roman font
%  and not in math-italic which is used for symbols, IMPORTANT!!)
%
\newcommand{\QTY}[2]{\mbox{\(#1\rm\,#2\)}}
%-----------------------------------------------------------------------
%
% To express a number in scientific notation, e.g. \Enum{1.7}{32}
\newcommand{\Enum}[2]{\mbox{\(#1\times10^{#2}\)}}
%
%-----------------------------------------------------------------------
% numerical formula e.g. \NQTY{E}{GeV} gives [E/GeV]
\newcommand{\NQTY}[2]{\mbox{$[#1/{\rm #2}]$}} % symbol with units in
%
%-----------------------------------------------------------------------
%  Expectation value or average, e.g. \EV{ x^2 } gives  <x^2>
\newcommand{\EV}[1]{\left\langle #1 \right\rangle}% expectation value
%
%-----------------------------------------------------------------------
% These are convenient for quoting luminosity:
\newcommand{\LUMI}[1]{\QTY{#1}{cm^{-2}s^{-1}}}
\newcommand{\LUM}[2]{\LUMI{#1\times10^{#2}}}
%
% thus a B-factory design might quote         \LUM{3.0}{33}
%-----------------------------------------------------------------------
\def\gappeq{\mathrel{ \rlap{\raise.5ex\hbox{$>$}}
                      {\lower.5ex\hbox{$\sim$}}  } }
%
%  \gappeq is a compound symbol made out of a > sign on top of a tilde
%  usually used to mean "greater than or approximately equal to"
%  or "vaguely greater than"  by physicists.
%  It behaves as a mathematical relation in TeX's math modes, e.g.
%  $ a \gappeq b $    in the text and
%  $$ a \gappeq b $$  as a display.
%
\def\lappeq{\mathrel{ \rlap{\raise.5ex\hbox{$<$}}
                      {\lower.5ex\hbox{$\sim$}}  } }
 
\endinput
