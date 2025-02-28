% Homework Class

\NeedsTeXFormat{LaTeX2e}
\LoadClass{document}
\ProvidesClass{homework}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{document}}
\ProcessOptions\relax
    
% Section Formatting
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\alph{subsection}}
\renewcommand{\thesubsubsection}{\thesection\thesubsection.\alph{subsubsection}}

% Section Title Formatting
\RequirePackage{titlesec}
\titleformat{\section}{\Large\sffamily}{\thesection}{1em}{\Large\sffamily}
\titleformat{\subsection}{\large\sffamily}{\thesubsection}{1em}{\large\sffamily}
\titleformat{\subsubsection}{\normalsize\sffamily}{\thesubsubsection}{1em}{\normalsize\sffamily}

\AtBeginDocument{
    % Headers
    \RequirePackage{fancyhdr}
    \fancypagestyle{fancy}{
        \fancyhf{}
        \setlength{\headheight}{0.5in}
        \setlength{\footskip}{0.25in}
        \renewcommand{\headrulewidth}{0.67pt}
        \renewcommand{\footrulewidth}{0.67pt}
        \fancyhead[L]{\sffamily\MyTitle}
        \fancyhead[R]{\sffamily\small\MyAuthor}
        \fancyfoot[C]{\sffamily\small\thepage}
    }
    \pagestyle{fancy}
}
