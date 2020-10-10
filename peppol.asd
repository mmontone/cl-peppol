(asdf:defsystem #:peppol
  :description "PEPPOL eInvoicing library"
  :author "Mariano Montone <marianomontone@gmail.com>"
  :license  "MIT"
  :version "0.0.1"
  :serial t
  :depends-on (:cxml :xpath)
  :components ((:file "package")
               (:file "peppol")
               (:file "codelists")
               (:module "code-lists"
                :components ((:FILE "Allowance reason codes (UNCL5189 subset)")
                             (:FILE "Charge reason code (UNCL7161)")
                             (:FILE "Credit note type code (UNCL1001 subset)")
                             (:FILE "Duty or tax or fee category code (Subset of UNCL5305)")
                             (:FILE "Electronic Address Scheme (EAS)")
                             (:FILE "ISO 3166-1:Alpha2 Country codes")
                             (:FILE "ISO 4217 Currency codes")
                             (:FILE "ISO 6523 ICD list")
                             (:FILE "Invoice type code (UNCL1001 subset)")
                             (:FILE "Invoiced object identifier scheme (UNCL 1153)")
                             (:FILE "Item type identification code (UNCL7143)")
                             (:FILE "Mime code (subset of IANA code list)")
                             (:FILE "Payment means code (UNCL4461)")
                             (:FILE "SEPA indicator")
                             (:FILE "UN-ECE Recommendation 20")
                             (:FILE "UN-ECE Recommendation 21")
                             (:FILE "VAT date code (UNCL2005 subset)")
                             (:FILE "VATEX code list")))))

;; Use:
;; (mapcar (lambda (f) `(:file ,(pathname-name f))) (uiop:directory-files (asdf:system-relative-pathname :peppol "code-lists/*.lisp")))
;; to update the asdf list of code-lists
