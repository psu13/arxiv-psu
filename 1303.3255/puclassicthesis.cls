\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{puclassicthesis}
         [2014/01/18 v1.0 Princeton University Thesis class based on classicthesis/arsclassica and puthesis]

\RequirePackage{etoolbox}
\RequirePackage{xstring}

% TODO
% split into volumes -- works for TOC and lists, do the same for bib?
% add custom lists of stuff

% ********************************************************************
% option parsing
% ********************************************************************

\RequirePackage{kvoptions}
\SetupKeyvalOptions{family=puct,prefix=puct@}

% fontsize is a keyval argument, so each subsequent argument overwrites the value...
\PassOptionsToClass{12pt}{scrreprt}

\DeclareStringOption[princeton]{school}

% default is singlespacing except in proquest mode
\DeclareBoolOption[false]{singlespacing}
\DeclareBoolOption[false]{doublespacing}

% lof/lot will appear unless empty or explicitly disabled
\DeclareBoolOption[false]{nolot}
\DeclareBoolOption[false]{nolof}

% extra output modes
\DeclareBoolOption[false]{draft} % disable most front and back matter
\DeclareBoolOption[false]{print} % for bound printing
\DeclareBoolOption[false]{proquest} % for online submission
\DeclareComplementaryOption{final}{draft}

\DeclareBoolOption[true]{draftfigures}
\DeclareComplementaryOption{nodraftfigures}{draftfigures}

\DeclareBoolOption[true]{letterpaper}

% default is twoside except in print mode
\DeclareBoolOption[false]{twoside}
\DeclareBoolOption[false]{oneside}

% only valid with twoside
\DeclareBoolOption[true]{openright}
\DeclareComplementaryOption{openany}{openright}

% only valid with openright
\DeclareBoolOption[false]{cleardoubleempty}
\DeclareBoolOption[true]{cleardoubleplain}
\DeclareBoolOption[false]{cleardoublestandard}

\DeclareBoolOption[false]{allcapstitle}

% some default classicthesis options...

\DeclareBoolOption[true]{eulerchapternumbers}
\DeclareComplementaryOption{noeulerchapternumbers}{eulerchapternumbers}

\DeclareBoolOption[true]{eulermath}
\DeclareComplementaryOption{noeulermath}{eulermath}

\DeclareBoolOption[true]{beramono}
\DeclareComplementaryOption{noberamono}{beramono}

\DeclareBoolOption[true]{listings}
\DeclareComplementaryOption{nolistings}{listings}

\DeclareBoolOption[true]{subfig}
\DeclareComplementaryOption{nosubfig}{subfig}

\DeclareBoolOption[true]{hyperref}
\DeclareComplementaryOption{nohyperref}{hyperref}

\DeclareBoolOption[true]{pdfspacing}
\DeclareComplementaryOption{nopdfspacing}{pdfspacing}

\DeclareBoolOption[true]{parts}
\DeclareComplementaryOption{noparts}{parts}

\DeclareBoolOption[false]{volumes}
\DeclareBoolOption[false]{volumelists}

\DeclareBoolOption[false]{linedheaders}
\DeclareComplementaryOption{nolinedheaders}{linedheaders}

\DeclareBoolOption[false]{nochapters}

\DeclareBoolOption[false]{arsclassica}

\DeclareDefaultOption{
  % total hack for paper options...
  \ifx\CurrentOptionValue\relax
    \IfSubStr{\expandafter\CurrentOption}{paper}{\puct@letterpaperfalse}{\relax}
  \fi
  \PassOptionsToClass{\expandafter\CurrentOption}{scrreprt}
}

\ProcessKeyvalOptions*

% ********************************************************************
% front/main/back matter macros
% ********************************************************************

\ifdefstring{\puct@school}{princeton}{
  \def\@univ{Princeton University}
}{
  \ifdefstring{\puct@school}{upenn}{
    \def\@univ{University of Pennsylvania}
    \PackageWarning{puclassicthesis}{Using template for \puct@school.}
  }{
    \PackageError{puclassicthesis}{Unrecognized option school. Allowed options are princeton or upenn.}{}
  }
}

\newcounter{subyear}
\setcounter{subyear}{\number\year}
\def\submitted#1{\gdef\@submitted{#1}}
\def\@submittedyear{\ifnum\month>11 \stepcounter{subyear}\thesubyear
  \else\thesubyear\fi}
\def\@submittedmonth{\ifnum\month>11 January%
                    \else\ifnum\month>9 November%
                    \else\ifnum\month>6 September%
                    \else\ifnum\month>4 June%
                    \else\ifnum\month>1 April%
                    \else January\fi\fi\fi\fi\fi}
\def\@submitted{\@submittedmonth~\@submittedyear}
\def\copyrightyear#1{\gdef\@copyrightyear{#1}}
\def\@copyrightyear{\number\year}
\def\@advisertitle{Professor}
\def\advisertitle#1{\gdef\@advisertitle{#1}}
\def\adviser#1{\gdef\@adviser{#1}}
\def\coadviser#1{\gdef\@coadviser{#1}}
\def\@coadvisertitle{Professor}
\def\coadvisertitle#1{\gdef\@coadvisertitle{#1}}
\long\def\abstracttext#1{\gdef\@abstract{#1}}
\AtEndOfClass{\let\abstract\abstracttext} % override abstract env in scrreprt
\def\@univpref{\relax}
\def\universityprefix#1{\gdef\@univpref{#1}}
\def\university#1{\gdef\@univ{#1}}
\def\@deptpref{Department of}
\def\departmentprefix#1{\gdef\@deptpref{#1}}
\def\@degree{Doctor of Philosophy}
\def\degree#1{\gdef\@degree{#1}}
\def\@department{Physics}
\def\department#1{\gdef\@department{#1}}
\def\declocation#1{\gdef\@location{#1}}
\def\@time{\ifcase \month \or January\or February\or March\or April\or May%
    \or June\or July\or August\or September\or October\or November\or December\fi\ \number\year}
\def\dectime#1{\gdef\@time{#1}}
\long\def\acknowledgements#1{\gdef\@acknowledgements{#1}}
% \def\dedication#1{\gdef\@dedication{#1}} % this is already defined in scrreprt
\long\def\colophon#1{\gdef\@colophon{#1}}
\def\@declaration{}
\long\def\declaration#1{\gdef\@declaration{#1}}
\long\def\preface#1{\gdef\@preface{#1}}
\long\def\titletext#1{\gdef\@titletext{#1}}
\AtEndOfClass{\let\titlepage\titletext}
\def\@prefacename{Preface}
\def\prefacename#1{\gdef\@prefacename{#1}}

\newcommand*{\titlecase}[1]{\spacedlowsmallcaps{\NoCaseChange{#1}}}
\AtEndOfClass{\let\titlefont\titlecase}

\ifdefstring{\puct@school}{princeton}{
  \def\@copyrightpage{{
    \centering
    \copyright\ Copyright by \@author, \@copyrightyear. \\
    All rights reserved. \\
  }}
  \def\@titletext{
    \begin{center}
      {\LARGE \titlecase\@title\par}
      \ifpuct@volumes
        \vspace{\baselineskip}
        {\Large \titlecase\@volumetitle\par}
      \fi
      \vfill\vfill
      {\titlecase{\Large\@author}}
      \vfill\vfill
      \titlecase{\large A Dissertation \protect\\
      Presented to the Faculty \protect\\
      of \@univpref\xspace\@univ \protect\\
      in Candidacy for the Degree \protect\\
      of \@degree
      \vfill
      Recommended for Acceptance \protect\\
      by the \@deptpref \protect\\
      \@department \protect\\
      Adviser: \@advisertitle\xspace\@adviser
      \vfill
      \@submitted \protect\\}
    \end{center}}
}{
  \ifdefstring{\puct@school}{upenn}{
    \def\@gradchair{J. Smith}
    \def\gradchair#1{\gdef\@gradchair{#1}}
    \def\@gradchairtitle{Professor}
    \def\gradchairtitle#1{\gdef\@gradchairtitle{#1}}
    \def\@committee{\relax}
    \def\committee#1{\gdef\@committee{#1}}
    \def\@copyrightpage{{
      \vspace{0.25\textheight}
      \raggedright
      \noindent {\titlecase\@title} \\ \copyright\ \@copyrightyear \\ \@author \\ 
    }}
    \def\@titletext{
      \begin{center}
        {\LARGE \titlecase\@title\par}
        \ifpuct@volumes
          \vfill
          {\Large \titlecase\@volumetitle\par}
        \fi
        \vfill\vfill
        {\Large \@author\par}
        \vfill\vfill
        {\large
        \titlecase{A Dissertation} \protect\\ 
        in \protect\\
        \vfill
        \@department \protect\\
        \vfill
        Presented to the Faculties of \protect\\
        \@univpref\xspace\@univ \protect\\
        in Partial Fulfillment of the Requirements for \protect\\
        the Degree of \protect\\
        \vfill
        \@degree \protect\\
        \vfill
        \thesubyear}
      \end{center}
        \vfill\vfill
        \begin{tabular}{l}
          \makebox[4in]{\hrulefill} \\
          \@adviser, \@advisertitle \\
          Supervisor of Dissertation \\
        \end{tabular}
        \ifx\@coadviser\undefined
        \else
          \vfill\vfill
          \noindent\begin{tabular}{l}
            \makebox[4in]{\hrulefill} \\
            \@coadviser, \@coadvisertitle \\
            Co-Supervisor of Dissertation \\
          \end{tabular}
        \fi
        \vfill\vfill
        \noindent\begin{tabular}{l}
          \makebox[4in]{\hrulefill} \\
          \@gradchair, \@gradchairtitle \\
          Graduate Group Chairperson \\
        \end{tabular}
        \vfill\vfill
      \begin{center}
        Dissertation Committee: \\
        \vspace\baselineskip
        \@committee
      \end{center}
    }
  }{\relax}
}

\def\copyrightpage#1{\gdef\@copyrightpage{#1}}

\def\@colophon{
  This document was typeset using the typographical look-and-feel \texttt{classicthesis} developed by Andr\'e Miede. 
  The style was inspired by Robert Bringhurst's seminal book on typography ``\emph{The Elements of Typographic Style}''. 
  \texttt{classicthesis} is available for both \LaTeX\ and \mLyX: 
  \begin{center}
    \url{http://code.google.com/p/classicthesis/}
  \end{center}
  Happy users of \texttt{classicthesis} usually send a real postcard to the author, a collection of postcards received so far is featured here: 
  \begin{center}
    \url{http://postcards.miede.de/}
  \end{center}
  \bigskip
  \noindent\finalVersionString  
}
\def\@colophonname{Colophon}
\def\colophonname#1{\gdef\@colophonname{#1}}
\def\colophonwithversion#1{\gdef\@colophon{
  #1
  \bigskip
  \noindent\finalVersionString
}}

% not sure why these needed redefining, but here they are
\newcommand{\clearfrontmatterpage}{
  \clearpage
    \ifpuct@twoside
    \ifpuct@openright
      \cleardoublepage
    \fi
  \fi
}
\newcommand{\cleartitlepage}{
  \clearpage
  \ifpuct@twoside
    \ifpuct@openright
      \cleardoubleemptypage
    \fi
  \fi
}
\newcommand{\clearbodypage}{
  \clearpage
  \ifpuct@twoside
    \ifpuct@openright
      \cleardoublepage
    \fi
  \fi
}

% unnumbered headings that still show up in the TOC
\newcounter{locsecnumdepth}
\newenvironment{starred}{%
  \setcounter{locsecnumdepth}{\value{secnumdepth}}%
  \setcounter{secnumdepth}{-2}%
  \renewcommand\sectionmark[1]{}%
}{%
  \setcounter{secnumdepth}{\value{locsecnumdepth}}%
}
\def\tocpart*#1{\begin{starred}\part{#1}\end{starred}}
\def\tocchapter*#1{\begin{starred}\chapter{#1}\end{starred}\noindent\ignorespaces}
\def\tocsection*#1{\begin{starred}\section{#1}\end{starred}\noindent\ignorespaces}
\def\tocsubsection*#1{\begin{starred}\subsection{#1}\end{starred}\noindent\ignorespaces}
\def\tocsubsubsection*#1{\begin{starred}\subsubsection{#1}\end{starred}\noindent\ignorespaces}

% manual part skips in TOC
\newcommand*{\tocpartskip}{
  \ifpuct@draft
  \else
    \ifpuct@parts
      \addtocontents{toc}{\protect\vspace{\cftbeforepartskip}}
    \fi
  \fi
}

% manual part skips in TOC
\newcommand*{\tocundopartskip}{
  \ifpuct@draft
  \else
    \ifpuct@parts
      \addtocontents{toc}{\protect\vspace{-\cftbeforepartskip}}
    \fi
  \fi
}

%% Setup a command to set spacing for body text; also used to restore spacing after long tables in document
\newcommand*{\bodyspacing}{\singlespacing}
%% Setup a command to set spacing for long tables, to be used manually in document
\newcommand*{\tablespacing}{\singlespacing}
%% Setup a command to set spacing for bibliography
\newcommand*{\biblinespacing}{\singlespacing}

% ********************************************************************
% front/main/back matter builders
% ********************************************************************

\newcommand*{\noheadgeometry}{
  \ifpuct@print
    \ifdefstring{\puct@school}{upenn}{
      \newgeometry{top=1in,bottom=1in,foot=0.25in,includehead=false,includefoot=true,inner=1.5in,outer=1in}
    }{
      \newgeometry{top=1in,bottom=1in,foot=0.25in,includehead=false,inner=1.5in,outer=1in}
    }
  \else
    \ifdefstring{\puct@school}{upenn}{
      \newgeometry{top=1in,bottom=1in,foot=0.25in,includehead=false,includefoot=true,inner=1in,outer=1in}
    }{
      \newgeometry{top=1in,bottom=1in,foot=0.25in,includehead=false,inner=1in,outer=1in}
    }
  \fi
}

\newcounter{fmpage}
\newcounter{mmpage}
\newcounter{tmpage}
\newcounter{empage}
\AtBeginDocument{
  \setcounter{fmpage}{\value{page}}
  \setcounter{mmpage}{\value{page}}
  \setcounter{tmpage}{\value{page}}
  \setcounter{empage}{\value{page}}
}

\newif\if@mainmatter\@mainmattertrue
\newcommand*{\titlematter}{
  \cleartitlepage
  \setcounter{empage}{\value{page}}
  \@mainmatterfalse
  \pagenumbering{Alph}
  \setcounter{page}{\value{tmpage}}
  \pagestyle{empty}
  \noheadgeometry
  \bodyspacing
}
\newcommand*{\frontmatter}{
  \cleartitlepage
  \setcounter{tmpage}{\value{page}}
  \@mainmatterfalse
  \pagenumbering{roman}
  \setcounter{page}{\value{fmpage}}
  \pagestyle{scrplain}
  \noheadgeometry
  \bodyspacing
}
\newcommand*{\mainmatter}{
  \clearfrontmatterpage
  \setcounter{fmpage}{\value{page}}
  \@mainmattertrue
  \pagenumbering{arabic}
  \setcounter{page}{\value{mmpage}}
  \pagestyle{scrheadings}
  \restoregeometry
  \bodyspacing
}
\newcommand*{\backmatter}{
  \@mainmatterfalse
  \pagestyle{scrplain}
  \noheadgeometry
  \bodyspacing
}
\newcommand*{\myendmatter}{
  \clearbodypage
  \setcounter{mmpage}{\value{page}}
  \@mainmatterfalse
  \pagenumbering{alph}
  \setcounter{page}{\value{tmpage}}
  \pagestyle{empty}
  \noheadgeometry
  \bodyspacing
}
\AtEndOfClass{\let\endmatter\myendmatter}

\newcommand*{\makefrontmatter}{
  \titlematter
  \ifnum\value{volume}=0
    \ifpuct@volumes\startcontents\fi
  	\tocpartskip
  \fi
	\maketitlepage
	\makecopyrightpage
  \cleartitlepage
  \frontmatter
  \ifdefstring{\puct@school}{princeton}{
    \makeabstract
    \makeacknowledgements
    \makededication
    \maketoc
    \makepreface
    \makelot
    \makelof
  }{
    \makededication
    \makeacknowledgements
    \makeabstract
    \maketoc
    \makelot
    \makelof
    \makepreface
  }
	\tocpartskip
  \clearfrontmatterpage
	\mainmatter
}
\newcommand*{\makeendmatter}{
  \endmatter
  \makecolophon
  \makedeclaration
}
% backmatter
\AtEndDocument{
  \ifdefempty{\@colophon}{
    \ifdefempty{\@declaration}{}{
      \makeendmatter
    }
  }{
    \makeendmatter
  }
}

\newcommand{\maketitlepage}{
  \vspace*{0in}
  \@titletext
  \cleartitlepage
}
\newcommand*{\makecopyrightpage}{
  \vspace*{0in}
  \@copyrightpage
  \cleartitlepage
}
\def\makeabstract{
  % \newpage
  \ifdefstring{\puct@school}{princeton}{
    \setcounter{page}{3}
  }{}
  \tocchapter*{\abstractname}

  \ifdefstring{\puct@school}{upenn}{{
    \centering
    {\titlecase{\@title}}\\\vspace\baselineskip
    \@author\\\vspace\baselineskip
    \@adviser\\\vspace\baselineskip
  }}{\relax}
  \@abstract
  \clearfrontmatterpage
}
\def\makeacknowledgements{
  \ifx\@acknowledgements\undefined
  \else
    \ifdefempty{\@acknowledgements}{}{
	    \tocchapter*{Acknowledgements}
      \@acknowledgements
      \clearfrontmatterpage
    }
  \fi
}
\def\makededication{
  \ifx\@dedication\undefined
  \else
    \ifdefempty{\@dedication}{}{
      % \vspace*{0.25\textheight}
      \vspace*{0in}
      \ifdefstring{\puct@school}{upenn}{
        \setcounter{page}{3}
      }{}
      \vfill
      \begin{flushright}
        \@dedication
      \end{flushright}
      \vfill\vfill\vfill
      \clearfrontmatterpage
    }
  \fi
}
\def\makepreface{
  \ifx\@preface\undefined
  \else
    \ifdefempty{\@preface}{}{
      \tocchapter*{\@prefacename}
      \@preface
      \clearfrontmatterpage
    }
  \fi
}
\newcommand*{\maketoc}{
  % Add ToC to the pdfbookmarks as a section, but not to the ToC itself.
  % only if we have the hyperref command that is necessary
  \pdfbookmark[0]{\contentsname}{\contentsname\thevolume}

  \ifpuct@volumes
    \chapter*{\contentsname}
    \printcontents{ }{-2}{}
  \else
    \tableofcontents
  \fi
  \clearfrontmatterpage
}

\AtEndDocument{
  \ifcsdef{figexists\thevolume}{\label{figexists\thevolume}}{}
  \ifcsdef{tabexists\thevolume}{\label{tabexists\thevolume}}{}
}
\AtEndPreamble{\AtEndEnvironment{figure}{\csgdef{figexists\thevolume}{}}}
\def\makelof{
  \ifcsdef{r@figexists\thevolume}{
	  \tocchapter*{\listfigurename}
    \ifpuct@volumelists
      \printlist{lof}{}{}
    \else
      \ifnum\value{volume}<2
    	  \@starttoc{lof}% Print List of Figures
      \fi
    \fi
    \clearfrontmatterpage
  }{}
}
\AtEndPreamble{\AtEndEnvironment{table}{\csgdef{tabexists\thevolume}{}}}
\def\makelot{
  \ifcsdef{r@tabexists\thevolume}{
  	\tocchapter*{\listtablename}
    \ifpuct@volumelists
      \printlist{lot}{}{}
    \else
      \ifnum\value{volume}<2
      	\@starttoc{lot}% Print List of Tables
      \fi
    \fi
    \clearfrontmatterpage
  }{}
}

\def\makecolophon{
  \ifx\@colophon\undefined
  \else
    \ifdefempty{\@colophon}{}{
  	  \cleardoubleemptypage
      \hfill
      \vfill
      \ifdefempty{\@colophonname}{
        \pdfbookmark[0]{Colophon}{colophon\thevolume}
      }{
        \pdfbookmark[0]{\@colophonname}{\@colophonname\thevolume}
        \section*{\@colophonname}
      }
  	  \@colophon
    }
  \fi
}
\def\makedeclaration{
  \ifx\@declaration\undefined
  \else
    \ifdefempty{\@declaration}{}{
  	  \cleardoubleemptypage
      \pdfbookmark[0]{Declaration}{declaration\thevolume}
	    \chapter*{Declaration}
		  \@declaration
	    \bigskip

	    \noindent\textit{\@location, \@time}

	    \smallskip

	    \begin{flushright}
    	  \begin{tabular}{m{5cm}}
        	\\ \hline
	        \centering\@author \\
	      \end{tabular}
	    \end{flushright}
    }
  \fi
}

% ********************************************************************
% process options
% ********************************************************************

\ifpuct@letterpaper
  \PassOptionsToPackage{letterpaper}{geometry}
  \PassOptionsToPackage{letterpaper}{typearea}
\fi

\ifpuct@openright
  \PassOptionsToClass{open=right}{scrreprt}
\else
  \PassOptionsToClass{open=any}{scrreprt}
\fi

\ifpuct@cleardoubleempty
  \PassOptionsToClass{cleardoublepage=empty}{scrreprt}
\else
  \ifpuct@cleardoubleplain
    \PassOptionsToClass{cleardoublepage=plain}{scrreprt}
  \else
    \PassOptionsToClass{cleardoublepage=current}{scrreprt}
  \fi
\fi

\ifpuct@nolof
  \renewcommand*{\makelof}{}
\fi

\ifpuct@nolot
  \renewcommand*{\makelot}{}
\fi

\ifpuct@draft
  \puct@onesidetrue
  \ifpuct@twoside
    \puct@onesidefalse
  \fi
  \puct@doublespacingtrue
  \ifpuct@singlespacing
    \puct@doublespacingfalse
  \fi
  \PassOptionsToClass{draft}{scrreprt}
  \PassOptionsToPackage{drafting}{classicthesis}
  % disable all but toc in frontmatter
  \renewcommand{\maketitlepage}{}
  \renewcommand*{\makecopyrightpage}{}
  \renewcommand*{\makeabstract}{}
  \renewcommand*{\makeacknowledgements}{}
  \renewcommand*{\makelof}{}
  \renewcommand*{\makelot}{}
  \renewcommand*{\makepreface}{}
  \renewcommand*{\makededication}{}
  % disable all but bibliography in backmatter
  \renewcommand*{\makecolophon}{}
  \renewcommand*{\makedeclaration}{}
  \ifpuct@draftfigures
  \else
    \PassOptionsToPackage{final}{graphicx}
  \fi
\fi

% one-sided print mode, unless requested two-sided
\ifpuct@print
  \puct@onesidetrue
  \ifpuct@twoside
    \puct@onesidefalse
  \fi
\else
  \puct@volumesfalse
  \puct@volumelistsfalse
\fi

\ifpuct@volumes
\else
  \puct@volumelistsfalse
\fi

\ifpuct@proquest
  \puct@onesidetrue
  \ifpuct@twoside
    \puct@onesidefalse
  \fi
\fi

\ifpuct@oneside
  \PassOptionsToClass{twoside=false}{sccreprt}
  \PassOptionsToPackage{oneside}{typearea}
\else
  \puct@twosidetrue
  \PassOptionsToClass{twoside=true}{sccreprt}
  \PassOptionsToPackage{twoside}{geometry}
  \PassOptionsToPackage{twoside}{typearea}
\fi

% double-spaced proquest mode, unless requested single-spaced
\ifpuct@proquest
  \puct@doublespacingtrue
  \ifpuct@singlespacing
    \puct@doublespacingfalse
  \fi
\fi

% ********************************************************************
% load main class and packages
% ********************************************************************

\PassOptionsToClass{numbers=noenddot}{scrreprt}

\PassOptionsToClass{toc=idx,toc=listof}{scrreprt}
\LoadClass{scrreprt}
\RequirePackage{scrpage2}

\RequirePackage{scrindex}

\RequirePackage{xspace}

\renewcommand{\sfdefault}{iwona}
\PassOptionsToPackage{T1}{fontenc} % T2A for cyrillics
\RequirePackage{fontenc}     

\RequirePackage{textcomp} % fix warning with missing font shapes
\RequirePackage{scrhack} % fix warnings when using KOMA with listings package          
\RequirePackage{mparhack} % get marginpar right
\RequirePackage{fixltx2e} % fixes some LaTeX stuff 

\PassOptionsToPackage{printonlyused,smaller}{acronym}
\RequirePackage{acronym} % nice macros for handling all acronyms in the thesis

\ifpuct@nochapters
  \let\tocchapter\tocsection
  \renewcommand*\thesection{\arabic{section}}
\fi

\PassOptionsToPackage{square,numbers,sort&compress}{natbib}
\RequirePackage{natbib}
\renewcommand\bibsection{%
  \tocpartskip%
  \tocchapter*{\bibname}%
}
\AtBeginEnvironment{thebibliography}{\biblinespacing}
\AtEndEnvironment{thebibliography}{\bodyspacing}

\RequirePackage{tabularx} % better tables
\setlength{\extrarowheight}{3pt} % increase table row height
\newcommand{\tableheadline}[1]{\multicolumn{1}{c}{\spacedlowsmallcaps{#1}}}
\newcommand{\myfloatalign}{\centering} % to be used with each float for alignment
\RequirePackage{caption}

\ifpuct@volumes
  \RequirePackage{titletoc}
\fi

\RequirePackage{setspace}
\ifpuct@doublespacing
  \renewcommand*{\bodyspacing}{\doublespacing}
\else
  \linespread{1.05} % a bit more for Palatino
  \renewcommand*{\bodyspacing}{\singlespacing}
\fi
\renewcommand{\singlespacing}{\setstretch{1.05}}

\RequirePackage{imakeidx}
\indexsetup{level=\tocchapter*}

\RequirePackage{ifpdf}
\ifpuct@hyperref
  \ifpdf
    \PassOptionsToPackage{pdftex}{hyperref}
  \fi
  \PassOptionsToPackage{hyperfootnotes=true,pdfpagelabels}{hyperref}
  \RequirePackage{hyperref}  % backref linktocpage pagebackref
  \ifpdf
    \pdfcompresslevel=9
    \pdfadjustspacing=1 
  \fi
\else
  \providecommand\pdfbookmark[3][0]{}
\fi
\ifpdf
  \PassOptionsToPackage{pdftex}{graphicx}
  \RequirePackage{graphicx}
\fi

\RequirePackage{cleveref}

\ifpuct@hyperref
  \RequirePackage{bookmark}
  \hypersetup{%
    %draft,	% = no hyperlinking at all (useful in b/w printouts)
    colorlinks=true, linktocpage=true, pdfstartpage=3, pdfstartview=FitV,%
    % uncomment the following line if you want to have black links (e.g., for printing)
    %colorlinks=false, linktocpage=false, pdfborder={0 0 0}, pdfstartpage=3, pdfstartview=FitV,% 
    breaklinks=true, pdfpagemode=UseNone, pageanchor=true, pdfpagemode=UseOutlines,%
    plainpages=false, bookmarksnumbered, bookmarksopen=true, bookmarksopenlevel=1,%
    hypertexnames=true, pdfhighlight=/O,%nesting=true,%frenchlinks,%
    urlcolor=webbrown, linkcolor=RoyalBlue, citecolor=webgreen, %pagecolor=RoyalBlue,%
    %urlcolor=Black, linkcolor=Black, citecolor=Black, %pagecolor=Black,%
  }
\fi

% ********************************************************************
% load classicthesis and arsclassica
% ********************************************************************

\providecommand{\mLyX}{L\kern-.1667em\lower.25em\hbox{Y}\kern-.125emX\@}
\newcommand{\myVersion}{version 4.1\xspace}

\ifpuct@eulerchapternumbers
  \PassOptionsToPackage{eulerchapternumbers}{classicthesis}
\fi
\ifpuct@eulermath
  \PassOptionsToPackage{eulermath}{classicthesis}
\fi
\ifpuct@beramono
  \PassOptionsToPackage{beramono}{classicthesis}
\fi
\ifpuct@listings
  \RequirePackage{listings} 
  %\lstset{emph={trueIndex,root},emphstyle=\color{BlueViolet}}%\underbar} % for special keywords
  \lstset{language=[LaTeX]Tex,%C++,
    keywordstyle=\color{RoyalBlue},%\bfseries,
    basicstyle=\small\ttfamily,
    %identifierstyle=\color{NavyBlue},
    commentstyle=\color{Green}\ttfamily,
    stringstyle=\rmfamily,
    numbers=none,%left,%
    numberstyle=\scriptsize,%\tiny
    stepnumber=5,
    numbersep=8pt,
    showstringspaces=false,
    breaklines=true,
    frameround=ftff,
    frame=single,
    belowcaptionskip=.75\baselineskip
    %frame=L
  } 
  \PassOptionsToPackage{listings}{classicthesis}
\fi
\ifpuct@subfig
  \RequirePackage{subfig}
  \PassOptionsToPackage{subfig}{classicthesis}
\fi
\ifpuct@pdfspacing
  \PassOptionsToPackage{pdfspacing}{classicthesis}
\fi
\ifpuct@parts
  \PassOptionsToPackage{parts}{classicthesis}
\fi
\ifpuct@linedheaders
  \PassOptionsToPackage{linedheaders}{classicthesis}
\fi
\ifpuct@nochapters
  \PassOptionsToClass{nochapters}{classicthesis}
\fi
\RequirePackage{classicthesis}

\ifpuct@arsclassica
  \ifpuct@hyperref
    \let\orighypersetup\hypersetup
    \def\donothing#1{}
    \let\hypersetup\donothing
  \fi
  \RequirePackage{arsclassica}
  \ifpuct@hyperref
    \let\hypersetup\orighypersetup
  \fi
  \lehead{\small\thepage\kern1em\color{halfgray}%
  \vline\color{halfgray}\hspace{0.5em}\headmark\hfil} 
  \rohead{\hfil{\color{halfgray}\headmark\hspace{0.5em}}%
  \small{\color{halfgray}\vline}\kern1em\thepage}
  \ifpuct@twoside\rofoot[\thepage]{}\fi
  \ifpuct@parts
    \titleformat{\part}[display]
      {\normalfont\centering\large}%
      {\thispagestyle{scrplain}\partname~\MakeTextUppercase{\thepart}}{1em}%
      {\color{Maroon}\spacedallcaps}[\bigskip\normalfont\normalsize\color{Black}\begin{quote}\ct@parttext\end{quote}]
  \fi
  \ifpuct@linedheaders
    \titleformat{\chapter}[display]%             
      {\relax}{\raggedleft{\color{halfgray}\chapterNumber\thechapter} \\ }{0pt}%
      {\titlerule\vspace*{.9\baselineskip}\raggedright\spacedallcaps}%
      [\normalsize\vspace*{.8\baselineskip}\titlerule]
  \fi
\else
  \lehead{\small\thepage\kern2em\headmark\hfil}
  \rohead{\hfil{\headmark}\small\kern2em\thepage}
  \ifpuct@linedheaders
    \setheadsepline{1pt}
  \else
    \titleformat{\chapter}[display]%
      {\relax}{\raggedleft\color{halfgray}\chapterNumber\thechapter}{0pt}%
      {\raggedright\spacedallcaps}%
      [\normalsize\vspace*{.8\baselineskip}\titlerule]
  \fi
  \ifpuct@parts
    \titleformat{\part}[display]
      {\normalfont\centering\large}%
      {\thispagestyle{scrplain}\partname~\MakeTextUppercase{\thepart}}{1em}%
      {\color{Maroon}\spacedallcaps}%
      [\bigskip\normalfont\normalsize\color{Black}\begin{quote}\ct@parttext\end{quote}]
  \fi
\fi

\deffootnote{1em}{0em}{\thefootnotemark\hspace*{.5em}}

\DeclareCaptionLabelFormat{slsc}{\spacedlowsmallcaps{#1} {\rm #2}}
\captionsetup{format=hang,font=normalfont,labelformat=slsc,labelfont=normalfont}

\ifpuct@allcapstitle
  \renewcommand*{\titlecase}[1]{\spacedallcaps{#1}}
\fi

% shorthand for appendix with preamble text
\ifpuct@parts
  \def\ttl@tocpart{\def\ttl@a{\protect\numberline{\thepart}\@gobble{}}}
  \setlength{\cftpartnumwidth}{\cftchapnumwidth}
  \pretocmd{\oldpart}{\cleardoublepage}{}{}
  \renewcommand{\thepart}{\scshape\roman{part}}
  \def\@appendixpreamble{}
  \def\appendixpreamble#1{\gdef\@appendixpreamble{#1}}
  \let\origappendix\appendix
  \renewcommand\appendix{
    \origappendix
    \ifdefempty{\@appendixpreamble}{}{
      \ctparttext{\@appendixpreamble}:
    }
    \tocpart*{Appendix}
  }
\fi

% ********************************************************************
% volumes
% ********************************************************************

% \RequirePackage{tocloft}
\def\@volname{Volume}
\def\volname#1{\gdef\@volname{#1}}
\newcommand{\volumename}{\@volname}
\def\@volumetitle{}
\newcommand{\volumetitle}[1]{\gdef\@volumetitle{%
\volumename\ \thevolume\ifstrempty{#1}{}{\cftvolumeaftersnum\ #1}}}

\newlistentry{volume}{toc}{-3}
\renewcommand{\cftvolumefont}{\large\color{RoyalBlue}\spacedlowsmallcaps}
\renewcommand{\thevolume}{\Roman{volume}}
\cftsetindents{volume}{0in}{0in}
\renewcommand{\cftbeforevolumeskip}{\cftbeforepartskip}
\renewcommand{\cftvolumeaftersnum}{:}
\renewcommand{\cftvolumeafterpnum}{\vspace{\cftbeforevolumeskip}}
\cftpagenumbersoff{volume}

\newcommand*{\tocvolume}[1]{
  \refstepcounter{volume}
  \volumetitle{#1}
  \ifpuct@volumelists
    \startcontents
    \startlist{lof}
    \startlist{lot}
  \else
    \ifnum\value{volume}=1
      \startcontents
    \fi
  \fi
  \addcontentsline{toc}{volume}{\@volumetitle}
}

\newcommand*{\volume}[1][]{
  \ifpuct@volumes
    \ifnum\value{volume}>0
      \makeendmatter
      \titlematter
      \ifcsdef{figexists\thevolume}{\label{figexists\thevolume}}{}
      \ifcsdef{tabexists\thevolume}{\label{tabexists\thevolume}}{}
    \fi
    \tocvolume{#1}
    \ifnum\value{volume}>1
      \maketitlepage
      \frontmatter
      \maketoc
      \ifpuct@volumelists
        \makelof
        \makelot
        \tocpartskip
      \fi
      \mainmatter
    \fi
  \fi
}

% ********************************************************************
% geometry
% ********************************************************************

\RequirePackage{geometry}
\geometry{top=1in,bottom=1in,foot=0.25in,includehead=true}
\ifdefstring{\puct@school}{upenn}{
  \geometry{includefoot=true}
}{\relax}

\ifpuct@print
  \ifpuct@hyperref
    \hypersetup{hidelinks}
  \fi
  \geometry{inner=1.5in,outer=1in}
\else
  \ifpuct@hyperref
    \hypersetup{bookmarksnumbered,pdftitle=\@title,pdfauthor=\@author}
  \fi
  \geometry{inner=1in,outer=1in}
\fi

%%% try to avoid overfull lines by limiting how far it is okay to exceed the margins
%%% http://www.tex.ac.uk/cgi-bin/texfaq2html?label=overfull
\setlength{\emergencystretch}{2em}

% stretchy margins between chapters and parts in TOC, to avoid orphan/widow chapters
\setlength{\cftbeforechapskip}{0.1em plus 0.1em}
\setlength{\cftbeforepartskip}{1.0em plus 0.3em}

%%% Alter LaTeX defaults to try to eliminate all widows and orphans
\clubpenalty=10000
\widowpenalty=10000
\flushbottom

% Tweak float placements
% From: http://mintaka.sdsu.edu/GF/bibliog/latex/floats.html "Controlling LaTeX
% Floats" and based on: http://www.tex.ac.uk/cgi-bin/texfaq2html?label=floats
% LaTeX defaults listed at: http://people.cs.uu.nl/piet/floats/node1.html
% Alter some LaTeX defaults for better treatment of figures:
% See p.105 of "TeX Unbound" for suggested values.
% See pp. 199-200 of Lamport's "LaTeX" book for details.
%   General parameters, for ALL pages:
\renewcommand{\topfraction}{0.85} % max fraction of floats at top
\renewcommand{\bottomfraction}{0.6} % max fraction of floats at bottom
%   Parameters for TEXT pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{4}     % 2 may work better
\setcounter{dbltopnumber}{2}    % for 2-column pages
\renewcommand{\dbltopfraction}{0.66}  % fit big float above 2-col. text
\renewcommand{\textfraction}{0.15}  % allow minimal text w. figs
%   Parameters for FLOAT pages (not text pages):
\renewcommand{\floatpagefraction}{0.66} % require fuller float pages
% N.B.: floatpagefraction MUST be less than topfraction !!
\renewcommand{\dblfloatpagefraction}{0.66}  % require fuller float pages

\listfiles
