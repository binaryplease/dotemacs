;;; init.el ---  Initialization file for Emacs
;;; Commentary:
;;  Emacs Startup File --- initialization for Emacs
;;; Code:

(require 'package)

(setq package-archives '(("org" . "http://orgmode.org/elpa/")
                         ("melpa" . "http://melpa.org/packages/")
                         ("melpa-stable" . "http://stable.melpa.org/packages/")
                         ("gnu" . "https://elpa.gnu.org/packages/")))

(setq package-enable-at-startup nil)
(package-initialize)

(require 'org)
(org-babel-load-file (expand-file-name "~/.emacs.d/settings.org"))
(setq tramp-default-method "ssh")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a22f40b63f9bc0a69ebc8ba4fbc6b452a4e3f84b80590ba0a92b4ff599e53ad0" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "b583823b9ee1573074e7cbfd63623fe844030d911e9279a7c8a5d16de7df0ed0" default)))
 '(evil-collection-setup-minibuffer t)
 '(package-selected-packages
   (quote
    (flx beacon auctex dokuwiki-mode xml-rpc mediawiki evil-magit counsel-projectile apache-mode ox-wk org-pdfview pdf-tools latex-preview-pane format-all evil-collection yasnippet-snippets yasnippet-classic-snippets which-key use-package twilight-theme twilight-anti-bright-theme spaceline snazzy-theme projectile org-bullets magit lsp-ui lsp-java lenlen-theme ivy-hydra gruvbox-theme graphviz-dot-mode go-eldoc git-gutter general fzf flycheck evil-org evil-leader evil-commentary diff-hl dashboard cycle-themes counsel-tramp company-quickhelp company-lsp company-go ample-theme)))
 '(shell-escape-mode "-shell-escape"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(add-hook 'org-mode-hook '(lambda () (setq fill-column 80)))
(add-hook 'org-mode-hook 'turn-on-auto-fill)


(org-babel-do-load-languages
 'org-babel-load-languages
 '((dot . t))) ; this line activates dot
