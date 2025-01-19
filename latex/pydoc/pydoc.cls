\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{pydoc}

\newcommand{\thebaseclass}{article}
% \DeclareOption{article}{
%     \renewcommand{\thebaseclass}{article}
%     \PassOptionsToClass{titlepage}{article}
% }
% \DeclareOption{report}{\renewcommand{\thebaseclass}{report}}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\thebaseclass}}
\ProcessOptions\relax
\LoadClass{\thebaseclass}

% LuaLaTeX Packages
\RequirePackage{luatexbase}
\RequirePackage{luatextra}
\RequirePackage{luacode}
\RequirePackage{linebreaker}

% Localization
\RequirePackage{polyglossia}
\RequirePackage{csquotes}
\setdefaultlanguage[variant=american]{english}

% Page Formatting
\RequirePackage[letterpaper, margin=1in]{geometry}
\RequirePackage[pagestyles]{titlesec}
\RequirePackage{titletoc}

% Bibliography
\RequirePackage[backend=biber,style=ieee]{biblatex}

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

% Python Code Execution + Typesetting
\RequirePackage{pyluatex}
\RequirePackage{listing}
\RequirePackage{piton}

% PDF-A and colors
\RequirePackage[a-3u]{pdfx}
\RequirePackage{luacolor}

% Tex Gyre Fonts
%\setmathfont{texgyretermes-math.otf}
%\setmainfont{texgyretermes-regular.otf}[%
%  Ligatures=TeX,
%  ItalicFont=texgyretermes-italic.otf,
%  BoldFont=texgyretermes-bold.otf,
%  BoldItalicFont=texgyretermes-bolditalic.otf,
%  Scale=MatchLowercase
%]
%\setsansfont{texgyreheros-regular.otf}[
%  Ligatures=TeX,
%  ItalicFont=texgyreheros-italic.otf,
%  BoldFont=texgyreheros-bold.otf,
%  BoldItalicFont=texgyreheros-bolditalic.otf,
%  Scale=MatchLowercase
%]
%\setmonofont{texgyrecursor-regular.otf}[
%  Ligatures=TeX,
%  ItalicFont=texgyrecursor-italic.otf,
%  BoldFont=texgyrecursor-bold.otf,
%  BoldItalicFont=texgyrecursor-bolditalic.otf,
%  Scale=MatchLowercase
%]

\setmathfont{STIXTwoMath-Regular.otf}
\setmainfont{STIXTwoText-Regular.otf}[%
    Ligatures=TeX,
    ItalicFont=STIXTwoText-Italic.otf,
    BoldFont=STIXTwoText-Bold.otf,
    BoldItalicFont=STIXTwoText-BoldItalic.otf,
    ]
\setsansfont{StixTwoText-Regular}[%
    Ligatures=TeX,
    Scale=MatchLowercase
    ]
\setmonofont{Iosevka Fixed}[%
    Ligatures=TeX,
    Scale=MatchLowercase
    ]

% Computer Modern Fonts
% \setmathfont{NewCMMath-Regular.otf}
% \setmainfont{NewCM10-Regular.otf}[%
%     Ligatures=TeX,
%     ItalicFont=NewCM10-Italic.otf,
%     BoldFont=NewCM10-Bold.otf,
%     BoldItalicFont=NewCM10-BoldItalic.otf,
%     Scale=MatchLowercase
%     ]
% \setsansfont{NewCMSans10-Regular.otf}[%
%     Ligatures=TeX,
%     ItalicFont=NewCMSans10-Italic.otf,
%     BoldFont=NewCMSans10-Bold.otf,
%     BoldItalicFont=NewCMSans10-BoldOblique.otf,
%     Scale=MatchLowercase
%     ]
% \setmonofont{NewCMMono10-Regular.otf}[%
%     Ligatures=TeX,
%     ItalicFont=NewCMMono10-Italic.otf,
%     BoldFont=NewCMMono10-Bold.otf,
%     BoldItalicFont=NewCMMono10-BoldOblique.otf,
%     Scale=MatchLowercase
%     ]

\addto\captionsenglish{%
  \renewcommand{\abstractname}{Introduction}
  \renewcommand{\appendixname}{Appendix}
  \renewcommand{\bibname}{References}
  \renewcommand{\chaptername}{Chapter}
  \renewcommand{\contentsname}{Table of Contents}
  \renewcommand{\figurename}{Figure}
  \renewcommand{\indexname}{Index}
  \renewcommand{\listingname}{Listing}
  \renewcommand{\listfigurename}{List of Figures}
  \renewcommand{\listlistingname}{List of Listings}
  \renewcommand{\listtablename}{List of Tables}
  \renewcommand{\partname}{Part}
  \renewcommand{\refname}{References}
  \renewcommand{\tablename}{Table}
}

\ifx\thebaseclass\undefined%
\else
\if\thebaseclass{article}
\else
\newenvironment{introduction}
{
\begin{abstract}}
  {
\end{abstract}}
\fi
\fi

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

% Two-Column Mode
\NewCommandCopy{\oldtwocolumn}{\twocolumn}
\renewcommand{\twocolumn}[1]{\twocolumn\pyloadcontext}

% One-Column Mode
\NewCommandCopy{\oldonecolumn}{\onecolumn}
\renewcommand{\onecolumn}[1]{\onecolumn\pyloadcontext}

% Section Formatting
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\alph{subsection}}
\renewcommand{\thesubsubsection}{\thesection.\alph{subsection}.\roman{subsubsection}}

% Section Title Formatting
\titleformat{\section}{\centering\large\scshape}{}{0em}{}
\titleformat{\subsection}{\normalsize}{}{0em}{}
\titleformat{\subsubsection}{\normalsize}{}{0em}{}

\PitonOptions{%
  % font-command={\small\ttfamily},%
  auto-gobble,%
  line-numbers=true,%
  line-numbers/skip-empty-lines=false,%
  line-numbers/label-empty-lines=true,%
  line-numbers/resume,%
  left-margin=auto,%
  splittable=4,%
  break-lines,%
  % break-strings-anywhere,%
  indent-broken-lines,%
  end-of-broken-line={\,},%
  continuation-symbol={\,},%
  % line-numbers/format={\footnotesize\color{gray}}%
}

\SetPitonStyle{%
  Number=\color{darkgray},%
  String.Short=\color{darkgray} \slshape,%
  String.Long=\color{darkgray} \slshape,%
  String=\color{darkgray} \slshape,%
  String.Doc=\color{gray},%
  String.Interpol=\color{darkgray} \slshape,%
  Interpol.Inside=\color{darkgray} \slshape,%
  Operator=\color{darkgray} \bfseries,%
  Operator.Word=\color{darkgray} \bfseries,%
  Name.Builtin=\color{black},%
  Name.Type=\color{darkgray},%
  Name.Field=\color{darkgray} \bfseries,%
  Name.Decorator=\color{darkgray} \slshape,%
  Name.Namespace=\color{darkgray} \bfseries,%
  Name.Class=\color{gray} \bfseries,%
  Name.Constructor=\color{gray} \bfseries,%
  Name.Module=\color{gray} \bfseries,%
  Name.Function=\color{gray} \bfseries,%
  UserFunction=\color{gray} \bfseries,%
  Exception=\color{darkgray} \slshape,%
  InitialValues=\color{darkgray},%
  Preproc=\color{darkgray} \bfseries,%
  TypeParameter=\color{darkgray} \bfseries,%
  Comment=\color{gray} \slshape,%
  Comment.LaTeX=\color{gray} \slshape,%
  Keyword.Constant=\color{darkgray},%
  Keyword=\color{darkgray} \bfseries,%
  Identifier=\color{black}%
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

% Python Code Environments
\begin{luacode}
  function pytypeset()
  	tex.print("\\vspace{\\abovecaptionskip}")
  	tex.print("\\begin{Piton}")
  	tex.print(pyluatex.get_last_code())
  	tex.print("\\end{Piton}")
  	tex.print("")
  end

  function pyoutput()
  	tex.print("\\vspace{\\abovecaptionskip}")
  	tex.print("\\begin{Piton}")
  	tex.print(pyluatex.get_last_output())
  	tex.print("\\end{Piton}")
  	tex.print("")
  end
\end{luacode}

\newcommand*{\pytypeset}%
{\small\directlua{pytypeset()}}

\newcommand*{\pyoutput}%
{\small\directlua{pyoutput()}}

\NewDocumentEnvironment{pycode}{}%
{\PyLTVerbatimEnv
\begin{python}}%
  {
\end{python}}

% Get lengths (in LaTeX points!)
\newlength\inlength \inlength=1in%
\newlength\cmlength \cmlength=1cm%
\newlength\mmlength \mmlength=1mm%
\newlength\emlength \emlength=1em%
\newlength\exlength \exlength=1ex%
\newlength\bplength \bplength=1bp%
\newlength\ddlength \ddlength=1dd%
\newlength\pclength \pclength=1pc%

% Font Sizes
\makeatletter
\tiny\xdef\thetinysize{\f@size}
\scriptsize\xdef\thescriptsize{\f@size}
\footnotesize\xdef\thefootnotesize{\f@size}
\small\xdef\thesmallsize{\f@size}
\normalsize\xdef\thenormalsize{\f@size}
\large\xdef\thelargesize{\f@size}
\Large\xdef\theLargesize{\f@size}
\LARGE\xdef\theLARGEsize{\f@size}
\huge\xdef\thehugesize{\f@size}
\Huge\xdef\theHugesize{\f@size}
\makeatother

% Fonts
\rmfamily\mdseries\upshape\xdef\thermfont{\expandafter\string\the\font}
\sffamily\mdseries\upshape\xdef\thesffont{\expandafter\string\the\font}
\ttfamily\mdseries\upshape\xdef\thettfont{\expandafter\string\the\font}

% Math Fonts
\xdef\themathfont{\expandafter\string\the\textfont0}
\xdef\themathfontone{\expandafter\string\the\textfont1}
\xdef\themathfonttwo{\expandafter\string\the\textfont2}
\xdef\themathfontthree{\expandafter\string\the\textfont3}

\NewDocumentCommand{\pyloadcontext}{}{%
  \pyc{baselineskip=r'\the\baselineskip'}%
  % \pyc{baselinestretch=r'\the\baselinestretch'}%
  \pyc{columnsep=r'\the\columnsep'}%
  \pyc{columnwidth=r'\the\columnwidth'}%
  \pyc{evensidemargin=r'\the\evensidemargin'}%
  \pyc{linewidth=r'\the\linewidth'}%
  \pyc{oddsidemargin=r'\the\oddsidemargin'}%
  \pyc{paperwidth=r'\the\paperwidth'}%
  \pyc{paperheight=r'\the\paperheight'}%
  \pyc{parindent=r'\the\parindent'}%
  \pyc{parskip=r'\the\parskip'}%
  \pyc{textheight=r'\the\textheight'}%
  \pyc{textwidth=r'\the\textwidth'}%
  \pyc{topmargin=r'\the\topmargin'}%
  \pyc{unitlength=r'\the\unitlength'}%
  \pyc{inch=r'\the\inlength'}%
  \pyc{cm=r'\the\cmlength'}%
  \pyc{mm=r'\the\mmlength'}%
  \pyc{em=r'\the\emlength'}%
  \pyc{ex=r'\the\exlength'}%
  \pyc{bp=r'\the\bplength'}%
  \pyc{dd=r'\the\ddlength'}%
  \pyc{pc=r'\the\pclength'}%
  \pyc{romanfont=r'\thermfont'}%
  \pyc{sansfont=r'\thesffont'}%
  \pyc{monofont=r'\thettfont'}%
  \pyc{mathfont=r'\themathfont'}%
  \pyc{mathfontone=r'\themathfontone'}%
  \pyc{mathfonttwo=r'\themathfonttwo'}%
  \pyc{mathfontthree=r'\themathfontthree'}%
  \pyc{tiny=r'\thetinysize'}%
  \pyc{scriptsize=r'\thescriptsize'}%
  \pyc{footnotesize=r'\thefootnotesize'}%
  \pyc{small=r'\thesmallsize'}%
  \pyc{normalsize=r'\thenormalsize'}%
  \pyc{large=r'\thelargesize'}%
  \pyc{Large=r'\theLargesize'}%
  \pyc{LARGE=r'\theLARGEsize'}%
  \pyc{huge=r'\thehugesize'}%
  \pyc{Huge=r'\theHugesize'}%
  \pyfileq{pydoc.py}%
}

\AtBeginDocument{%

  \addbibresource{/home/air/templates/latex/scidoc/scidoc.bib}

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

  \pyloadcontext%

  \maketitle%
}
