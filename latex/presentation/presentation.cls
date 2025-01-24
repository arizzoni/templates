\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{presentation}

\newcommand{\thebaseclass}{beamer}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{\thebaseclass}}
\ProcessOptions\relax
\LoadClass[aspectratio=1609,hyperref={implicit=false}]{\thebaseclass}

% LuaLaTeX Packages
\RequirePackage{luatexbase}
\RequirePackage{luatextra}
\RequirePackage{luacode}
\RequirePackage{piton}
\RequirePackage{luacolor}
\RequirePackage{pyluatex}
\RequirePackage{linebreaker}

% Localization
\RequirePackage{polyglossia}
\setdefaultlanguage[variant=american]{english}
\RequirePackage{csquotes}

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

\setmathfont{STIXTwoMath-Regular}[%
    Extension={.otf},
    Scale=1
    ]
\setmainfont{STIXTwoText}[%
    Extension={.otf},
    UprightFont={*-Regular},
    ItalicFont={*-Italic},
    BoldFont={*-Bold},
    BoldItalicFont={*-BoldItalic},
    Ligatures=TeX,
    Scale=MatchLowercase
    ]
\setsansfont{ClearSans}[%
    Extension={.ttf},
    UprightFont={*-Regular},
    ItalicFont={*-Italic},
    BoldFont={*-Bold},
    BoldItalicFont={*-BoldItalic},
    Ligatures=TeX,
    Scale=MatchLowercase
    ]
\setmonofont{InconsolataLgcNerdFontMono}[%
    Extension={.ttf},
    UprightFont={*-Regular},
    ItalicFont={*-Italic},
    BoldFont={*-Bold},
    BoldItalicFont={*-BoldItalic},
    Ligatures=TeX,
    Scale=MatchLowercase
    ]
\renewcommand{\hrulefill}{%
  \leavevmode\leaders\hrule height 0.6ex depth -0.4ex \hfill\kern0pt }

\usefonttheme[stillsansseriflarge, stillsansserifsmall]{serif}
\usecolortheme{seagull}
\usecolortheme{seahorse}

\definecolor{OSUscarlet}{RGB}{187,0,0}
\definecolor{OSUgrey}{RGB}{66,66,66}

\setbeamercolor*{structure}{bg=OSUscarlet,fg=black}

\setbeamercolor*{palette primary}{use=structure,fg=white,bg=OSUscarlet}
\setbeamercolor*{palette secondary}{use=structure,fg=black,bg=OSUscarlet}
\setbeamercolor*{palette tertiary}{use=structure,fg=white,bg=OSUgrey}
\setbeamercolor*{palette quaternary}{fg=OSUscarlet,bg=white}

\setbeamercolor{section in toc}{fg=black,bg=white}
\setbeamercolor{alerted text}{use=structure,fg=OSUscarlet}

\setbeamercolor{titlelike}{parent=palette primary}
\setbeamercolor{frametitle}{bg=OSUscarlet,fg=white}

\setbeamercolor*{titlelike}{parent=palette primary}

\setbeamertemplate{itemize item}{---}
\setbeamertemplate{itemize subitem}{--}
\setbeamertemplate{itemize subsubitem}{-}
\setbeamertemplate{navigation symbols}{}
\setbeamertemplate{footline}{
  \begin{beamercolorbox}[wd=30em,ht=6ex]{section in toc}
    \begin{beamercolorbox}[wd=6ex,ht=6ex,sep=1ex]{section in head/foot}
    \end{beamercolorbox}
    \begin{beamercolorbox}[wd=24em,ht=6ex, sep=1ex]{titlelike}
        \insertauthor%
    \end{beamercolorbox}
  \end{beamercolorbox}
}
\setbeamertemplate{frametitle}{
    \begin{beamercolorbox}[wd=\paperwidth,sep=1ex]{titlelike}
      \insertframetitle\vspace{-0.5ex}%
      \normalsize\newline\makebox[\textwidth]{\insertframesubtitle\hrulefill}
      \hspace{0.5em}\insertframenumber\hspace{0.5em}\hrulefill%
    \end{beamercolorbox}
}
\setbeamertemplate{headline}{}

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

\newcommand*{\pytypeset}{\small\directlua{pytypeset()}}
\newcommand*{\pyoutput}{\small\directlua{pyoutput()}}
\NewDocumentEnvironment{pycode}{}{\PyLTVerbatimEnv\begin{python}}{\end{python}}

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
  \pyc{baselineskip=r'\the\baselineskip'}
  % \pyc{baselinestretch=r'\the\baselinestretch'}
  \pyc{columnsep=r'\the\columnsep'}
  \pyc{columnwidth=r'\the\columnwidth'}
  \pyc{evensidemargin=r'\the\evensidemargin'}
  \pyc{linewidth=r'\the\linewidth'}
  \pyc{oddsidemargin=r'\the\oddsidemargin'}
  \pyc{paperwidth=r'\the\paperwidth'}
  \pyc{paperheight=r'\the\paperheight'}
  \pyc{parindent=r'\the\parindent'}
  \pyc{parskip=r'\the\parskip'}
  \pyc{textheight=r'\the\textheight'}
  \pyc{textwidth=r'\the\textwidth'}
  \pyc{topmargin=r'\the\topmargin'}
  \pyc{unitlength=r'\the\unitlength'}
  \pyc{inch=r'\the\inlength'}
  \pyc{cm=r'\the\cmlength'}
  \pyc{mm=r'\the\mmlength'}
  \pyc{em=r'\the\emlength'}
  \pyc{ex=r'\the\exlength'}
  \pyc{bp=r'\the\bplength'}
  \pyc{dd=r'\the\ddlength'}
  \pyc{pc=r'\the\pclength'}
  \pyc{romanfont=r'\thermfont'}
  \pyc{sansfont=r'\thesffont'}
  \pyc{monofont=r'\thettfont'}
  \pyc{mathfont=r'\themathfont'}
  \pyc{mathfontone=r'\themathfontone'}
  \pyc{mathfonttwo=r'\themathfonttwo'}
  \pyc{mathfontthree=r'\themathfontthree'}
  \pyc{tiny=r'\thetinysize'}
  \pyc{scriptsize=r'\thescriptsize'}
  \pyc{footnotesize=r'\thefootnotesize'}
  \pyc{small=r'\thesmallsize'}
  \pyc{normalsize=r'\thenormalsize'}
  \pyc{large=r'\thelargesize'}
  \pyc{Large=r'\theLargesize'}
  \pyc{LARGE=r'\theLARGEsize'}
  \pyc{huge=r'\thehugesize'}
  \pyc{Huge=r'\theHugesize'}
  \pyfileq{presentation.py}
}

\AtBeginDocument{%
  \pyloadcontext%
}
