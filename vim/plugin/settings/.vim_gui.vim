" Colourscheme
if &t_Co >= 256 || has("gui_running")
    colorscheme hybrid
endif

if &t_Co > 2 || has("gui_running")
    " switch syntax highlighting on, when the terminal has colors
    syntax on
endif