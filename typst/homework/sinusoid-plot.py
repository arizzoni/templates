import mpl_typst.as_default
import numpy as np
from cycler import cycler
from matplotlib import pyplot as plt
from matplotlib import rcParams as rc
from matplotlib.ticker import EngFormatter, FuncFormatter, MultipleLocator

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
    return EngFormatter(unit="$s$" % (arg), sep=r" ")


def get_multiple_locator(self, arg):
    return MultipleLocator(base=arg, offset=0.0)


def get_radian_formatter(self):
    def radian_formatter(x, pos):
        if x == 0:
            return "0"
        elif round(abs(x), 2) == np.pi:
            if x > 0:
                return "$pi$"
            else:
                return "$-pi$"
        else:
            return "$%s pi$" % (round(x / np.pi))

    return FuncFormatter(radian_formatter)


def get_degree_formatter(self):
    def radian_formatter(x, pos):
        return "%s degree" % (round(x))

    return FuncFormatter(radian_formatter)


rc.update(
    {
        # Backend
        "backend": "module://mpl_typst",
        # Lines
        "lines.linewidth": 1,
        "lines.linestyle": "-",
        "lines.marker": "none",
        "lines.markerfacecolor": "black",
        "lines.markeredgecolor": "black",
        "lines.markeredgewidth": 1,
        "lines.markersize": 4,
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
        "font.size": 10,
        # Text
        "text.color": "black",
        "text.hinting": "default",
        "text.hinting_factor": 8,
        "text.kerning_factor": 0,
        "text.antialiased": True,
        "text.parse_math": True,
        "text.usetex": True,
        # Axes
        "axes.facecolor": "none",
        "axes.edgecolor": "black",
        "axes.linewidth": 1,
        "axes.grid": False,
        "axes.grid.axis": "both",
        "axes.grid.which": "major",
        "axes.titlelocation": "center",
        "axes.titleweight": "normal",
        "axes.titlecolor": "black",
        "axes.titley": None,
        "axes.titlepad": 6,
        "axes.titlesize": 12,
        "axes.labelsize": 10,
        "axes.labelpad": 3,
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
        "axes.prop_cycle": style_cycler,
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
        "xtick.major.size": 36,
        "xtick.minor.size": 24,
        "xtick.major.width": 0.67,
        "xtick.minor.width": 0.67,
        "xtick.major.pad": 6,
        "xtick.minor.pad": 6,
        "xtick.color": "black",
        "xtick.labelcolor": "black",
        "xtick.labelsize": 81,
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
        "ytick.major.size": 36,
        "ytick.minor.size": 24,
        "ytick.major.width": 0.67,
        "ytick.minor.width": 0.67,
        "ytick.major.pad": 1,
        "ytick.minor.pad": 1,
        "ytick.color": "black",
        "ytick.labelcolor": "black",
        "ytick.labelsize": 81,
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
        "legend.fontsize": 8,
        "legend.labelcolor": None,
        "legend.title_fontsize": 10,
        "legend.borderpad": 1 / 3,
        "legend.labelspacing": 1 / 3,
        "legend.handlelength": 2,
        "legend.handleheight": 1,
        "legend.handletextpad": 1 / 3,
        "legend.borderaxespad": 2 / 3,
        "legend.columnspacing": 2,
        # Figures
        "figure.figsize": (6.5, 4.5),
        "figure.dpi": 720,
        "figure.facecolor": "none",
        "figure.edgecolor": "none",
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
        "image.cmap": cmap,
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
        "savefig.format": "typ",
        "savefig.bbox": "tight",
        "savefig.transparent": True,
    }
)

time = np.arange(0, 10, 0.001)
freq = 0.1
omega = 2 * np.pi * freq
sinusoid = np.sin(omega * time)

fig, ax = plt.subplots(1, 1)
ax.plot(time, sinusoid)
fig.savefig("sinusoid-plot.typ")
