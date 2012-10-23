%% uumthesis.cls 2012/10/22 version 1.02
%% 
%% This is the UUM thesis LaTeX class for postgraduate research students
%%  of Universiti Utara Malaysia (UUM), Kedah, Malaysia, formatted
%% according to the Thesis Guidelines for PhD and Master by Research
%% published by UUM's Awang Had Salleh Graduate School of Arts and
%% Sciences. Credits go to Dr.~Mohd.~Hasbullah bin Omar for getting
%% endorsement of the class and template files from the Graduate School.
%% 
%% 
%% The latest version and documentation of uumthesis can be obtained at
%% http://liantze.penguinattack.org/latextypesetting.html.
%% Contact liantze AT gmail DOT com if you have any questions or
%% assistance or feedback.  Apologies if I can't respond immediately, but
%% I'll always try.
%%
%%
%% Copyright (c) 2012 by Lim Lian Tze
%%
%% Current maintainer: Lim Lian Tze (liantze@gmail.com)
%
%  BRIEF CHANGELOG
%  ===============
%  v1.02 October 22 2012
%      - Changed bibliography heading to "References" and single
%        line spacing for the references list.
%
%  v1.01 October 21 2012
%      - Included hyperref support -- now with nice PDF bookmarks!
%      - Removed apacite from uumthesis.cls; users may now specify which
%        bibliography style to use in the .tex file, e.g. IEEEtran or ACM.
%
%  v1.0 September 21 2012
%      - First released version.
%
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{uumthesis}[2012/10/22 LaTeX2e class for UUM Thesis v1.02.  Copyright (c) 2012 Lim Lian Tze (liantze@gmail.com)]

\LoadClass[12pt,a4paper,oneside,oldfontcommands]{memoir}

%%%%%%%%%
% Fonts and encodings
%%%%%%%%%
\RequirePackage{ifxetex}
\ifxetex
\RequirePackage{fontspec}
\setmainfont{Times New Roman}
\setsansfont{Arial}
\else
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{mathptmx}
\RequirePackage{helvet}
\fi

%%%%%%%%%
% Languages (for BM hyphenation)
%%%%%%%%%
\RequirePackage[bahasam,english]{babel}

%%%%%%%%%%
% Page layout
%%%%%%%%%%
\settrimmedsize{297mm}{210mm}{*}
\setlrmarginsandblock{40mm}{25.4mm}{*}
\setulmarginsandblock{25.4mm}{30mm}{*}
\setheadfoot{\baselineskip}{5mm}
\pagestyle{plain}
\newlength\tmplength
\setlength\tmplength{\textwidth}
\addtolength{\tmplength}{20mm}
\makerunningwidth{plain}{\tmplength}
\setheaderspaces{15mm}{*}{*}
%\makeoddhead{plain}{}{}{\fontsize{10pt}{12pt}\selectfont\thepage}
%\makeevenhead{plain}{}{}{\fontsize{10pt}{12pt}\selectfont\thepage}
\makeoddhead{plain}{}{}{}
\makeevenhead{plain}{}{}{}
\makeoddfoot{plain}{}{\small\thepage}{}
\makeevenfoot{plain}{}{\small\thepage}{}
\checkandfixthelayout

%%%%%%%%
% Degree type and faculty
%%%%%%%%
\newcommand{\degreetype}[1]{\def\@degreetype{#1}}


%%%%%%%%%%%%
% Chapter headings
%%%%%%%%%%%%
\RequirePackage{fmtcount}
%\setlength\beforechapskip{2.5cm}
%\addtolength\beforechapskip{-\baselineskip}
%\setlength\midchapskip{\onelineskip}
%\renewcommand*\chapterheadstart{\vspace*{.4mm}}
\renewcommand*\chapterheadstart{}
%\addtolength\beforechapskip{-\baselineskip}
\setlength\midchapskip{-6pt}
\setlength\afterchapskip{-12pt}
%\renewcommand{\printchaptername}{{\chapnamefont\MakeUppercase{\chaptername}}}
%\renewcommand{\printchapternum}{\chapnumfont\NUMBERstring{chapter}}
%\renewcommand*{\afterchapternum}{\vskip\midchapskip}
%\renewcommand*{\printchaptertitle}[1]{{\chaptitlefont\MakeUppercase{#1}\par}}
\renewcommand{\tocheadstart}{\clearpage}
\renewcommand{\aftertoctitle}{\par\vspace*{28pt}\setstretch{1.5}}
\renewcommand{\lotheadstart}{\clearpage}
\renewcommand{\afterlottitle}{\par\vspace*{28pt}\setstretch{1.5}}
\renewcommand{\lofheadstart}{\clearpage}
\renewcommand{\afterloftitle}{\par\vspace*{28pt}\setstretch{1.5}}

%%%%%%%%
% Title page
%%%%%%%%
\renewcommand{\maketitle}{%
   \begin{titlingpage}
      \vspace*{18mm}
%      \begin{adjustwidth}{-15mm}{0pt}
      \SingleSpacing
      \centering
      \bfseries\fontsize{14pt}{16pt}\selectfont
      \MakeUppercase{\@title}\par
      \vfill
      \MakeUppercase{\@author}\par
      \vfill
      \MakeUppercase{\@degreetype}\\
      UNIVERSITY UTARA MALAYSIA\\
      \@date\par
%      \end{adjustwidth}
      \vspace*{37mm}
   \end{titlingpage}

   \chapter{Perakuan Kerja Tesis/Disertasi}
   (Please substitute signed document for this page)

   \chapter{Permission to Use}
\setstretch{1.5}
   In presenting this thesis in fulfilment of the requirements for a postgraduate degree from Universiti Utara Malaysia, I agree that the Universiti Library may make it freely available for inspection. I further agree that permission for the copying of this thesis in any manner, in whole or in part, for scholarly purpose may be granted by my supervisor(s) or, in their absence, by the Dean of Awang Had Salleh Graduate School of Arts and Sciences. It is understood that any copying or publication or use of this thesis or parts thereof for financial gain shall not be allowed without my written permission. It is also understood that due recognition shall be given to me and to Universiti Utara Malaysia for any scholarly use which may be made of any material from my thesis.

Requests for permission to copy or to make other use of materials in this thesis, in whole or in part, should be addressed to:

\begin{center}
Dean of Awang Had Salleh Graduate School of Arts and Sciences\\ 
UUM College of Arts and Sciences\\
Universiti Utara Malaysia\\
06010 UUM Sintok
\end{center}
}


%%%%%%%%%
% Some switches for styling ToC entries
%%%%%%%%%
\cftinsertcode{NoBoldChapter}{
\renewcommand{\cftchapterfont}{\mdseries}
\renewcommand{\cftchapterpagefont}{\mdseries}
\renewcommand{\cftchapterleader}{\cftchapterfont\cftdotfill{\cftchapterdotsep}}
\renewcommand{\cftbeforechapterskip}{0pt}
}
\cftinsertcode{BoldChapter}{
\renewcommand{\cftchapterfont}{\bfseries}
\renewcommand{\cftchapterpagefont}{\bfseries}
\renewcommand{\cftbeforechapterskip}{\onelineskip}
}

%%%%%%%%%%%%
% Line and paragraph spacing
%%%%%%%%%%%%
%\DoubleSpacing
\abnormalparskip{\onelineskip}
\setlength{\parindent}{0pt}
\DisemulatePackage{setspace}
\RequirePackage{setspace}
\setstretch{1.75}
\patchcommand{\frontmatter}{
\selectlanguage{english}
\renewcommand*\chapnamefont{\large\bfseries}
\renewcommand*\chapnumfont{\large\bfseries\centering}
\renewcommand*\chaptitlefont{\large\bfseries\centering}
\renewcommand*\printchapternonum{}
\setlength\parindent{0pt}
\abnormalparskip{\baselineskip}
\cftinserthook{toc}{NoBoldChapter}
}{
\ifpdf\pdfbookmark[-1]{Front Matter}{front}\fi
\ifxetex\pdfbookmark[-1]{Front Matter}{front}\fi
}
\patchcommand{\mainmatter}{
\setstretch{1.75}
%\setlength\parindent{12.5mm}
%\traditionalparskip
\selectlanguage{english}
\renewcommand*\chapnamefont{\large\bfseries}
\renewcommand*\chapnumfont{\large\bfseries\centering}
\renewcommand*\chaptitlefont{\large\bfseries\centering}
\renewcommand{\printchaptername}{{\chapnamefont\MakeUppercase{\chaptername}}}
\renewcommand{\printchapternum}{\chapnumfont\NUMBERstring{chapter}}
\renewcommand*{\afterchapternum}{\vskip\midchapskip}
\renewcommand*{\printchaptertitle}[1]{\chaptitlefont\MakeUppercase{##1}}
\cftinserthook{toc}{BoldChapter}
\let\orichapter\chapter
\renewcommand\chapter{\@ifstar{\mystarchap}{\mychap}}
\newcommand\mychap[1]{\orichapter[\texorpdfstring{\MakeUppercase{##1}}{##1}]{##1}}
\newcommand\mystarchap[1]{\orichapter*{##1}}
}{
\ifpdf\pdfbookmark[-1]{Main Chapters}{main}\fi
\ifxetex\pdfbookmark[-1]{Main Chapters}{main}\fi
}
\RequirePackage{etoolbox}
\AtBeginEnvironment{quote}{\SingleSpacing}
\AtBeginEnvironment{quotation}{\SingleSpacing}

%%%%%%%%%%%%
% More compact lists
%%%%%%%%%%%%
\RequirePackage{enumitem}
\setlist{noitemsep}





%%%%%%%%%%%%
% Sectional headings
%%%%%%%%%%%%
\setsecnumdepth{paragraph}
\setsecheadstyle{\normalsize\bfseries}
\setbeforesecskip{1.5\onelineskip}
\setsubsecheadstyle{\normalsize\bfseries}
\setbeforesubsecskip{1.5\onelineskip}
\setsubsubsecheadstyle{\normalsize\bfseries}
\setbeforesubsubsecskip{1.5\onelineskip}
\setparaheadstyle{\normalsize\bfseries}
\setbeforeparaskip{1.5\onelineskip}
\setafterparaskip{1.5ex plus .2ex}

%%%%%%%%%%%
% Captions
%%%%%%%%%%%
\RequirePackage{caption}
\captionsetup[figure]{justification=raggedright,font=it,singlelinecheck=false}
\captionsetup[table]{position=above,font=it}

%%%%%%%%%%%
% ToC etc
%%%%%%%%%%%
\settocdepth{paragraph}
\addto\captionsenglish{
   \renewcommand*\contentsname{Table of Contents}
   \renewcommand*\appendixname{Appendix}
}
\renewcommand{\cftchapterdotsep}{\cftdotsep}
\setlength{\cftsectionindent}{0pt}
\setlength{\cftsubsectionindent}{\cftsectionindent}
\addtolength{\cftsubsectionindent}{\cftsectionnumwidth}
\setlength{\cftsubsubsectionindent}{\cftsubsectionindent}
\addtolength{\cftsubsubsectionindent}{\cftsubsectionnumwidth}
\setlength{\cftparagraphindent}{\cftsubsubsectionindent}
\addtolength{\cftparagraphindent}{\cftsubsubsectionnumwidth}
\let\regularChapterNumberLine\chapternumberline
\renewcommand\chapternumberline[1]{CHAPTER\space\NUMBERstringnum{#1}\space\space\space}
\renewcommand{\cftfigurename}{Figure }
\renewcommand{\cfttablename}{Table }

\cftinsertcode{A}{%
%\let\chapternumberline\regularChapterNumberLine
\setcounter{tocdepth}{-1}
}
\cftinsertcode{B}{%
\let\chapternumberline\regularChapterNumberLine
\setcounter{tocdepth}{0}
\renewcommand*{\cftchaptername}{Appendix }
\renewcommand*{\cftchapterpresnum}{Appendix }
}


%%%%%%%%%%
% Appendix
%%%%%%%%%%
\newcommand{\listappname}{List of Appendices}
\newlistof{listofappendices}{apd}{\listappname}
\renewcommand{\apdheadstart}{\clearpage}
\renewcommand{\afterapdtitle}{\par\vspace*{22pt}\setstretch{1.5}}

\addtodef\appendix{%
\clearpage
\ifpdf\pdfbookmark[-1]{Appendices}{back}\fi
\ifxetex\pdfbookmark[-1]{Appendices}{back}\fi
\renewcommand\chaptername{\appendixname}
\renewcommand{\printchapternum}{\chapnumfont\Alph{chapter}}
\cftinserthook{toc}{A}
\cftinserthook{apd}{NoBoldChapter}
\cftinserthook{apd}{B}
\let\OldChapter\chapter
\renewcommand*{\chapter}[1]{%
\OldChapter{##1}%
\addcontentsline{apd}{chapter}{\protect\numberline{\thechapter}{##1}}
}
}{}

%%%%%%%%%%%%
% Bibliography
%%%%%%%%%%%%
\addto{\captionsenglish}{%
  \renewcommand{\bibname}{REFERENCES}
}
\AtBeginEnvironment{thebibliography}{\SingleSpacing}
\AtBeginEnvironment{bibitemlist}{\vspace{\onelineskip}}

\RequirePackage[bookmarksnumbered,bookmarksdepth=4]{hyperref}

%%%%%%%%%%%%
% Abstracts
%%%%%%%%%%%%
\renewenvironment{abstract}
{\chapter{Abstract}\begin{SingleSpace}}
{\end{SingleSpace}}

\newenvironment{abstrak}
{\chapter{Abstrak}\begin{SingleSpace}\otherlanguage{bahasam}}
{\end{SingleSpace}}

\newenvironment{acknowledge}
{\chapter{Acknowledgements}\setstretch{1.5}}
{}

\newcommand{\myglosslist}{\chapter{Glossary of Terms}}

\newcommand{\myabbrevlist}{\chapter{List of Abbreviations}}

