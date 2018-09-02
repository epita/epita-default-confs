; File: ~/.emacs
; Very basic Emacs configuration.
; Features: General stuff, interface customizations,
;           C mode and whitespacd mode configuration.


; General Emacs configuration
(setq debug-on-error t ; show stack trace on config error
      vc-follow-symlinks t) ; always follow symlink

; Basic interface configuration
(tool-bar-mode -1) ; hide tool bar (GUI only)
(scroll-bar-mode -1) ; hide scroll bar (GUI only)
(menu-bar-mode -1) ; hide menu bar
(global-linum-mode) ; show line numbers
(column-number-mode) ; show column number in the modeline

; Disable tabulations (repeated to ensure compatibility with any major mode)
(setq-default indent-tabs-mode nil)
(setq indent-tabs-mode nil)

; Basic C configuration
(setq c-basic-offset 4 ; spaces of indentation
      c-default-style "bsd" ; sort of fits the coding style
      fill-column 80) ; 80 columns rule

(setq whitespace-style '(face ; show ...
                         tabs tab-mark ; the tabulations,
                         lines-tail ; lines too long (> fill-column characters),
                         trailing)) ; and trailing spaces
(global-whitespace-mode)
