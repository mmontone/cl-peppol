(IN-PACKAGE :PEPPOL/CODE-LISTS)

(DEFVAR |Allowance reason codes (UNCL5189 subset)|
  '(("Bonus for works ahead of schedule" . "41") ("Other bonus" . "42")
    ("Manufacturer’s consumer discount" . "60")
    ("Due to military status" . "62") ("Due to work accident" . "63")
    ("Special agreement" . "64") ("Production error discount" . "65")
    ("New outlet discount" . "66") ("Sample discount" . "67")
    ("End-of-range discount" . "68") ("Incoterm discount" . "70")
    ("Point of sales threshold allowance" . "71")
    ("Material surcharge/deduction" . "88") ("Discount" . "95")
    ("Special rebate" . "100") ("Fixed long term" . "102")
    ("Temporary" . "103") ("Standard" . "104") ("Yearly turnover" . "105")))

(EXPORT '|Allowance reason codes (UNCL5189 subset)| :PEPPOL/CODE-LISTS)