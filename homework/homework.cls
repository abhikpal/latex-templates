% homework.cls
%
% A plain LaTeX2e document class for typesetting homeworks.
%
% 2016-Aug-01 Abhik Pal ab (dot) pal (at) jacobs-university.de


% --- CLASS: IDENTIFICATION
% ---
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{homework}[2019/02/04 v0.1e Homework]

% --- CLASS: INITIAL CODE
% ---

% --- CLASS: DECLARATION OF OPTIONS
% ---
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\PassOptionsToPackage{hyphens}{url}

% --- CLASS: EXECUTING OF OPTIONS
% ---
\ProcessOptions\relax

% --- CLASS: PACKAGE LOADING
% ---

\LoadClass[a4paper]{article}
\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage{amsmath, amssymb, amsthm}
\RequirePackage{minted}
\RequirePackage[
 tracking=smallcaps,
 letterspace=50,% default: 100
]{microtype}
\RequirePackage{booktabs}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[bookmarks=true,hidelinks]{hyperref}
\RequirePackage{graphicx}
\RequirePackage{subcaption}
\RequirePackage[labelfont=bf, font=footnotesize]{caption}
\RequirePackage[font=footnotesize]{subcaption}
\RequirePackage[dvipsnames, usenames]{xcolor}
\RequirePackage{tikz}


% --- CLASS: MAIN CODE
% ---

\newcommand{\theauthoremail}{}
\newcommand{\theauthor}{}
\newcommand{\thecoursename}{}
\newcommand{\thecourseterm}{}
\newcommand{\thecoursenum}{}
\newcommand{\thehwnum}{}

\renewcommand{\author}[1]{\renewcommand{\theauthor}{#1}}
\newcommand{\authoremail}[1]{\renewcommand{\theauthoremail}{#1}}
\newcommand{\coursename}[1]{\renewcommand{\thecoursename}{#1}}
\newcommand{\courseterm}[1]{\renewcommand{\thecourseterm}{#1}}
\newcommand{\coursenum}[1]{\renewcommand{\thecoursenum}{#1}}
\newcommand{\hwnum}[1]{\renewcommand{\thehwnum}{#1}}

\setminted{fontsize=\footnotesize}

\renewcommand{\thesection}{Problem \arabic{section}}
\renewcommand{\thesubsection}{\normalfont(\arabic{section}.\alph{subsection})}
\renewcommand{\thesubsubsection}{\normalfont(\arabic{section}.\alph{subsection}.\roman{subsubsection})}

\titleformat*{\section}{\normalsize\bfseries}
\titleformat*{\subsection}{\normalsize\bfseries\em}
\titleformat*{\subsubsection}{\normalsize\em}
\titleformat*{\paragraph}{\normalsize\bfseries}
\titleformat*{\subparagraph}{\normalsize\bfseries}

\lhead{\footnotesize \uppercase{\theauthor}}
\chead{\footnotesize \thecoursenum: HW \thehwnum}
\rhead{\footnotesize \thepage}
\cfoot{}
\renewcommand{\headrulewidth}{0pt}
\pagestyle{fancy}

\hypersetup{ %
    pdfauthor   = {\theauthor},
    pdftitle    = {Homework \thehwnum: \thecoursename (\thecourseterm)},
    pdfcreator  = {LaTeX with hyperref package},
    pdfproducer = {pdflatex + auctex}
}


% -- new stuff

\AtBeginDocument{%
  \thispagestyle{empty}
  \begin{raggedright}
  \textbf{\large Homework \thehwnum} \\
  \textbf{\large \emph{\thecoursename (\thecourseterm)}} \\[2em]
  \theauthor \\
  \texttt{\theauthoremail} \vspace*{2em}
  \end{raggedright}
}

\AtEndDocument{%
}
