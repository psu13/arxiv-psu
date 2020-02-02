%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                              %
%  CERN Report class (single contribution)                     %
%                                                              %
%  2.0  (03/08/2005)  MG                                       %
%    - Divide cernyrep.cls into cernall.sty and CERN Report    %
%      class cernyrep.cls (new)                                %
%  2.01 (27/10/2005)  MG                                       %
%    - Introduce mtpro option to install Mathtime fonts        %
%  2.02 (03/07/2006)  MG                                       %
%    - Add hyperref option to load hyperref.sty                %
%    - Do note load cite package when hyperref is loaded       %
%  2.03 (04/07/2006)  MG                                       %
%    - Make T1 default for fontenc package                     %
%  2.04 (28/01/2007)  MG                                       %
%    - Add \myurl command to show url in hypertext mode        %
%  2.05 (05/06/2007)  MG                                       %
%    - Add package ifpdf to test whether we run latex          %
%      or pdflatex, since hyperref has to be called with the   %
%      correct driver (dvips or pdftex)                        %
%                                                              %
%  Last Mod.: 05 June 2007 (MG)                                %
%                                                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\fileversion{2.05} 
\def\filedate{2007/06/05}
\def\docdate {2007/06/05}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cernyrep}%
    [\filedate\space cernyrep class (version\space\fileversion)]

% Set flag for MathTime usage
\providecommand*\CERNMTPRO{n}
\DeclareOption{mtpro}{\renewcommand{\CERNMTPRO}{y}}

% Set hyperref flag
\providecommand*\CERNHYPER{n}
\DeclareOption{hyperref}{\renewcommand{\CERNHYPER}{y}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions
 
% openright option starts chapters, etc. on RH page 
\LoadClass[a4paper,11pt,openright]{report}

\RequirePackage{ifthen,calc}
\RequirePackage{ifpdf}

% If running in hyperref mode, do not load cite package
\ifthenelse{\equal{\CERNHYPER}{y}}
 {\ifpdf
   \RequirePackage[pdftex,linktocpage,colorlinks,pagebackref]{hyperref}
  \else
   \RequirePackage[dvips,linktocpage,colorlinks,pagebackref]{hyperref}
  \fi
  \providecommand\myurl[1]{\newline[\url{#1}]\par}}
 {\RequirePackage{cite}}

%% Load MathTime support files if mtpro option given

\ifthenelse{\equal{\CERNMTPRO}{y}}
 {\usepackage[mtplusscr]{mtpro}
  \usepackage[]{mtpams}
  \usepackage[mtpcal]{mtpb}}
 {}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Running headings                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\usepackage{fancyhdr}
\usepackage{truncate}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\chaptermark}[1]{\markboth{{\scshape #1}}{}}
\renewcommand\headrulewidth{0pt}
\cfoot{\thepage}
\fancyhead[LO]{\truncate{.95\headwidth}{\leftmark}}
\fancyhead[RE]{\textsc{Chapter\ \thechapter}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Chapter headings (when used should be like title)               %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\def\@makechapterhead#1{%
  \vspace*{1\p@}%
  {\parindent \z@ \raggedright \normalfont
    \ifnum \c@secnumdepth >\m@ne
        \Large\bfseries \@chapapp\space \thechapter
        \par\nobreak
        \vskip 15\p@
    \fi
    \interlinepenalty\@M
    \Large \bfseries \boldmath #1\unboldmath\par\nobreak
    \vskip 15\p@
  }}
\def\@makeschapterhead#1{%
  {\parindent \z@ \raggedright \normalfont
    \interlinepenalty\@M
    \LARGE  \bfseries \boldmath #1\unboldmath\par\nobreak
    \vskip 10\p@
  }}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Table of contents layout                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\renewcommand*\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{2em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\hfil \nobreak\hb@xt@\@pnumwidth{\hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

%% draft headings   2010.11.29 R.Tanaka

%% Draft version 
%\def\@draftversion{}
%\newcommand{\draftversion}[1]%
%{
%  \def\@draftversion{#1}
%}

% Draft heading code
\newcommand{\draftheading}%
{
  % 
  % compute the time in hours and minutes
  % make new variables \timehh and \timemm
  % 
  \newcount\timehh\newcount\timemm
  \timehh=\time 
  \divide\timehh by 60 \timemm=\time
  \count255=\timehh\multiply\count255 by -60 \advance\timemm by
  \count255
  % put in header
  \markboth%
  % --- Left mark
  {\hspace*{\fill}{\protect\small\bf \fbox{DRAFT}}
    \hspace*{\fill}
    \protect\makebox[0pt][r]{\protect\small\sl\today\ -- 
      \ifnum\timehh<10 0\fi\number\timehh\,:\,\ifnum\timemm<10
      0\fi\number\timemm}
  }%--- right mark
  {\protect\makebox[0pt][l]{\protect\small\sl\today\ -- 
      \ifnum\timehh<10 0\fi\number\timehh\,:\,\ifnum\timemm<10
      0\fi\number\timemm}
    \hspace*{\fill}
    {\protect\small\bf \fbox{DRAFT}}
    \hspace*{\fill}}
  %
  \pagestyle{myheadings}
}


%% Common definitions

\RequirePackage[T1]{fontenc}
\RequirePackage{cernall}
\RequirePackage{cernunits}

%%% Text font : Times Roman
%\renewcommand{\rmdefault}{ptm}
 
\endinput
