# Homework Template

This template contains the skeleton for a LaTeX project using PyLuaTeX.

Long term development will migrate to Typst once the ecosystem matures further.

## Requirements

- LaTeX (TeX Live)
  - LuaLaTeX
  - LaTeXmk with a minimal .latexmkrc configuration file in the project directory:
    ```perl
    # .latexmkrc
    $pdf_mode = 4;
    $bibtex_use = 1.5;
    $synctex = 0;
    set_tex_cmds('--shell-escape');
    ```
  - The following LaTeX packages:
    - babel 
    - pythontex
    - mathtools
    - unicode-math
    - lualatex-math
    - siunitx
    - pgf
    - fontspec
    - csquotes
    - geometry
    - titlesec
    - fancyhdr

- Python >= 3.9
  - Python virtual environment for the project with the following libraries installed:
    - Pygments
    - Matplotlib
