% \nonstopmode

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{healthforge_article}[30/06/2015 HealthForge E Corp Example Class]
\LoadClass{book}
\RequirePackage[a4paper,bindingoffset=0in,left=25mm,right=25mm,top=30mm,bottom=30mm,footskip=15mm]{geometry}
\RequirePackage[table]{xcolor}
\RequirePackage{sphinx}
\RequirePackage{titlesec, blindtext, color}

\DeclareTextCommand{\nobreakspace}{T1}{\leavevmode\nobreak\ }

\RequirePackage{float}
\RequirePackage[UKenglish]{babel}% http://ctan.org/pkg/babel
\RequirePackage[UKenglish]{isodate}% http://ctan.org/pkg/isodate
\RequirePackage[framemethod=default]{mdframed}
\RequirePackage{setspace}
\RequirePackage{tabu}
\usepackage{sectsty}

\RequirePackage{fontspec}

\RequirePackage[T1]{fontenc}
\RequirePackage[default]{lato}

\renewcommand{\familydefault}{\sfdefault}

%---------------------------------------------------
\RequirePackage{fontawesome}


\RequirePackage{array}
\RequirePackage{ragged2e}

%\RequirePackage{microtype}
\RequirePackage[none]{hyphenat}

%---------------------------------------------------
%\RequirePackage[backend=bibtex8,autocite = superscript]{biblatex}
\RequirePackage[superscript,biblabel]{cite}
\RequirePackage[numbers,super]{natbib}
%----------------------------------------------------

\RequirePackage{fancyhdr}
\pagestyle{fancyplain}

\cleanlookdateon  % Remove ordinal day reference

%---------------------------------------------------
% number subsubsections and paragraphs
\setcounter{secnumdepth}{2}

%---------------------------------------------------
% remove all formatting
\fancyhf{}
\renewcommand{\headrulewidth}{0pt} % remove lines as well
\renewcommand{\footrulewidth}{0pt}

\lhead{ \fancyplain{}{} }
\rhead{ \fancyplain{}{} }
\lfoot{ \fancyplain{}{\small\fontseries{l}\selectfont } }
\cfoot{ \fancyplain{}{\small\fontseries{l}\selectfont } }
\rfoot{ \fancyplain{}{\small\fontseries{l}\selectfont ${title} \hspace*{3mm} | \hspace*{3mm} \thepage} }

% no header or footer on title page
\fancypagestyle{titlestyle}
{
\fancyhf{}
\fancyfoot{}
}

\newcolumntype{G}[1]{>{\RaggedRight\hspace{0pt}}p{#1}}
\newcolumntype{F}[1]{>{\RaggedLeft\hspace{0pt}}p{#1}}


\linespread{1.2}

\definecolor{ECorp}{RGB}{0,102,204}

\renewcommand\maketitle{
\frontmatter
\thispagestyle{titlestyle}
\vspace*{50mm}
\begin{center}
{\LARGE\fontseries{l}\selectfont ${title}} \par
\end{center}
\vspace*{0.5em}
\begin{center}
\today
\end{center}

\vfill

\begin{figure}[h!]
\begin{center}
\includegraphics[height=1.5cm]{logo.pdf}
\end{center}
\end{figure}
\begin{center}
{\large\fontseries{l}\selectfont\color{ECorp} together we can change the world}
\end{center}

\vspace*{10mm}

\clearpage

\null
\vfill

\begin{singlespace}
\begin{scriptsize}

\faGlobe \hspace{0.25em} \emph{https://ecorp.com} \hspace{10mm}
\faEnvelope \hspace{0.25em} \emph{hello@ecorp.com}

\vspace*{1em}

E Corp \\
Columbus Circle \\
New York, NY 10019 \\
USA \\

\vspace*{1em}

Incorporated in Delaware as E Corp LLC no 123456790

\vspace*{2em}

Copyright \textcopyright \ \the\year Tyrell Wellick \\
All rights reserved \\
\\
Published on \today
\end{scriptsize}
\end{singlespace}
\vspace*{2em}

\clearpage
}

\titleformat{\section}
{\Large\scshape\raggedright}
{}{0em}
{}

\titleformat{\subsection}
{\large\scshape\raggedright}
{}{0em}
{}

% Sections
\allsectionsfont{\fontseries{l}\selectfont\color{ECorp}}
\subsubsectionfont{\large\fontseries{ul}\selectfont\color{ECorp}}
\paragraphfont{\fontseries{b}\selectfont}
\subparagraphfont{\fontseries{b}\selectfont}

% Chapters
\titleclass{\chapter}{straight}
\titleformat{\chapter}
{\LARGE\fontseries{l}\selectfont\color{ECorp}}{\thechapter}{1em}{}
\titlespacing*{\chapter}{0pt}{3.5ex plus 1ex minus .2ex}{2.3ex plus .2ex}
% \titlespacing*{\chapter} {0pt}{2em}{0pt}

% \titleclass{\part}{top}
% \titleformat{\part}[display]
%   {\normalfont\huge\bfseries}{\centering\partname\ \thepart}{20pt}{\Huge\centering}
% \titlespacing*{\part}{0pt}{50pt}{40pt}
%
% \titleclass{\chapter}{straight}
% \titleformat{\chapter}[hang]{\color{ECorp}\Large\fontseries{l}\selectfont}{}{0pt}{\Large\fontseries{l}\selectfont}
% \titlespacing*{\chapter} {0pt}{10pt}{0pt}
%
% \titleclass{\section}{straight}
% \titleformat{\section}[hang]{\large\fontseries{l}\selectfont}{}{0pt}{\large\fontseries{l}\selectfont}
% \titlespacing*{\section} {0pt}{10pt}{0pt}

\newcommand{\cchb}{\cellcolor{ECorp!10}}

\usepackage{hyperref}
\hypersetup{%
pdfborder = {0 0 0},
colorlinks,
citecolor=red,
filecolor=ECorp,
linkcolor=ECorp,
urlcolor=ECorp!50!black!90
}
