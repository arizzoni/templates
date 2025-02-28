import io
from math import sqrt

from cycler import cycler
from matplotlib import pyplot as plt
from matplotlib import rcParams as rc
from matplotlib.ticker import (
    EngFormatter,
    FuncFormatter,
    MultipleLocator,
    PercentFormatter,
)


class Geometry:
    def metallic_ratio(n):
        return 0.5 * (n + sqrt(n**2 + 4))

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
    figure_width = (column_width - 2 * em_length) / 72.27
    # figure_height = figure_width / metallic_ratio(1)
    figure_height = (text_height - 14 * ex_length) / 72.27

    axis_dimensions = (0, 0, 1, 1)  # 0 lr margin, 0 tb margin, 100% figure size


geometry = Geometry()


class Font:
    # Font faces
    if len(romanfont) > 0:
        roman = romanfont.split("/")[1][:-3]

    if len(sansfont) > 0:
        sans = sansfont.split("/")[1][:-3]

    if len(monofont) > 0:
        mono = monofont.split("/")[1][:-3]

    if len(mathfont) > 0:
        math = mathfont.split("/")[1][:-3]

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


font = Font()


class Plot:
    cmap = plt.get_cmap("grey")
    num_plot_styles = 4
    plot_colors = []
    line_styles = []

    # Plot style cycler
    for i in range(num_plot_styles):
        plot_colors.append(cmap(1.0 * i / num_plot_styles))
        line_styles.append((0, (i + 1, 2 * i)))

    style_cycler = cycler(color=plot_colors, linestyle=line_styles)

    def get_eng_formatter(self, arg):
        return EngFormatter(unit=r"%s" % (arg), sep=r"\,")

    def get_percent_formatter(self, arg):
        return PercentFormatter(xmax=100, symbol=r"\%")

    def get_multiple_locator(self, arg):
        return MultipleLocator(base=arg, offset=0.0)

    def get_onoff_formatter(self):
        def func(x, pos):
            if x == 1:
                return r"ON"
            elif x == 0:
                return r"OFF"

        return FuncFormatter(func)

    def get_radian_formatter(self):
        pi = 3.14

        def radian_formatter(x, pos):
            if x == 0:
                return "0"
            elif round(abs(x), 2) == pi:
                if x > 0:
                    return r"$\pi$"
                else:
                    return r"$-\pi$"
            else:
                return r"$%s\,\pi$" % (round(x / pi))

        return FuncFormatter(radian_formatter)

    def get_degree_formatter(self):
        def radian_formatter(x, pos):
            return r"%s$^\circ$" % (round(x))

        return FuncFormatter(radian_formatter)

    def output_figure(self, figure):
        # if type(figure) == mpl.figure.Figure:
        with io.StringIO() as file:  # save to "in-memory file"
            figure.align_ylabels()
            figure.savefig(file, format="pgf")
            print(file.getvalue())


plot = Plot()

# Document-wide Matplotlib Configuration
# https://matplotlib.org/stable/users/explain/customizing.html
rc.update(
    {
        # Backend
        "backend": "pgf",
        # Lines
        "lines.linewidth": 0.67,
        "lines.linestyle": "-",
        "lines.marker": "none",
        "lines.markerfacecolor": "black",
        "lines.markeredgecolor": "black",
        "lines.markeredgewidth": 0.67,
        "lines.markersize": 6,
        "lines.dash_joinstyle": "round",
        "lines.dash_capstyle": "butt",
        "lines.solid_joinstyle": "round",
        "lines.solid_capstyle": "projecting",
        "lines.antialiased": True,
        "markers.fillstyle": "full",
        "pcolor.shading": "auto",
        "pcolormesh.snap": True,
        # Patches
        "patch.linewidth": 0.67,
        "patch.facecolor": "C0",
        "patch.edgecolor": "black",
        "patch.force_edgecolor": False,
        "patch.antialiased": True,
        # Hatches
        "hatch.color": "black",
        "hatch.linewidth": 0.67,
        # Boxplot - TODO
        # Font
        "font.family": "serif",
        "font.style": "normal",
        "font.variant": "normal",
        "font.weight": "normal",
        "font.stretch": "normal",
        "font.size": font.footnote_size,
        # Text
        "text.color": "black",
        "text.hinting": "default",
        "text.hinting_factor": 8,
        "text.kerning_factor": 0,
        "text.antialiased": True,
        "text.parse_math": True,
        "text.usetex": True,
        # Mathtex
        "mathtext.fontset": "stix",
        "mathtext.bf": "serif:bold",
        "mathtext.bfit": "serif:italic:bold",
        "mathtext.cal": "cursive",
        "mathtext.it": "serif:italic",
        "mathtext.rm": "serif",
        "mathtext.sf": "sans",
        "mathtext.tt": "monospace",
        "mathtext.fallback": "cm",
        "mathtext.default": "it",
        # Axes
        "axes.facecolor": "white",
        "axes.edgecolor": "black",
        "axes.linewidth": 0.67,
        "axes.grid": False,
        "axes.grid.axis": "both",
        "axes.grid.which": "major",
        "axes.titlelocation": "center",
        "axes.titleweight": "normal",
        "axes.titlecolor": "black",
        "axes.titley": None,
        "axes.titlepad": geometry.ex_length,
        "axes.titlesize": font.small,
        "axes.labelsize": font.footnote_size,
        "axes.labelpad": 0.5 * geometry.ex_length,
        "axes.labelweight": "regular",
        "axes.labelcolor": "black",
        "axes.axisbelow": "line",
        "axes.formatter.limits": "-5, 6",
        "axes.formatter.use_locale": True,
        "axes.formatter.use_mathtext": True,
        "axes.formatter.min_exponent": 0,
        "axes.formatter.useoffset": True,
        "axes.formatter.offset_threshold": 4,
        "axes.spines.left": True,
        "axes.spines.bottom": True,
        "axes.spines.top": True,
        "axes.spines.right": True,
        "axes.unicode_minus": True,
        "axes.prop_cycle": plot.style_cycler,
        "axes.xmargin": 0.05,
        "axes.ymargin": 0.05,
        "axes.zmargin": 0.05,
        "axes.autolimit_mode": "data",
        "polaraxes.grid": True,
        "axes3d.grid": False,
        "axes3d.automargin": True,
        "axes3d.xaxis.panecolor": (0.96, 0.96, 0.96, 0.5),
        "axes3d.yaxis.panecolor": (0.90, 0.90, 0.90, 0.5),
        "axes3d.zaxis.panecolor": (0.93, 0.93, 0.93, 0.5),
        "xaxis.labellocation": "center",
        "yaxis.labellocation": "center",
        # X Ticks
        "xtick.top": False,
        "xtick.bottom": True,
        "xtick.labeltop": False,
        "xtick.labelbottom": True,
        "xtick.major.size": 0.5 * geometry.ex_length,
        "xtick.minor.size": 0.25 * geometry.ex_length,
        "xtick.major.width": 0.67,
        "xtick.minor.width": 0.67,
        "xtick.major.pad": 0.5 * geometry.ex_length,
        "xtick.minor.pad": 0.25 * geometry.ex_length,
        "xtick.color": "black",
        "xtick.labelcolor": "black",
        "xtick.labelsize": font.script_size,
        "xtick.direction": "out",
        "xtick.minor.visible": False,
        "xtick.major.top": True,
        "xtick.major.bottom": True,
        "xtick.minor.top": True,
        "xtick.minor.bottom": True,
        "xtick.minor.ndivs": "auto",
        "xtick.alignment": "center",
        # Y Ticks
        "ytick.left": True,
        "ytick.right": False,
        "ytick.labelleft": True,
        "ytick.labelright": False,
        "ytick.major.size": 0.5 * geometry.ex_length,
        "ytick.minor.size": 0.25 * geometry.ex_length,
        "ytick.major.width": 0.67,
        "ytick.minor.width": 0.67,
        "ytick.major.pad": 0.5 * geometry.ex_length,
        "ytick.minor.pad": 0.25 * geometry.ex_length,
        "ytick.color": "black",
        "ytick.labelcolor": "black",
        "ytick.labelsize": font.script_size,
        "ytick.direction": "out",
        "ytick.minor.visible": False,
        "ytick.major.left": True,
        "ytick.major.right": True,
        "ytick.minor.left": True,
        "ytick.minor.right": True,
        "ytick.minor.ndivs": "auto",
        "ytick.alignment": "center",
        # Grid
        "grid.color": "black",
        "grid.linestyle": "-",
        "grid.linewidth": 0.67,
        "grid.alpha": 0.125,
        # Legend
        "legend.loc": "best",
        "legend.frameon": False,
        "legend.framealpha": 1,
        "legend.facecolor": "inherit",
        "legend.edgecolor": "black",
        "legend.fancybox": False,
        "legend.shadow": False,
        "legend.numpoints": 1,
        "legend.scatterpoints": 1,
        "legend.markerscale": 1.0,
        "legend.fontsize": font.footnote_size,
        "legend.labelcolor": None,
        "legend.title_fontsize": font.small,
        "legend.borderpad": 1 / 3,
        "legend.labelspacing": 1 / 3,
        "legend.handlelength": 2,
        "legend.handleheight": 1,
        "legend.handletextpad": 1 / 3,
        "legend.borderaxespad": 2 / 3,
        "legend.columnspacing": 2,
        # Figures
        "figure.titlesize": font.large,
        "figure.titleweight": "normal",
        "figure.labelsize": font.normal_size,
        "figure.labelweight": "normal",
        "figure.figsize": (geometry.figure_width, geometry.figure_height),
        "figure.dpi": 720,
        "figure.facecolor": "white",
        "figure.edgecolor": "white",
        "figure.frameon": False,
        "figure.max_open_warning": 0,
        "figure.raise_window": False,
        "figure.subplot.left": 0.125,
        "figure.subplot.right": 0.9,
        "figure.subplot.bottom": 0.11,
        "figure.subplot.top": 0.88,
        "figure.subplot.wspace": 0.2,
        "figure.subplot.hspace": 0.2,
        "figure.autolayout": False,
        "figure.constrained_layout.use": True,
        "figure.constrained_layout.w_pad": 0,
        "figure.constrained_layout.h_pad": 0,
        "figure.constrained_layout.hspace": 0.01,
        "figure.constrained_layout.wspace": 0.01,
        # Images
        "image.aspect": "equal",
        "image.interpolation": "antialiased",
        "image.interpolation_stage": "data",
        "image.cmap": plot.cmap,
        "image.lut": 256,
        "image.origin": "upper",
        "image.resample": True,
        "image.composite_image": True,
        # Contour Plots
        "contour.negative_linestyle": "dashed",
        "contour.corner_mask": True,
        "contour.linewidth": None,
        "contour.algorithm": "mpl2014",
        # Errorbar Plots
        "errorbar.capsize": 0,
        # Histogram Plots
        "hist.bins": "auto",
        # Scatter Plots
        "scatter.marker": ".",
        "scatter.edgecolors": "face",
        # Agg Rendering
        "agg.path.chunksize": 0,
        # Paths
        "path.simplify": True,
        "path.simplify_threshold": 0.1,
        "path.snap": True,
        "path.sketch": None,
        # 'path.effects': 'normal',
        # Saving Figures
        "savefig.format": "pgf",
        "savefig.bbox": "tight",
        "savefig.transparent": True,
        "pgf.rcfonts": False,
        "pgf.preamble": "\n".join(
            [
                r"\def\mathdefault#1{#1}",
                r"\usepackage{polyglossia}",
                r"\usepackage{csquotes}"
                r"\setdefaultlanguage[variant=american]{english}",
                r"\usepackage{mathtools}",
                r"\usepackage[warnings-off={mathtools-colon, mathtools-overbracket}]{unicode-math}",
                r"\usepackage{lualatex-math}",
                r"\usepackage[exponent-mode=engineering,list-separator={, },list-pair-separator={ and },list-final-separator={ and },complex-mode=cartesian,input-complex-root={j},output-complex-root={j},complex-root-position=before-number,complex-angle-unit=degrees,complex-symbol-degree={$^\circ$},angle-mode=decimal,angle-symbol-degree={$^\circ$},display-per-mode=fraction,inline-per-mode=single-symbol,sticky-per=true]{siunitx}",
                r"\setmathfont{%s}" % (font.math),
                r"\setmainfont{%s}[Ligatures=TeX, Scale=MatchLowercase]" % (font.roman),
                r"\setsansfont{%s}[Ligatures=TeX, Scale=MatchLowercase]" % (font.sans),
                r"\setmonofont{%s}[Ligatures=TeX, Scale=MatchLowercase]" % (font.mono),
            ]
        ),
        # The default is XeTeX, but since luatex is required by PyLuaTeX we will stay within
        # the LuaTeX ecosystem for consistency
        "pgf.texsystem": "lualatex",
        # Interactive Keymaps
        # Animation
    }
)
