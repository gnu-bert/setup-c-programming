;;; init.el --- default config

;;; Commentary:
;; 

;;; Code:

(setq package-native-compile t)

(save-place-mode t)

(set-face-attribute 'default nil :font "Mono-14")
(set-background-color "honeydew")
(set-foreground-color "black")
(set-face-attribute 'region nil :background "#666" :foreground "#ffffff")

(set-language-environment "UTF-8")
(setq display-time-24hr-format 0)
(display-time-mode)

(tool-bar-mode -1)
(menu-bar-mode t)
(setq inhibit-startup-screen t)

(line-number-mode t)
(column-number-mode t)
(setq ispell-program-name "aspell")

(global-eldoc-mode t)

(semantic-mode t)
(global-semantic-idle-completions-mode t)
(global-semantic-idle-completions-mode t)
(global-semantic-show-unmatched-syntax-mode t)
(global-semantic-idle-summary-mode t)

(flycheck-mode t)
;;(evil-mode t)

(setq c-default-style "linux"
      c-basic-offset 4)

(defun run-c-program-tmp007 ()
  "Compile C."
  (interactive)
  (defvar run-c-tmp007)
  (save-buffer)
  (setq tmp007 (concat "cc -ggdb -Wall -Wextra -pedantic " (buffer-name) " -lm && ./a.out" ))
  (shell-command run-c-tmp007))

(defvar org-babel-C-compiler)
(defvar org-babel-load-languages)
(defvar org-confirm-babel-evaluate)
(setq org-babel-C-compiler "cc")
(setq org-babel-load-languages '((C . t)))
(setq org-confirm-babel-evaluate nil)

(defun je-create-new-buffer ()
  "Create a new buffer named *new*[num]."
  (interactive)
  (switch-to-buffer (generate-new-buffer-name "*new*")))

(defun misc-notes ()
  "Open my slask.org."
  (interactive)
  (find-file "~/misc-notes.org"))

(global-set-key [f5] 'run-c-program-tmp007)
(global-set-key (kbd "M-m") 'compile)
(global-set-key [f7] 'compile)
(global-set-key [f12] 'misc-notes)

;;(add-hook 'c-mode-common-hook
;;          (lambda()
;;            (local-set-key  (kbd "C-c o") 'ff-find-other-file)))
(global-set-key  (kbd "C-c o") 'ff-find-other-file)

(provide 'init)

;;; init.el ends here
