Config = {}
Config.OSCoreName = "QBCore"
Config.OSCommunityMenuKey = 121 -- This is "INS" button
Config.OSCommunityFont = 1 -- 4 is default
Config.OSCommunityLocale  = "os"
Config.OSCommunityActionText = "Document Actions"
 
Config.OSr = 155
Config.OSg = 5
Config.OSb = 5
Config.OSscale = 0.4069
Config.OScol1 = 200
Config.OScol2 = 0
Config.OScol3 = 0
Config.OSWid = 0.50069
Config.OShei = 0.040000000069
 
Config.UseOSCustomFonts   = false -- If you need custom font turn ON
Config.CustomOSFontFile   = "greek" -- only if you turn custom fonts on.
Config.CustomOSFontId   = "OpenSans" -- only if you turn custom fonts on.
 
Config.OSCommunity = {
      ["public"] = {
        {
          headerTitle = "Confirmation Form",
          headerSubtitle = "Civilian Confirmation Form.",
          elements = {
            { label = "Contents of Confirmation", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "Witness Testimony",
          headerSubtitle = "Official Witness Statement",
          elements = {
            { label = "Date of Occurence", type = "input", value = "", can_be_emtpy = false },
            { label = "Details of Incident", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "Motor Vehicle Bill of Sale",
          headerSubtitle = "Bill of Sale",
          elements = {
            { label = "COME", type = "input", value = "", can_be_emtpy = false },
            { label = "Full Name", type = "input", value = "", can_be_emtpy = false },
            { label = "Agreed Price", type = "input", value = "", can_be_empty = false },
            { label = "Other Information", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "Loan Acquisition Form",
          headerSubtitle = "",
          elements = {
            { label = "First Name", type = "input", value = "", can_be_emtpy = false },
            { label = "Last Name", type = "input", value = "", can_be_emtpy = false },
            { label = "Due Amount", type = "input", value = "", can_be_empty = false },
            { label = "TO DATE", type = "input", value = "", can_be_empty = false },
            { label = "OTHER INFORMATION", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "LOAN PAYMENT DECLARATION",
          headerSubtitle = "",
          elements = {
            { label = "NAME OF DEBTOR", type = "input", value = "", can_be_emtpy = false },
            { label = "LAST NAME OF DEBTOR", type = "input", value = "", can_be_emtpy = false },
            { label = "DUE AMOUNT", type = "input", value = "", can_be_empty = false },
            { label = "OTHER INFORMATION", type = "textarea", value = "I DECLARE THAT THE DEBTOR HAS PAID HIS LOAN.", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "Weapon Permit",
          headerSubtitle = "Special weapon permit issued by the police.",
          elements = {
            { label = "First Name", type = "input", value = "", can_be_emtpy = false },
            { label = "Last Name", type = "input", value = "", can_be_emtpy = false },
            { label = "Valid Until", type = "input", value = "", can_be_empty = false },
            { label = "Information", type = "textarea", value = "THE MENTIONED CITIZEN HAS THE RIGHT TO USE WEAPONS UNTIL THE END OF THE VALIDITY OF THE DOCUMENT", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "CRIMINAL RECORD CLEARANCE",
          headerSubtitle = "",
          elements = {
            { label = "NAME OF CITIZEN", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN'S SURNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID TILL", type = "input", value = "", can_be_empty = false },
            { label = "RECORD", type = "textarea", value = "POLICE DECLARED THAT CITIZEN HAS A CLEAN RECORD UNTIL DOCUMENT EXPIRES.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "MEDICAL REPORT - PATHOLOGY",
          headerSubtitle = "Official medical report provided by a pathologist.",
          elements = {
            { label = "NAME OF CITIZEN", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN'S SURNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID TILL", type = "input", value = "", can_be_empty = false },
            { label = "MEDICAL RECORDS", type = "textarea", value = "The aforementioned citizen was examined by a health officer and determined to be healthy with no detectable long-term illnesses. This report is valid until the date mentioned.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "MEDICAL REPORT - PSYCHO TEST",
          headerSubtitle = "Official Medical Report Provided by a Psychologist.",
          elements = {
            { label = "INSURED FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "INSURED LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "MEDICAL NOTES", type = "textarea", value = "The above-mentioned citizen was examined by a health officer and determined to be mentally fit to the lowest approved standards. This report is valid until the date mentioned.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "MEDICAL REPORT - EYE SPECIALIST",
          headerSubtitle = "Official medical report provided by an eye specialist.",
          elements = {
            { label = "INSURED FIRSTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "INSURED LASTNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID UNTIL", type = "input", value = "", can_be_empty = false },
            { label = "MEDICAL NOTES", type = "textarea", value = "The above-mentioned citizen was examined by a health officer and found to be healthy with no eye disease detected. This report is valid until the date mentioned.", can_be_emtpy = false },
          }
        },
 
      ["lawyer"] = {
        {
          headerTitle = "LEGAL SERVICES AGREEMENT",
          headerSubtitle = "A contract for legal services made by a lawyer.",
          elements = {
            { label = "NAME OF CITIZEN", type = "input", value = "", can_be_emtpy = false },
            { label = "CITIZEN'S SURNAME", type = "input", value = "", can_be_emtpy = false },
            { label = "VALID TILL", type = "input", value = "", can_be_empty = false },
            { label = "INFO", type = "textarea", value = "THIS DOCUMENT IS PROOF OF LEGAL REPRESANTATION AND COVERAGE OF THE AFOREMENTIONED CITIZEN. LEGAL SERVICES ARE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        }
      }
    }
  }

