\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{document}

\newcommand{\thebaseclass}{article}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\thebaseclass}}
\ProcessOptions\relax
\LoadClass{\thebaseclass}

% LuaLaTeX Packages
\RequirePackage{luatexbase}
\RequirePackage{luatextra}
\RequirePackage{luacode}
\RequirePackage{piton}
\RequirePackage{luacolor}
\RequirePackage{pyluatex}
\RequirePackage{linebreaker}
\RequirePackage{pyluaplot}

% Localization
\RequirePackage{polyglossia}
\RequirePackage{csquotes}
\setdefaultlanguage[variant=american]{english}

% Mathematics
\RequirePackage{mathtools}
\RequirePackage[warnings-off={mathtools-colon,
mathtools-overbracket}]{unicode-math}
\RequirePackage{lualatex-math}
\RequirePackage{steinmetz}
\RequirePackage[%
  exponent-mode=engineering,
  list-separator={, },
  list-pair-separator={ and },
  list-final-separator={ and },
  complex-mode=cartesian,
  input-complex-root={j},
  output-complex-root={j},
  complex-root-position=before-number,
  complex-angle-unit=degrees,
  complex-symbol-degree={$^\circ$},
  angle-mode=decimal,
  angle-symbol-degree={$&\circ$},
  display-per-mode=fraction,
  inline-per-mode=single-symbol,
  sticky-per=true,
]{siunitx}

% Plotting and Diagrams
\RequirePackage{pgf}
\RequirePackage{tikz}
\usepackage[%
  american,
  siunitx,
  emptydiode,
  arrowmos,
  fetbodydiode,
  smartlabels
]{circuitikz}

% Modern Fonts
\setmathfont{STIX Two Math}[%
  Ligatures=TeX,
  Scale=1
]
\setmainfont{STIX Two Text}[%
  Ligatures=TeX,
  Scale=MatchLowercase
]
\setsansfont{Iosevka Aile}[%
  Ligatures=TeX,
  Scale=MatchLowercase
]
\setmonofont{Iosevka Fixed}[%
  Ligatures=TeX,
  Scale=MatchLowercase
]

% Classic Fonts
%\setmathfont{Tex Gyre Termes Math}[%
%    Ligatures=TeX,
%    Scale=1
%    ]
%\setmainfont{Tex Gyre Termes}[%
%    Ligatures=TeX,
%    Scale=MatchLowercase
%    ]
%\setsansfont{Tex Gyre Heros}[%
%    Ligatures=TeX,
%    Scale=MatchLowercase
%    ]
%\setmonofont{Tex Gyre Cursor}[%
%    Ligatures=TeX,
%    Scale=MatchLowercase,
%    ]

\tikzset{%
  block/.style = {%
    draw,%
    fill=white,%
    rectangle,%
    minimum height=3ex,%
    minimum width=3em%
  }%
}

\ctikzset{%
  resistors/scale=0.75,%
  capacitors/scale=0.75,%
  inductors/scale=0.75,%
  transistors/scale=1.25,%
  diodes/scale=0.75,%
  switches/scale=1.25%
}

% Page Formatting
% Process page size options
\RequirePackage[letterpaper, margin=1in]{geometry}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{titletoc} % do something with this

% Rewrite to check that each command exists before renaming it
\addto\captionsenglish{%
  \renewcommand{\abstractname}{Introduction}
  \renewcommand{\appendixname}{Appendix}
  \renewcommand{\bibname}{References}
  \renewcommand{\chaptername}{Chapter}
  \renewcommand{\contentsname}{Table of Contents}
  \renewcommand{\figurename}{Figure}
  \renewcommand{\indexname}{Index}
  %\renewcommand{\listingname}{Listing}
  \renewcommand{\listfigurename}{List of Figures}
  %\renewcommand{\listlistingname}{List of Listings}
  \renewcommand{\listtablename}{List of Tables}
  \renewcommand{\partname}{Part}
  \renewcommand{\refname}{References}
  \renewcommand{\tablename}{Table}
}

\newenvironment{introduction}
{
  \begin{abstract}
  }
  {
  \end{abstract}
}

% From authoraftertitle package
% Author
\newcommand\Originalauthor{}
\let\Originalauthor\author%
\renewcommand*{\author}[1]{%
  \Originalauthor{#1}%
  \renewcommand*{\MyAuthor}{#1}%
}
\newcommand*{\MyAuthor}{}

% Title
\newcommand\Originaltitle{}
\let\Originaltitle\title%
\renewcommand*{\title}[1]{%
  \Originaltitle{#1}%
  \renewcommand*{\MyTitle}{#1}%
}
\newcommand*{\MyTitle}{}

% Date
\newcommand\Originaldate{}
\let\Originaldate\date%
\renewcommand*{\date}[1]{%
  \Originaldate{#1}%
  \renewcommand*{\MyDate}{#1}%
}
\newcommand*{\MyDate}{}

% Section Formatting
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\arabic{subsection}}
\renewcommand{\thesubsubsection}{\thesection.\arabic{subsection}.\arabic{subsubsection}}

% Section Title Formatting
\titleformat{\section}{\centering\large\scshape}{}{0em}{}
\titleformat{\subsection}{\normalsize}{}{0em}{}
\titleformat{\subsubsection}{\normalsize}{}{0em}{}

\AtBeginDocument{%
  % Page Styles
  \newpagestyle{title}{%
    \sethead[][][]{}{}{}
    \setfoot[][][]{}{}{}
  }
  \newpagestyle{chapter}{%
    \sethead[][][]{}{}{}
    \setfoot[][\thepage][]{}{\thepage}{}
  }
  \newpagestyle{body}{%
    \setheadrule{0.67pt}
    \sethead[\MyTitle][][\sectiontitle]{\MyTitle}{}{\sectiontitle}
    \setfoot[][\thepage][]{}{\thepage}{}
  }%
  \pagestyle{body}
}
