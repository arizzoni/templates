\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentation}

\newcommand{\thebaseclass}{beamer}
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
  emptydiode,
  arrowmos,
  nofetbodydiode,
  straightlabels
]{circuitikz}
\ctikzset{
  quadpoles style=inline,
  bipoles/thickness=1
}
\tikzset{
  block/.style = {
    draw,
    fill=white,
    rectangle,
    minimum height=6ex,
    minimum width=3em
  }
}


\def\mathdefault#1{#1}
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

\renewcommand{\hrulefill}{%
  \normalsize{\leavevmode\leaders\hrule height 0.6ex depth -0.4ex \hfill\kern0pt}
  }

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

\definecolor{OSUscarlet}{RGB}{187,0,0}
\definecolor{OSUgrey}{RGB}{66,66,66}

\setbeamercolor*{structure}{bg=OSUscarlet,fg=black}

\setbeamercolor*{palette primary}{use=structure,fg=white,bg=OSUscarlet}
\setbeamercolor*{palette secondary}{use=structure,fg=black,bg=OSUscarlet}
\setbeamercolor*{palette tertiary}{use=structure,fg=white,bg=OSUgrey}
\setbeamercolor*{palette quaternary}{fg=OSUscarlet,bg=white}

\setbeamercolor{section in toc}{parent=palette quaternary}
\setbeamercolor{alerted text}{parent=palette primary}

\setbeamercolor{titlelike}{parent=palette primary}
\setbeamercolor{pictureframe}{parent=palette tertiary}
\setbeamercolor{frametitle}{bg=OSUscarlet,fg=white}

\setbeamercolor*{titlelike}{parent=palette primary}

\usefonttheme{professionalfonts}
\usefonttheme[stillsansseriflarge, stillsansserifsmall]{serif}

\setbeamertemplate{itemize item}{\textbullet}
\setbeamertemplate{itemize subitem}{\textopenbullet}
\setbeamertemplate{itemize subsubitem}{\textemdash}
\setbeamertemplate{navigation symbols}{}

\titlegraphic{
  \begin{beamercolorbox}[wd=0.55\paperwidth,ht=\paperheight]{pictureframe}
    \vspace{-2ex}\tikz\node[opacity=0.25]{
      \hspace{-0.8em}\includegraphics[width=\paperwidth,clip,trim={0 3in 0 0}]{assets/Rotunda1.jpg}
    };
  \end{beamercolorbox}
}

\setbeamertemplate{title page}{
  \begin{beamercolorbox}[wd=\paperwidth,ht=\paperheight]{pictureframe}
    \begin{beamercolorbox}[wd=0.4\paperwidth,ht=\paperheight,sep=1em]{titlelike}
      \textsf{\Large\inserttitle}\par\noindent\textsf{\textit{\normalsize\insertsubtitle}}
      \par\noindent\hrulefill\vspace{0.125\paperheight}
      \par\noindent\textsf{\small\insertauthor}\vspace{0.125\paperheight}
      \par\noindent\textsf{\small\insertinstitute}
    \end{beamercolorbox}
    \inserttitlegraphic%
  \end{beamercolorbox}
}

\setbeamertemplate{footline}{
  \begin{beamercolorbox}[wd=\paperwidth,ht=6ex]{section in toc}
    \begin{beamercolorbox}[wd=6ex,ht=6ex]{section in head/foot}
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=128ex,ht=6ex]{section in toc}
      \vspace*{0.5ex}\textsf{\small\inserttitle}\vspace*{0.5ex}%
    \end{beamercolorbox}
  \end{beamercolorbox}
}

\setbeamertemplate{frametitle}{
  \vspace{-2pt}\begin{beamercolorbox}[wd=\paperwidth,ht=5.25ex,sep=1ex]{titlelike}
    \noindent\textsf{\large\bfseries\insertframetitle}\vspace{-1ex}
    \newline\makebox[\paperwidth]{
      \ifx\insertframesubtitle\@empty\else% If there is a subtitle then:
        \textsf{\textit{\normalsize\insertframesubtitle}}\hspace{0.5em}
      \fi
      \hrulefill\hspace{0.5em}\textsf{\textit{\small\insertframenumber}}\hspace{0.5em}
      \makebox[1em]{\hrulefill}
      \makebox[1em]{\hspace{1em}}
    }
  \end{beamercolorbox}
}

\setbeamertemplate{headline}{}
