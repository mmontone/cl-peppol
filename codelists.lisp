(defpackage :peppol/code-lists
  (:use :cl)
  (:export #:get-code-id
           #:get-code-name
           #:generate-code-lists))

(in-package :peppol/code-lists)

;;;; ** Accessing code lists

(defun get-code-id (code-name code-list)
  (cdr (assoc code-name code-list :test 'equalp)))

(defun get-code-name (code-id code-list)
  (car (rassoc code-id code-list :test 'equalp)))

;;;;**Definition

;;;; Code lists are read from XML files and transformed to association lists

(defun generate-code-lists ()
  (loop for code-list-file in
                           (uiop:directory-files
                            (asdf:system-relative-pathname :peppol "lib/peppol/structure/codelist/"))
        do (generate-code-list-from-file code-list-file)))

(defun generate-code-list-from-file (filepath)
  (let ((xml
          (cxml:parse-file filepath (cxml-dom:make-dom-builder))))
    (xpath:with-namespaces (("" "urn:fdc:difi.no:2017:vefa:structure:CodeList-1"))
      (let ((title (dom:data (xpath:first-node (xpath:evaluate "/CodeList/Title/text()" xml))))
            (codes (xpath:evaluate "/CodeList/Code" xml)))
        (let ((codes-assocs
                (remove-duplicates ;; some files have repeated info, so we handle that here until they are fixed
                 (xpath:map-node-set->list
                  (lambda (code)
                    (let ((code-id-node (xpath:first-node (xpath:evaluate "./Id/text()" code)))
                          (code-name-node (xpath:first-node (xpath:evaluate "./Name/text()" code))))
                      (when (and code-id-node code-name-node)
                        (let ((code-id (dom:data code-id-node))
                              (code-name (dom:data code-name-node)))
                          (cons code-name code-id)))))
                  codes)
                 :test 'equalp))
              (varname (alexandria:symbolicate title)))
          (with-open-file (file (ensure-directories-exist (asdf:system-relative-pathname :peppol (format nil "code-lists/~a.lisp" (substitute #\- #\/ title))))
                                :direction :output
                                :external-format :utf8
                                :if-does-not-exist :create
                                :if-exists :supersede)
            (prin1 '(in-package :peppol/code-lists) file)
            (terpri file) (terpri file)
            (prin1
             `(defvar ,varname
                ',codes-assocs) file)
            (terpri file) (terpri file)
            (prin1 `(export ',varname :peppol/code-lists) file)))))))
