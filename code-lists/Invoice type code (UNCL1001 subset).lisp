(IN-PACKAGE :PEPPOL/CODE-LISTS)

(DEFVAR |Invoice type code (UNCL1001 subset)|
  '(("Debit note related to goods or services" . "80")
    ("Metered services invoice" . "82")
    ("Debit note related to financial adjustments" . "84")
    ("Commercial invoice" . "380") ("Debit note" . "383")
    ("Prepayment invoice" . "386") ("Factored invoice" . "393")
    ("Consignment invoice" . "395") ("Insurer's invoice" . "575")
    ("Forwarder's invoice" . "623") ("Freight invoice" . "780")))

(EXPORT '|Invoice type code (UNCL1001 subset)| :PEPPOL/CODE-LISTS)