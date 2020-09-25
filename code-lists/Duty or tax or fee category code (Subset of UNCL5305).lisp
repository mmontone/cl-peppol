(IN-PACKAGE :PEPPOL/CODE-LISTS)

(DEFVAR |Duty or tax or fee category code (Subset of UNCL5305)|
  '(("Vat Reverse Charge" . "AE") ("Exempt from Tax" . "E")
    ("Standard rate" . "S") ("Zero rated goods" . "Z")
    ("Free export item, VAT not charged" . "G")
    ("Services outside scope of tax" . "O")
    ("VAT exempt for EEA intra-community supply of goods and
            services"
     . "K")
    ("Canary Islands general indirect tax" . "L")
    ("Tax for production, services and importation in Ceuta and
            Melilla"
     . "M")))

(EXPORT '|Duty or tax or fee category code (Subset of UNCL5305)|
        :PEPPOL/CODE-LISTS)