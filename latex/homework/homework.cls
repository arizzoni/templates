% Homework Class

\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}
\ProvidesClass{homework}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax

\newcommand{\theauthor}{Assignment \\ Term \\ Name}
\newcommand{\thedoctitle}{\small Institution \\ College \\ Course}

% Python Code Execution
\RequirePackage{pyluatex}

% Code Typesetting
%\RequirePackage{piton}
%
%\begin{luacode}
%function pytypeset()
%        tex.print("\\begin{lstlisting}[language=Python]")
%        tex.print(pyluatex.get_last_code())
%        tex.print("\\end{lstlisting}")
%        tex.print("") -- ensure newline
%end
%\end{luacode}
%
%\newcommand*{\pytypeset}{%
%        \noindent\textbf{Input:}
%        \directlua{pytypeset()}
%        \textbf{Output:}
%        \begin{center}
%        \directlua{tex.print(pyluatex.get_last_output())}
%        \end{center}
%}

% Localization
\RequirePackage[USenglish]{babel}

% Mathematics Typesetting
\RequirePackage{mathtools} % Mathematics typesetting
\RequirePackage[% Mathematics with modern fonts
    warnings-off={% Turn off default always-on warnings
        mathtools-colon,
        mathtools-overbracket
        }
    ]{unicode-math} 
\RequirePackage{lualatex-math} % Math fixes for LuaLaTeX
\RequirePackage{siunitx} % Handy typesetting of units
\sisetup{group-separator={,}}

% Plotting
\RequirePackage{pgf}

% Font
\RequirePackage{fontspec} % Modern .ttc, .ttf, and .otf fonts

% STIX Two Fonts

% \setmathfont{STIXTwoMath-Regular.otf}
% \setmainfont{STIXTwoText-Regular.otf}[%
%     Ligatures=TeX,
%     ItalicFont=STIXTwoText-Italic.otf,
%     BoldFont=STIXTwoText-Bold.otf,
%     BoldItalicFont=STIXTwoText-BoldItalic.otf,
%     ]
% \setsansfont{StixTwoText-Regular}[%
%     Ligatures=TeX,
%     Scale=MatchLowercase
%     ]
% \setmonofont{Iosevka Fixed}[%
%     Ligatures=TeX,
%     Scale=MatchLowercase
%     ]

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

% "Times New Roman" (with "Courier" and "Helvetica")

\setmathfont{texgyretermes-math.otf}
\setmainfont{texgyretermes-regular.otf}[%
    Ligatures=TeX,
    ItalicFont=texgyretermes-italic.otf,
    BoldFont=texgyretermes-bold.otf,
    BoldItalicFont=texgyretermes-bolditalic.otf,
    Scale=MatchLowercase
    ]
\setsansfont{texgyretermes-regular.otf}[%
    Ligatures=TeX,
    ItalicFont=texgyretermes-italic.otf,
    BoldFont=texgyretermes-bold.otf,
    BoldItalicFont=texgyretermes-bolditalic.otf,
    Scale=MatchLowercase
    ]
\setmonofont{texgyrecursor-regular.otf}[%
    Ligatures=TeX,
    ItalicFont=texgyrecursor-italic.otf,
    BoldFont=texgyrecursor-bold.otf,
    BoldItalicFont=texgyrecursor-bolditalic.otf,
    Scale=MatchLowercase
    ]

% Localization
\RequirePackage[% Localized context-sensitive quotes
    autostyle=true
    ]{csquotes}
\RequirePackage[%
    letterpaper, % 8.5 by 11 paper size
    tmargin=0.5in,
    bmargin=0.5in,
    lmargin=1in,
    rmargin=1in,
    includehead,
    includefoot,
    ]{geometry}
    
% Section Formatting
\renewcommand{\thesection}{\arabic{section}}
\renewcommand{\thesubsection}{\thesection.\alph{subsection}}
\renewcommand{\thesubsubsection}{\thesection\thesubsection.\alph{subsubsection}}

% Section Title Formatting
\RequirePackage{titlesec}
\titleformat{\section}{\Large\sffamily}{\thesection}{1em}{\Large\sffamily}
\titleformat{\subsection}{\large\sffamily}{\thesubsection}{1em}{\large\sffamily}
\titleformat{\subsubsection}{\normalsize\sffamily}{\thesubsubsection}{1em}{\normalsize\sffamily}

%% PyLuaTeX
% Get lengths (in LaTeX points!) \newlength\inlength \inlength=1in
\newlength\cmlength \cmlength=1cm
\newlength\mmlength \mmlength=1mm
\newlength\emlength \emlength=1em
\newlength\exlength \exlength=1ex
\newlength\bplength \bplength=1bp
\newlength\ddlength \ddlength=1dd
\newlength\pclength \pclength=1pc
\newlength\inlength \pclength=1in

% Get font parameters
\makeatletter

% Font Sizes
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

% Fonts
\rmfamily\mdseries\upshape\xdef\thermfont{\expandafter\string\the\font}
\sffamily\mdseries\upshape\xdef\thesffont{\expandafter\string\the\font}
\ttfamily\mdseries\upshape\xdef\thettfont{\expandafter\string\the\font}
\xdef\themathfont{\expandafter\string\the\textfont0}
\def\mathdefault#1{#1}

\makeatother

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

\begin{python}
import io
import os
import matplotlib as mpl
from cycler import cycler
from matplotlib import pyplot as plt
from matplotlib import rcParams as rc
from matplotlib.ticker import EngFormatter
from math import sqrt


class Environment():

    build_directory = os.path.join(os.getcwd(), 'aux')
    figures_directory = os.path.join(build_directory, 'figures')
    figures_directory = os.getcwd()

    def __init__(self):
        if not os.path.exists(self.figures_directory):
            os.mkdir(self.figures_directory)

    def output_figure(self, figure):
        # if type(figure) == mpl.figure.Figure:
        with io.StringIO() as file:  # save to "in-memory file"
            figure.savefig(file, format='pgf')
            print(file.getvalue())
        return figure

environment = Environment()


class Geometry():

    def metallic_ratio(n):
        return 0.5 * ( n + sqrt(n**2 + 4) )
    
    # Convert from (LaTeX!) points to inches 
    # There is ~ 0.14 micron floating point error here
    in_length = float(inch[:-2])
    cm_length = float(cm[:-2])
    mm_length = float(mm[:-2])
    em_length = float(em[:-2])
    ex_length = float(ex[:-2])
    bp_length = float(bp[:-2])
    dd_length = float(dd[:-2])
    pc_length = float(pc[:-2])

    column_width = float(columnwidth[:-2])
    text_width = float(textwidth[:-2])
    text_height = float(textheight[:-2])
    figure_width = (text_width - 2*em_length) / 72.27
    figure_height = figure_width / metallic_ratio(1)

    axis_dimensions = (0, 0, 1, 1) # 0 lr margin, 0 tb margin, 100% figure size

geometry = Geometry()


class Font():
    
    # Font faces
    roman = romanfont.split('/')[1][:-3]
    sans = sansfont.split('/')[1][:-3]
    mono = monofont.split('/')[1][:-3]
    math = mathfont.split('/')[1][:-3]
    
    # Font sizes
    tiny = tiny
    script_size = scriptsize
    footnote_size = footnotesize
    small = small
    normal_size = normalsize
    large = large
    llarge = Large
    lllarge = LARGE
    huge = huge
    hhuge = Huge

font = Font() # Instantiate the class for use

def eng_format(arg: str):
    return EngFormatter(unit=arg, sep=r'\,')

# Plot style cycler
cmap = plt.get_cmap('grey')
num_plot_styles = 4
plot_colors = []
line_styles = []
for i in range(num_plot_styles):
    plot_colors.append(cmap(1.0 * i/num_plot_styles))
    line_styles.append((0, (i+1, 2*i)))

style_cycler = cycler(color=plot_colors, linestyle=line_styles)

# Document-wide Matplotlib Configuration
# https://matplotlib.org/stable/users/explain/customizing.html
rc.update({
        # Backend
        'backend': 'pgf',

        # Lines
        'lines.linewidth': 0.67,
        'lines.linestyle': '-',
        'lines.marker': 'none',
        'lines.markerfacecolor': 'black',
        'lines.markeredgecolor': 'black',
        'lines.markeredgewidth': 0.67,
        'lines.markersize': 6,
        'lines.dash_joinstyle':  'round',
        'lines.dash_capstyle':   'butt',
        'lines.solid_joinstyle': 'round',
        'lines.solid_capstyle':  'projecting',
        'lines.antialiased': True,
        'markers.fillstyle': 'full',
        'pcolor.shading': 'auto',
        'pcolormesh.snap': True,

        # Patches
        'patch.linewidth': 0.67,
        'patch.facecolor': 'C0',
        'patch.edgecolor': 'black',
        'patch.force_edgecolor': False,
        'patch.antialiased': True,

        # Hatches
        'hatch.color': 'black',
        'hatch.linewidth': 0.67,

        # Boxplot - TODO

        # Font
        'font.family': 'serif',
        'font.style': 'normal',
        'font.variant': 'normal',
        'font.weight': 'normal',
        'font.stretch': 'normal',
        'font.size': font.footnote_size,

        # Text
        'text.color': 'black',
        'text.hinting': 'default',
        'text.hinting_factor': 8,
        'text.kerning_factor': 0,
        'text.antialiased': True,
        'text.parse_math': True,
        'text.usetex': True,

        # Mathtex
        'mathtext.fontset': 'stix',
        'mathtext.bf': 'serif:bold',
        'mathtext.bfit': 'serif:italic:bold',
        'mathtext.cal': 'cursive',
        'mathtext.it': 'serif:italic',
        'mathtext.rm': 'serif',
        'mathtext.sf': 'sans',
        'mathtext.tt': 'monospace',
        'mathtext.fallback': 'cm',
        'mathtext.default': 'it',

        # Axes
        'axes.facecolor': 'white',
        'axes.edgecolor': 'black',
        'axes.linewidth': 0.67,
        'axes.grid': False,
        'axes.grid.axis': 'both',
        'axes.grid.which': 'major',
        'axes.titlelocation': 'center',
        'axes.titleweight': 'normal',
        'axes.titlecolor': 'black',
        'axes.titley': None,
        'axes.titlepad': geometry.ex_length,
        'axes.titlesize': font.small,
        'axes.labelsize': font.footnote_size,
        'axes.labelpad': 0.5*geometry.ex_length,
        'axes.labelweight': 'regular',
        'axes.labelcolor': 'black',
        'axes.axisbelow': 'line',
        'axes.formatter.limits': '-5, 6',
        'axes.formatter.use_locale': True,
        'axes.formatter.use_mathtext': True,
        'axes.formatter.min_exponent': 0,
        'axes.formatter.useoffset': True,
        'axes.formatter.offset_threshold': 4,
        'axes.spines.left': True,
        'axes.spines.bottom': True,
        'axes.spines.top': True,
        'axes.spines.right': True,
        'axes.unicode_minus': True,
        'axes.prop_cycle': style_cycler,
        'axes.xmargin': 0.05,
        'axes.ymargin': 0.05,
        'axes.zmargin': 0.05,
        'axes.autolimit_mode': 'data',
        'polaraxes.grid': True,
        'axes3d.grid': False,
        'axes3d.automargin': True,
        'axes3d.xaxis.panecolor': (0.96, 0.96, 0.96, 0.5),
        'axes3d.yaxis.panecolor': (0.90, 0.90, 0.90, 0.5),
        'axes3d.zaxis.panecolor': (0.93, 0.93, 0.93, 0.5),
        'xaxis.labellocation': 'center',
        'yaxis.labellocation': 'center',

        # X Ticks
        'xtick.top': False,
        'xtick.bottom': True,
        'xtick.labeltop': False,
        'xtick.labelbottom': True,
        'xtick.major.size': 0.5*geometry.ex_length,
        'xtick.minor.size': 0.25*geometry.ex_length,
        'xtick.major.width': 0.67,
        'xtick.minor.width': 0.67,
        'xtick.major.pad': 0.5*geometry.ex_length,
        'xtick.minor.pad': 0.25*geometry.ex_length,
        'xtick.color': 'black',
        'xtick.labelcolor': 'black',
        'xtick.labelsize': font.script_size,
        'xtick.direction': 'out',
        'xtick.minor.visible': False,
        'xtick.major.top': True,
        'xtick.major.bottom': True,
        'xtick.minor.top': True,
        'xtick.minor.bottom': True,
        'xtick.minor.ndivs': 'auto',
        'xtick.alignment': 'center',
        
        # Y Ticks
        'ytick.left': True,
        'ytick.right': False,
        'ytick.labelleft': True,
        'ytick.labelright': False,
        'ytick.major.size': 0.5*geometry.ex_length,
        'ytick.minor.size': 0.25*geometry.ex_length,
        'ytick.major.width': 0.67,
        'ytick.minor.width': 0.67,
        'ytick.major.pad': 0.5*geometry.ex_length,
        'ytick.minor.pad': 0.25*geometry.ex_length,
        'ytick.color': 'black',
        'ytick.labelcolor': 'black',
        'ytick.labelsize': font.script_size,
        'ytick.direction': 'out',
        'ytick.minor.visible': False,
        'ytick.major.left': True,
        'ytick.major.right': True,
        'ytick.minor.left': True,
        'ytick.minor.right': True,
        'ytick.minor.ndivs': 'auto',
        'ytick.alignment': 'center',
        
        # Grid
        'grid.color': 'black',
        'grid.linestyle': '-',
        'grid.linewidth': 0.67,
        'grid.alpha': 0.125,
        
        # Legend
        'legend.loc': 'best',
        'legend.frameon': False,
        'legend.framealpha': 1,
        'legend.facecolor': 'inherit',
        'legend.edgecolor': 'black',
        'legend.fancybox': False,
        'legend.shadow': False,
        'legend.numpoints': 1,
        'legend.scatterpoints': 1,
        'legend.markerscale': 1.0,
        'legend.fontsize': font.footnote_size,
        'legend.labelcolor': None,
        'legend.title_fontsize': font.small,
        'legend.borderpad': 1/3,
        'legend.labelspacing': 1/3,
        'legend.handlelength': 2,
        'legend.handleheight': 1,
        'legend.handletextpad': 1/3,
        'legend.borderaxespad': 2/3,
        'legend.columnspacing': 2,
        
        # Figures
        'figure.titlesize': font.large,
        'figure.titleweight': 'normal',
        'figure.labelsize': font.normal_size,
        'figure.labelweight': 'normal',
        'figure.figsize': (geometry.figure_width, geometry.figure_height),
        'figure.dpi': 720,
        'figure.facecolor': 'white',
        'figure.edgecolor': 'white',
        'figure.frameon': False,
        'figure.max_open_warning': 0,
        'figure.raise_window': False,
        'figure.subplot.left': 0.125,
        'figure.subplot.right': 0.9,
        'figure.subplot.bottom': 0.11,
        'figure.subplot.top': 0.88,
        'figure.subplot.wspace': 0.2,
        'figure.subplot.hspace': 0.2,
        'figure.autolayout': False,
	'figure.constrained_layout.use': True,
        'figure.constrained_layout.w_pad': geometry.em_length / 72.27,
        'figure.constrained_layout.h_pad': geometry.ex_length / 72.27,
        'figure.constrained_layout.hspace': geometry.em_length / 72.27,
        'figure.constrained_layout.wspace': geometry.ex_length / 72.27,

        # Images
        'image.aspect': 'equal',
        'image.interpolation': 'antialiased',
        'image.interpolation_stage': 'data',
        'image.cmap': cmap,
        'image.lut': 256,
        'image.origin': 'upper',
        'image.resample': True,
        'image.composite_image': True,

        # Contour Plots
        'contour.negative_linestyle': 'dashed',
        'contour.corner_mask': True,
        'contour.linewidth': None,
        'contour.algorithm': 'mpl2014',

        # Errorbar Plots
        'errorbar.capsize': 0,

        # Histogram Plots
        'hist.bins': 'auto',

        # Scatter Plots
        'scatter.marker': '.',
        'scatter.edgecolors': 'face',

        # Agg Rendering
        'agg.path.chunksize': 0,

        # Paths
        'path.simplify': True,
        'path.simplify_threshold': 0.1,
        'path.snap': True,
        'path.sketch': None,
        # 'path.effects': 'normal',

        # Saving Figures
        'savefig.format': 'pgf',
        'savefig.bbox': 'tight',
        'savefig.transparent': True,
        'pgf.rcfonts': False,
	'pgf.preamble': '\n'.join([
                r'\usepackage{mathtools}',
                r'\usepackage[warnings-off={mathtools-colon, mathtools-overbracket}]{unicode-math}',
                r'\usepackage{lualatex-math}',
                r'\usepackage{siunitx}',
                r'\usepackage{fontspec}',
                r'\setmathfont{%s}' %(font.math),
                r'\setmainfont{%s}[Ligatures=TeX, Scale=MatchLowercase]' %(font.roman),
                r'\setsansfont{%s}[Ligatures=TeX, Scale=MatchLowercase]' %(font.sans),
                r'\setmonofont{%s}[Ligatures=TeX, Scale=MatchLowercase]' %(font.mono),
		r'\usepackage[USenglish]{babel}',
                r'\usepackage[autostyle=true]{csquotes}'
	]),
        'pgf.texsystem': 'lualatex', # default is xetex, but lualatex is required

        # Interactive Keymaps

        # Animation
})
\end{python}

\AtBeginDocument{
    \renewcommand{\abstractname}{Introduction}
    
    % Headers
    \RequirePackage{fancyhdr}
    \fancypagestyle{fancy}{
        \fancyhf{}
        \setlength{\headheight}{0.5in}
        \setlength{\footskip}{0.25in}
        \renewcommand{\headrulewidth}{0.67pt}
        \renewcommand{\footrulewidth}{0.67pt}
        \fancyhead[L]{\sffamily\thedoctitle}
        \fancyhead[R]{\sffamily\small\theauthor}
        \fancyfoot[C]{\sffamily\small\thepage}
    }
    \pagestyle{fancy}
}
