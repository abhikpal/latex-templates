% anmolmla.cls
%
% A LaTeX2e document class for typesetting assignments based on 
% Anmol Tikoo's MLA variant. The spectre of Anmol Tikoo will no longer
% haunt your dinner table conversations and walks around the AQ
% because the link to one citation was green!
%
% 2016-Aug-01 Abhik Pal abhikp (at) muwci.net


% --- CLASS: IDENTIFICATION
% ---
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{anmolmla}[2016/08/01 v0.1e Anmol MLA variant class]

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
\LoadClass{article}
\RequirePackage[top=1.5in, bottom=1in, right=1in, left=1in, heightrounded, a4paper]{geometry}
\RequirePackage{fancyhdr}

\RequirePackage{setspace}
\RequirePackage[bookmarks]{hyperref}

\RequirePackage[sc]{mathpazo}
\RequirePackage{xcolor}
\RequirePackage[
 tracking=smallcaps,
 letterspace=50,% default: 100
]{microtype}

\RequirePackage[backend=biber,style=mla]{biblatex}


% --- CLASS: MAIN CODE
% ---
\hypersetup{
    colorlinks,
    linkcolor={black!85},
    urlcolor={blue!80!black},
    citecolor={black!85}
}

\setlength{\parindent}{0.5in}
\setlength{\skip\footins}{15mm plus 0mm}
\setlength{\parskip}{1.45em}
\setlength{\headheight}{15.2pt}

\newcommand{\thetitle}{}
\newcommand{\theauthorlastname}{}
\renewcommand{\theauthor}{}
\newcommand{\thedate}{\today}
\newcommand{\theinstructor}{}
\newcommand{\theclassdetails}{}
\newcommand{\wordcount}{0}

\renewcommand{\title}[1]{\renewcommand{\thetitle}{#1}}
\renewcommand{\author}[1]{\renewcommand{\theauthor}{#1}}
\renewcommand{\date}[1]{\renewcommand{\thedate}{#1}}
\newcommand{\authorlastname}[1]{\renewcommand{\theauthorlastname}{#1}}
\newcommand{\instructor}[1]{\renewcommand{\theinstructor}{#1}}
\newcommand{\classdetails}[1]{\renewcommand{\theclassdetails}{#1}}

\newcommand{\setwordcount}[1]{\renewcommand{\wordcount}{#1}}

\defbibheading{bibliography}{\section*{Work(s) Cited}}
\addbibresource{ref.bib}

\pagestyle{fancy}
\fancyhf{}
\fancyhead[R]{\color{black!85} \theauthorlastname \qquad\thepage}
\renewcommand{\headrulewidth}{0pt}

\AtBeginDocument{%
    \color{black!90}
    \pagestyle{fancy}
    
    \noindent%
    \textbf{Name:} \theauthor\\
    \textbf{Instructor:} \theinstructor\\
    \theclassdetails\\
    \textbf{Date:} \thedate

    \begin{center}
        \thetitle
    \end{center}
    
    \onehalfspacing
}

\AtEndDocument{%
    \vfill
    \footnotesize
    \noindent\textsc{[word count: \wordcount\ words]}
    % \noindent\textsc{peer reviewers:}
    % \begin{itemize}
    %     \item[--] 
    % \end{itemize}

    \newpage
    \normalsize
    \printbibliography
}
