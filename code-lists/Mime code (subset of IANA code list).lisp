(IN-PACKAGE :PEPPOL/CODE-LISTS)

(DEFVAR |Mime code (subset of IANA code list)|
  '(("text/csv" . "text/csv") ("application/pdf" . "application/pdf")
    ("image/png" . "image/png") ("image/jpeg" . "image/jpeg")
    ("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
     . "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet")
    ("application/vnd.oasis.opendocument.spreadsheet"
     . "application/vnd.oasis.opendocument.spreadsheet")))

(EXPORT '|Mime code (subset of IANA code list)| :PEPPOL/CODE-LISTS)