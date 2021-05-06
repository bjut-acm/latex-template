\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{main/problem}[Template for problem]

% \LoadClass[a4paper,12pt]{article}
\LoadClass[a4paper,12pt,parskip=full,headings=standardclasses]{scrartcl} % consider full-

\RequirePackage{main/zh_fonts}
\usepackage{enumitem}

\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=magenta,      
    urlcolor=cyan,
    linktoc=all,
}


% \LoadClass[16pt]{article}
% \RequirePackage[UTF8]{ctex}
\RequirePackage[scale={0.75,0.77}]{geometry}
\RequirePackage{verbatim}
% \RequirePackage{fancyvrb}
% \RequirePackage[skip=18.125pt]{parskip}
\RequirePackage{longtable}
\RequirePackage{tabularx}

\RequirePackage{needspace}

% \widowpenalty=0
% \setlength{\parfillskip}{0pt}

\setlength{\LTpre}{20.2pt}
\setlength{\LTpost}{-1.95pt}

% \topskip=8.0pt
\topskip=26.125pt

\RequirePackage[T1]{fontenc}
\RequirePackage{inconsolata}
% \RequirePackage[variablett]{lmodern}



% \RequirePackage{setspace}
% \onehalfspacing
\linespread{1.25}
% \setstretch{1.25}
\lineskip=0pt plus 0pt minus 0pt
% \parskip=0pt plus 0pt minus 0pt
 
\RequirePackage{colortbl}
\RequirePackage{xcolor}
% \RequirePackage{array}

\RequirePackage{graphicx}
\RequirePackage{makecell}
% \RequirePackage{wrapfig}

\RequirePackage[export]{adjustbox}


\newenvironment{mytabular}[1][1]{%
  \renewcommand*{\arraystretch}{#1}%
  \tabular%
}{%
  \endtabular
}

% \textfloatsep=0pt
% \intextsep=0pt
% \dblfloatsep=0pt
 
\expandafter\def\expandafter\normalsize\expandafter{%
    \normalsize%
    \setlength{\intextsep}{0pt}%
    \setlength{\textfloatsep}{0pt}%
    \setlength{\dblfloatsep}{0pt}%
    \setlength{\abovecaptionskip}{0pt}%
    \setlength{\belowcaptionskip}{0pt}%
    \setlength{\abovedisplayskip}{0pt}%
    \setlength{\belowdisplayskip}{0pt}%
    \setlength{\abovedisplayshortskip}{0pt}%
    \setlength{\belowdisplayshortskip}{0pt}%
}


% \baselineskip=18.125pt plus 0pt minus 0pt
% \setlength{\parskip}{\baselineskip}
% \parskip=18.125pt plus 0pt minus 0pt
% \setlength{\parindent}{0pt}
% \setlength{\parskip}{0pt}
\newlength{\oldparskip}
\oldparskip=\parskip




\RequirePackage[binary-units=true]{siunitx}

\RequirePackage{booktabs}
% \RequirePackage{titlesec}
% \titleformat*{\section}{\Huge\sffamily\bfseries}
% \titleformat*{\subsection}{\Large\sffamily\bfseries}

% \titlespacing*{\section}{0pt}{0pt}{0pt}
% \titlespacing*{\subsection}{0pt}{8.75pt}{0pt}

\RedeclareSectionCommand[
  beforeskip=0pt,
  afterskip=0pt,
  runin=false,
  font=\Huge\sffamily\bfseries
]{section}

\RedeclareSectionCommand[
  beforeskip=8.75pt,
  afterskip=0pt,
  runin=false,
  font=\Large\sffamily\bfseries
]{subsection}

\setlength{\textfloatsep}{0pt}

\setcounter{secnumdepth}{0}

\RequirePackage{titling}
\pretitle{\vspace{12pt}\LARGE\bfseries\begin{center}\sffamily}
\posttitle{\end{center}\vspace{12pt}} 

\newcommand{\probtitle}[1]{{\section{\main\quad#1}}}

\newcommand{\problimit}[2]{{%
    % \vspace{-13pt}
    % \vspace{5.75pt}
    \small%
    Time limit $\SI{#1}{\second}$ ·\ Memory limit $\SI{#2}{\mebi\byte}$%
    % \vspace*{8.75pt plus 0pt minus 0pt}
    \vspace{8.75pt}%
}}

\newenvironment{probdesc}{%
    \subsection*{Problem description}%
}{}


\newcommand{\probdescr}[1]{{%
    \begin{probdesc}%
    {#1}%
    \end{probdesc}%
}}

\newcommand{\probinout}[2]{{%
    \needspace{10em}%
    \subsection*{Input \& output}%
    % \begin{longtable}[l]{@{}p{0.09\textwidth}>{\parskip=\oldparskip}p{0.85\textwidth}}
    \begin{longtable}[l]{%
        @{}%
        p{\dimexpr 0.14\textwidth-2\tabcolsep \relax}%
        >{\parskip=\oldparskip}%
        p{\dimexpr 0.86\textwidth-2\tabcolsep \relax}%
    }%
    \textbf{Input: }&{#1}\tabularnewline\addlinespace[18pt]%
    \textbf{Output: }&{#2}\end{longtable}%
}}

\newcommand{\probsampinout}{{%
    \setlength{\parskip}{0pt}%
    % \setlength{\tabcolsep}{0pt}%
    % \setlength{\arrayrulewidth}{0pt}%
    % \setlength{\topskip}{0pt}
    % \setlength{\partopsep}{0pt}
    % \preto{\@verbatim}{\topsep=0pt \partopsep=0pt }
    % \renewcommand*{\arraystretch}{1}
    % \vspace*{-0.5pt}
    % \vspace*{4.7pt}
    \vspace{14.9pt}%
    % \vspace{34.025pt}
    \vspace*{19.125pt}%
    % \begin{tabular}{p{0.47\textwidth}p{0.47\textwidth}}
    % \begin{tabular}{%
    \begin{tabularx}{\textwidth}{%
        XX%
    }%
    \toprule%
    \textbf{Sample Input} & \textbf{Sample Output} \tabularnewline%
    \midrule%
    \vspace{-8.4pt}%
    \verbatiminput{\main/SAMPLE.in} &%
    \vspace{-8.4pt}%
    \verbatiminput{\main/SAMPLE.out}%
    \tabularnewline%
    \bottomrule%
    \end{tabularx}{\parfillskip=0pt\par}%
    % \end{tabular}%
    % \vspace*{-1pt}
    \vspace{4.625pt}%
}}

\newcommand{\probhint}[1]{{%
    \vspace{8.55pt}%
    \begin{longtable}[l]{@{}p{0.09\textwidth}>{\parskip=\oldparskip}p{0.85\textwidth}}%
    \textbf{Hint: }&{#1}\end{longtable}%
}}

\RequirePackage{listings}
% \RequirePackage[lighttt]{lmodern}
% \RequirePackage[scaled=0.85]{FiraMono}

\lstset{basicstyle=\fontsize{11}{14.5}\selectfont\ttfamily, keywordstyle=\bfseries, aboveskip=0pt, belowskip=0pt, basewidth={.555em}}


% \RequirePackage{atbegshi,picture,xcolor}
% \AtBeginShipout{%
%   \AtBeginShipoutUpperLeft{%
%     \color{red}%
%     \put(\dimexpr 1in+\oddsidemargin,
%          -\dimexpr 1in+\topmargin+\headheight+\headsep+\topskip)%
%       {%
%       \vtop to\dimexpr\vsize+\baselineskip{
%          \hrule
%          \leaders\vbox to\baselineskip{\hrule width\hsize\vfill}\vfill
%       }%
%       }%
%   }%
% }


% \vfill\clearpage
