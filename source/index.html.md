---
title: Coop Edge Services API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell
  - java
  - javascript
  - json
 
toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/slatedocs/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true

code_clipboard: true
---
 
#Quote Handler

## POST create

> This call creates a work order basic information is required

### create Parameters
Object | Field | Type | Required | Editable | Constraints | Description
QuoteDataDTO | persons | Array<ContactDTO> | false | true | | a list of the contacts associated with the submission
QuoteDataDTO | baseData | QuoteBaseDataDTO | false | true | | a set of base info about the submission 
QuoteDataDTO.baseData | accountHolder | AccountContactDTO | false | true | | Object that holds the account holder information
QuoteDataDTO.baseData.accountHolder | subtype | String | false | false | | Type of contact (person or company)
QuoteDataDTO.baseData.accountHolder | emailAddress1 | String | true | false | 0 <= Size <= 60 | Email address of contact
QuoteDataDTO.baseData.accountHolder | publicID | String | fasle | false | | publicID of contact entity


### Sample Request
```json
{
  "jsonrpc": "2.0",
  "method": "create",
  "params": [
    {
      "persons": [],
      "baseData": {
        "accountHolder": {
          "subtype": "Person",
          "accountHolder": true,
          "firstName": "DUMMYNAMEQDK",
          "lastName": "DUMMYNAME",
          "emailAddress1": "charlotte_teece@cooperators.ca",
          "homeNumber": "479-693-0022",
          "electronicCampaigns_CG": true,
          "quotePrivacyConsent_CG": true
        },
        "periodStartDate": {
          "year": 2020,
          "month": 7,
          "day": 6
        },
        "questionSetNames": [],
        "productCode": "IRAuto_CG",
        "policyLanguage_CG": "en_CA",
        "policyAddress": {
          "state": "QC",
          "country": "CA",
          "displayName": "",
          "city": "GRANBY",
          "postalCode": "J2G 4M7",
          "addressType": "home",
          "addressLine1": "2-50 Rue Grove"
        },
        "quoteType_CG": "Quick",
        "producerCode": "WebQuote",
        "currentResidenceSince_CG": {
          "year": 2018,
          "month": 10,
          "day": 27
        }
      },
      "lobData": {
        "iRAuto_CG": {
          "preQualQuestionSets": [
            {
              "code": "IRPreQualification",
              "answers": {
                "IR1a": false,
                "IRCancelledIns": false,
                "IR1b": false,
                "IR2": false,
                "IR8": false
              }
            }
          ],
          "offerings": [],
          "coverables": {
            "drivers": [],
            "vehicles": [],
            "vehicleDrivers": []
          }
        }
      }
    }
  ]
}
```

> Sample Response

```json
{
    "result": {
        "sessionUUID": "32c21615-2f11-4d3a-aed4-9f734c40e2d4",
        "quoteID": "QD4-9JJ-TVDH9",
        "baseData": {
            "periodStatus": "Draft",
            "producerCode": "WebQuote",
            "termType": "Annual",
            "accountHolder": {
                "displayName": "DUMMYNAMEQDK DUMMYNAME",
                "subtype": "Person",
                "publicID": "pc7dev4qb:181803",
                "firstName": "DUMMYNAMEQDK",
                "lastName": "DUMMYNAME",
                "emailAddress1": "charlotte_teece@cooperators.ca",
                "primaryAddress": {
                    "state": "QC",
                    "country": "CA",
                    "displayName": "2-50 Rue Grove, GRANBY, QC J2G 4M7",
                    "publicID": "pc7dev4qb:328502",
                    "city": "GRANBY",
                    "postalCode": "J2G 4M7",
                    "addressLine1": "2-50 Rue Grove",
                    "addressType": "home"
                },
                "primaryPhoneType": "home",
                "electronicCampaigns_CG": true,
                "quotePrivacyConsent_CG": true,
                "accountHolder": true,
                "homeNumber": "479-693-0022",
                "additionalAddresses": []
            },
            "currentResidenceSince_CG": {
                "month": 10,
                "year": 2018,
                "day": 27
            },
            "otherInsuredProducts_CG": [
                {
                    "productInsured_CG": "Home",
                    "manuallySelectedProduct_CG": false
                },
                {
                    "productInsured_CG": "Farm",
                    "manuallySelectedProduct_CG": false
                },
                {
                    "productInsured_CG": "Commercial",
                    "manuallySelectedProduct_CG": false
                }
            ],
            "quoteType_CG": "Quick",
            "policyLanguage_CG": "en_CA",
            "origCreateDate_CG": {
                "month": 8,
                "year": 2020,
                "day": 21
            },
            "quotedOnce_CG": false,
            "isPromotedToSOR": false,
            "r59NewBusinessDate": {
                "month": 11,
                "year": 2019,
                "day": 11
            },
            "jobType": "Submission",
            "accountNumber": "5948952095",
            "productCode": "IRAuto_CG",
            "policyAddress": {
                "state": "QC",
                "country": "CA",
                "displayName": "2-50 Rue Grove, GRANBY, QC J2G 4M7",
                "publicID": "pc7dev4qb:328502",
                "city": "GRANBY",
                "postalCode": "J2G 4M7",
                "addressLine1": "2-50 Rue Grove",
                "addressType": "home"
            },
            "productName": "Auto",
            "periodStartDate": {
                "month": 10,
                "year": 2020,
                "day": 6
            },
            "periodEndDate": {
                "month": 10,
                "year": 2021,
                "day": 6
            }
        },
        "lobData": {
            "iRAuto_CG": {
                "preQualQuestionSets": [
                    {
                        "code": "IRPreQualification",
                        "answers": {
                            "IRCancelledIns": "false",
                            "IR2": "false",
                            "IR8": "false",
                            "IR1b": "false",
                            "IR1a": "false",
                            "IRNumberOfCancellations": null
                        }
                    }
                ],
                "offerings": [],
                "coverables": {}
            }
        },
        "virtualYesNo": true
    },
    "jsonrpc": "2.0"
}
```