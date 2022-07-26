;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

((js-mode . ((js-indent-level . 2)
             (eval . (eglot-ensure))
             (eval . (prettier-on-save-mode t))
             (tab-width . 2)))
 (jsonian-mode . ((eval . (prettier-on-save-mode t))))
 (typescript-mode . ((eval . (eglot-ensure))
                     (flymake-eslint-defer-binary-check . t)
                     (eval . (flymake-eslint-enable))
                     (eval . (prettier-on-save-mode t))
                     (tab-width . 2)
                     (typescript-indent-level . 2)))
 (css-mode . ((eval . (eglot-ensure))
              (tab-width . 2)
              (css-indent-offset . 2))))
