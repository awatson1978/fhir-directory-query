
Profile:        NatlDirEndpointQryHealthcareServiceComplete
Parent:         HealthcareService
Id:             NatlDirEndpointQry-HealthcareServiceComplete
Title:          "National Directory  Endpoint Qry Exchange HealthcareService - Complete"
Description:    "The HealthCareService resource typically describes services offered by an organization/practitioner at a location. The resource may be used to encompass a variety of services covering the entire healthcare spectrum, including promotion, prevention, diagnostics, pharmacy, hospital and ambulatory care, home care, long-term care, and other health-related and community services."
* meta.lastUpdated 1..1
* extension contains
    Rating named rating 0..* MS and 
    NewPatients named newpatients 0..* MS and
    DeliveryMethod named deliverymethod 1..* MS and
    PaymentAccepted named paymentaccepted  0..* and
    RequiredDocument named requiredDocument 0..* and
    FundingSource named fundingSource 0..*
* extension[newpatients] ^short = "New Patients"
* extension[deliverymethod] ^short = "Delivery Method"
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true 
* providedBy only Reference(NatlDirEndpointQryOrganization) 
* providedBy MS
* category 1..1 MS
* category from HealthcareServiceCategoryVS (extensible)
* type MS
* type from HealthcareServiceTypeVS (extensible)
* specialty MS
* specialty from SpecialtiesVS (required)
* location only Reference(NatlDirEndpointQryLocation)
* location MS
* name MS
* comment MS
* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* coverageArea only Reference(NatlDirEndpointQryLocation)
* coverageArea MS
// * serviceProvisionCode MS
// eligibility  MS
// program  
//* characteristic MS
//* referralMethod MS
* appointmentRequired MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* availabilityExceptions MS
* endpoint only Reference(NatlDirEndpointQryEndpoint)
* endpoint MS

/*
Profile: NatlDirEndpointQryCareTeamComplete
Parent: CareTeam
Id: NatlDirEndpointQry-CareTeamComplete
Title: "National Directory Endpoint Qry Care Team - Complete"
Description: "Defines the expanded constraints and extensions on the CareTeam resource for use in a Validated Healthcare Directory"
* ^copyright = "HL7 International"
* ^publisher = "HL7 International"
* ^status = #active
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.discriminator.type = #value
* extension ^slicing.rules = #open
* extension ^mustSupport = false
* extension contains
    CareteamAlias named alias 0..* MS and
    LocationReference named location 0..* MS and
    HealthcareServiceReference named service 0..* MS and
    EndpointReference named endpoint 0..* MS
* extension[alias] ^short = "Alternate name for care team"
* extension[alias] ^definition = "Alternate names by which the team is also known"
* extension[location] ^short = "Where the care team operates"
* extension[location] ^definition = "An extension to indicate the location(s) at which the care team operates"
* extension[service] ^short = "Services provided by the care team"
* extension[service] ^definition = "An extension to describe the healthcare services provided by the care team"
* extension[endpoint] ^short = "Endpoints for the care team"
* extension[endpoint] ^definition = "An extensions indicating endpoints for the care team"
* identifier MS
* identifier.extension ^slicing.discriminator.path = "url"
* identifier.extension ^slicing.discriminator.type = #value
* identifier.extension ^slicing.rules = #open
* identifier.extension ^mustSupport = false
* identifier.extension contains IdentifierStatus named status 1..1 MS
* identifier.extension[status] ^short = "Status"
* identifier.extension[status] ^definition = "Describes the status of an identifier"
* identifier.use MS
* identifier.type MS
* identifier.system MS
* identifier.value MS
* identifier.period MS
* identifier.assigner only Reference(NatlDirEndpointQryOrganization)
* identifier.assigner MS
* status 1.. MS
* category 1..* MS
* name MS
* subject ..0 MS
* encounter ..0
* period MS
* participant MS
* participant.role MS
* participant.member only Reference(NatlDirEndpointQryCareTeam or NatlDirEndpointQryPractitionerRole or NatlDirEndpointQryOrganization)
* participant.member MS
* participant.member ^definition = "The role associated with the specific person or organization who is participating/expected to participate in the care team."
* participant.onBehalfOf ..0 MS
* participant.period MS
* reasonCode ..0 MS
* reasonReference ..0 MS
* managingOrganization ..1 MS
* managingOrganization only Reference(NatlDirEndpointQryOrganization)
* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* note MS
* note.author[x] only string or Reference(NatlDirEndpointQryPractitioner)
* note.author[x] MS
* note.time MS
* note.text MS




Profile:        NatlDirEndpointQryEndpointComplete
Parent:         Endpoint
Id:             NatlDirEndpointQry-EndpointComplete
Title:          "National Directory Endpoint Qry Exchange Endpoint - Complete"
Description:    "The technical details of an expanded endpoint that can be used for electronic services, such as a portal or FHIR REST services, messaging or operations, or DIRECT messaging."
* meta.lastUpdated 1..1
* extension contains 
    EndpointUsecase named endpoint-usecase 0..* MS and
    IGsSupported named ig-supported 0..* MS and
    EndpointType named endpoint-type 0..* MS and
    SecureExchangeArtifacts named secure-exchange-artifacts 0..* MS and
    TrustFramework named trust-framework 0..* MS and 
    DynamicRegistration named dynamic-registration 0..* MS and
    AssociatedServers named associated-servers 0..* and
    SecureEndpoint named secured-endpoint 0..1
* extension[endpoint-usecase] ^short = "Endpoint Usecase"
* status 1..1 MS
* status = #active (exactly)  
* connectionType MS 
* connectionType from EndpointConnectionTypeVS (extensible)
* connectionType ^binding.extension[0].url = $MinValueSet
* connectionType ^binding.extension[0].valueCanonical = $MinEndpointConnectionTypeVS  
* name MS
* managingOrganization only Reference(NatlDirEndpointQryOrganization)
* managingOrganization MS
* contact MS
* contact.value MS
* contact.system MS
* payloadType 1..1 MS 
* payloadType from EndpointPayloadTypeVS (extensible)
* payloadMimeType MS
* address MS


Profile:        NatlDirEndpointQryInsurancePlanComplete
Parent:         InsurancePlan
Id:             NatlDirEndpointQry-InsurancePlanComplete
Title:          "National Directory Endpoint Qry Exchange InsurancePlan - Complete"
Description:    "An InsurancePlan is a discrete package of health insurance coverage benefits that are offered under a particular network type. A given payer’s products typically differ by network type and/or covered benefits. A plan pairs a product’s covered benefits with the particular cost sharing structure offered to a consumer. A given product may comprise multiple plans (i.e. each plan offers different cost sharing requirements for the same set of covered benefits).

InsurancePlan describes a health insurance offering comprised of a list of covered benefits (i.e. the product), costs associated with those benefits (i.e. the plan), and additional information about the offering, such as who it is owned and administered by, a coverage area, contact information, etc."
* obeys network-or-NatlDirwork 
* obeys plan-type-is-distinct
* meta.lastUpdated 1..1
* identifier.type MS
* identifier.value MS
* identifier.assigner MS
* status 1..1 MS
* status = #active  (exactly) 
* type 1..1 MS 
* type from InsuranceProductTypeVS (extensible)
* type ^short = "Product Type"
* name MS
* alias MS
* ownedBy 1..1 MS
* ownedBy only Reference(NatlDirEndpointQryOrganization)
* administeredBy 1..1 MS
* administeredBy only Reference(NatlDirEndpointQryOrganization)
* coverageArea only Reference(NatlDirEndpointQryLocation)
* coverageArea MS
* contact MS
* contact.name MS
* contact.name.text MS
* contact.telecom MS
* contact.telecom.value MS
* contact.telecom.system MS
* endpoint only Reference(NatlDirEndpointQryEndpoint)
* endpoint MS 
* network only Reference(NatlDirEndpointQryNetwork)
* network  MS
* plan ^short = "Cost sharing details for the plan"
* plan.type from InsurancePlanTypeVS (extensible)
* plan.type MS 
* plan.type ^short = "Categorization of the cost sharing for the plan"
* plan.coverageArea only Reference(NatlDirEndpointQryLocation)
* plan.coverageArea MS   
* plan.network only Reference(NatlDirEndpointQryNetwork)
* period MS // Jira ticket FHIR-33206 - SMM


Profile:        NatlDirEndpointQryLocationComplete
Parent:         $USCoreLocation
Id:             NatlDirEndpointQry-LocationComplete
Title:          "National Directory Endpoint Qry Exchange Location - Complete"
Description:    "A Location is the physical place where healthcare services are provided, practitioners are employed, 
                 organizations are based, etc. Locations can range in scope from a room in a building to a geographic region/area."
* meta.lastUpdated 1..1
* extension contains
    NewPatients named newpatients 0..* MS and
    Accessibility named accessibility 0..* MS and
    $R4GeoJSONExtension named region 0..1 MS
* extension[newpatients] ^short = "New Patients"
* extension[accessibility] ^short = "Accessibility"
* extension[region] ^short = "Associated Region (GeoJSON)"
* identifier.type MS
* identifier.value MS
* status 1..1 MS
* status = $LocationStatus#active  (exactly) 
* alias MS
* description MS
* mode 0..0
* type MS
* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* position MS
* managingOrganization 0..1 MS
* managingOrganization only Reference(NatlDirEndpointQryOrganization)
* partOf 0..1 MS
* partOf only Reference(NatlDirEndpointQryLocation)
* hoursOfOperation MS
* hoursOfOperation.daysOfWeek MS
* hoursOfOperation.allDay MS
* hoursOfOperation.openingTime MS
* hoursOfOperation.closingTime MS
* availabilityExceptions MS
* endpoint MS
* endpoint only Reference(NatlDirEndpointQryEndpoint)



Profile:        NatlDirEndpointQryNetworkComplete
Parent:         $USCoreOrganization    //Organization 
Id:             NatlDirEndpointQry-NetworkComplete
Title:          "National Directory Endpoint Qry Exchange Network - Complete"
Description:    "A Network refers to a healthcare provider insurance network. A healthcare provider insurance network is an aggregation of organizations and individuals that deliver a set of services across a geography through health insurance products/plans. A network is typically owned by a payer.

In the NatlDir IG, individuals and organizations are represented as participants in a National Directory Exchange Network through the practitionerRole and National Directory Exchange-organizationAffiliation resources, respectively."
* meta.lastUpdated 1..1
* extension contains
    LocationReference named location-reference 0..* MS
* extension[location-reference] ^short = "Network coverage area"
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true (exactly)
* type from NetworkTypeVS (required)
* type 1..1 MS
* name MS
* telecom 0..0
* address 0..1 MS
* partOf 1..1 MS
* partOf only Reference(NatlDirEndpointQryOrganization)
* partOf ^short = "The organization that manages this network"
* contact MS
* contact.name MS
* contact.telecom MS
* contact.telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..*  and
       ViaIntermediary named via-intermediary 0..* 
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value  MS
* contact.telecom.system  MS
* endpoint only Reference(NatlDirEndpointQryEndpoint)
* endpoint MS 



Profile:        NatlDirEndpointQryOrganizationComplete
Parent:         $USCoreOrganization
Id:             NatlDirEndpointQry-OrganizationComplete
Title:          "National Directory Endpoint Qry Exchange Organization - Complete"
Description:    "An organization is a formal or informal grouping of people or organizations with a common purpose, such as a company, institution, corporation, community group, or healthcare practice.
Guidance:   When the contact is a department name, rather than a human (e.g., patient help line), include a blank family and given name, and provide the department name in contact.name.text"
* meta.lastUpdated 1..1
* extension contains
   Rating named rating 0..* MS and
   Qualification named qualification 0..*  MS and
   OrgDescription named org-description  0..1 MS
* extension[qualification].extension[code].value[x] from SpecialtyAndDegreeLicenseCertificateVS (extensible)
* extension[qualification] ^short = "Qualification"
* extension[org-description] ^short = "Organization Description"
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true 
* name MS
* partOf MS  
* partOf only Reference(NatlDirEndpointQryOrganization)
* address 1..* MS
* address.extension contains $GeolocationExtension named geolocation 0..1 MS
* address.type MS
* address.text MS
* address.line MS 
* address.city MS
* address.state MS
* address.postalCode MS
* address.country MS
* contact MS
* contact.telecom MS
* contact.telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* and
       ViaIntermediary named via-intermediary 0..* 
* contact.telecom.extension[via-intermediary] ^short = "Via Intermediary"
* contact.telecom.value MS
* contact.telecom.system MS
* contact.telecom.use MS
* telecom MS
* telecom.extension contains
       ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
       ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* type 1..* MS
* type from OrgTypeVS (extensible)
* endpoint MS


Profile:        NatlDirEndpointQryOrganizationAffiliationComplete
Parent:         OrganizationAffiliation
Id:             NatlDirEndpointQry-OrganizationAffiliationComplete
Title:          "National Directory Endpoint Qry Exchange OrganizationAffiliation - Complete"
Description:    "The OrganizationAffiliation resource describes relationships between two or more organizations, including the services one organization provides another, the location(s) where they provide services, the availability of those services, electronic endpoints, and other relevant information."
* meta.lastUpdated 1..1
* obeys organization-or-participatingOrganization 
* extension contains
   Rating named rating 0..* MS and
   Qualification named qualification 0..* 
* extension[qualification].extension[code].value[x] from SpecialtyAndDegreeLicenseCertificateVS (extensible)
* identifier.type MS
* identifier.value MS
* active 1..1 MS
* active = true 
* period MS //Jira ticket FHIR-33206 SMM
* organization MS 
* organization only Reference (NatlDirEndpointQryOrganization)
* participatingOrganization MS 
* participatingOrganization only Reference (NatlDirEndpointQryOrganization)
* network MS 
* network only Reference (NatlDirEndpointQryNetwork)
* code MS
* code from OrganizationAffiliationRoleVS  (extensible)
* specialty MS
* specialty from SpecialtiesVS (required)
* location MS 
* location only Reference (NatlDirEndpointQryLocation)
* healthcareService MS 
* healthcareService only Reference (NatlDirEndpointQryHealthcareService)
* telecom MS
* telecom.system MS
* telecom.value MS
* telecom.rank MS
* endpoint MS
* endpoint only Reference (NatlDirEndpointQryEndpoint)




Profile:        NatlDirEndpointQryPractitionerComplete
Parent:         $USCorePractitioner
Id:             NatlDirEndpointQry-PractitionerComplete
Title:          "National Directory Endpoint Qry Exchange Practitioner - Complete"
Description:    "Practitioner is a person who is directly or indirectly involved in the provisioning of healthcare."
* meta.lastUpdated 1..1
* identifier.type MS
* identifier.value MS
* extension contains
   Rating named rating 0..* MS 
* active 1..1  MS
* active = true 
* name MS
* name.text MS
* name.family MS
* name.given MS
* address.extension contains $GeolocationExtension named geolocation 0..1 MS 
* telecom MS 
* address MS 
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..*  and
    ViaIntermediary named via-intermediary 0..* 
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* qualification MS
* qualification.extension contains 
    PractitionerQualification named practitioner-qualification 0..1 MS
* qualification.identifier MS
* qualification.code 1..1 MS
* qualification.code from IndividualSpecialtyAndDegreeLicenseCertificateVS (extensible)
* qualification.issuer MS
* qualification.period MS
* communication MS
* communication.extension contains
   CommunicationProficiency named communication-proficiency 0..1 MS



Profile:        NatlDirEndpointQryPractitionerRoleComplete
Parent:         PractitionerRole
Id:             NatlDirEndpointQry-PractitionerRoleComplete
Title:          "National Directory Endpoint Qry Exchange PractitionerRole - Complete"
Description:    "PractionerRole describes details about a provider, which can be a practitioner or an organization. When the provider is a practitioner, 
there may be a relationship to an organization. A provider renders services to patients at a location. When the provider is a practitioner, there may also 
be a relationship to an organization. Practitioner participation in healthcare provider insurance networks may be direct or through their role at an organization."

* meta.lastUpdated 1..1
* obeys practitioner-or-organization-or-healthcareservice-or-location 
* extension contains
   Rating named rating 0..* MS and
   NewPatients named newpatients 0..* MS and
   NetworkReference named network-reference 0..1 MS and
   Qualification named qualification  0..* MS
* extension[qualification].extension[code].value[x] from IndividualSpecialtyAndDegreeLicenseCertificateVS (extensible)
* extension[newpatients] ^short = "New Patients"
* extension[network-reference] ^short = "NetworkReference"
* extension[qualification] ^short = "Qualification"
* identifier.type MS
* identifier.value MS
* active 1..1 MS
//* active = true // Jira ticket FHIR-33206-SMM to support incoming/outcgoing practititcioners
* period MS 
* practitioner only Reference(NatlDirEndpointQryPractitioner)   // 1..1 from USCore
* organization only Reference(NatlDirEndpointQryOrganization)         // 1..1 from USCore
* practitioner 0..1  MS   // 1..1 from USCore
* organization 0..1   MS  // 1..1 from USCore
* code MS  
* code from PractitionerRoleVS
* specialty  MS
* specialty from IndividualAndGroupSpecialtiesVS (required)
* location only Reference(NatlDirEndpointQryLocation)
* location MS
* healthcareService only Reference(NatlDirEndpointQryHealthcareService)
* healthcareService MS 
* telecom MS
* telecom.extension contains
    ContactPointAvailableTime named contactpoint-availabletime 0..* MS and
    ViaIntermediary named via-intermediary 0..* MS
* telecom.extension[via-intermediary] ^short = "Via Intermediary"
* telecom.system 1..1 MS
* telecom.value 1..1 MS
* telecom.rank MS
* availableTime MS
* availableTime.daysOfWeek MS
* availableTime.allDay MS
* availableTime.availableStartTime MS
* availableTime.availableEndTime MS
* notAvailable MS
* notAvailable.description MS
* notAvailable.during MS
* endpoint only Reference(NatlDirEndpointQryEndpoint) 
* endpoint 0..* MS
*/


