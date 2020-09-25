(asdf:defsystem #:peppol
  :description "PEPPOL eInvoicing library"
  :author "Mariano Montone <marianomontone@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (:cxml :xpath)
  :components ((:file "package")
               (:file "peppol")
               (:file "code-lists"))
  :perform (asdf:compile-op :after (o c)
                            (dolist (code-list-file (uiop:directory-files (asdf:system-relative-pathname :peppol "code-lists/*.lisp")))
                              (load code-list-file))))
