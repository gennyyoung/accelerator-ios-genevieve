# Credera-iOS-Accelerator

## Getting Started
1. Clone the repository into your local machine
2. Add team and bundle identifiers in Credera-iOS-Accelerator project
    - Credera-iOS-Accelerator project file > Signing & Capabilities
        - Signing (Debug)
            - Team: Credera Enterprises Company, LLC
            - Bundle Identifier: com.credera.mobile.Credera-iOS-QA
        - Signing (Release)
            - Team: Credera Enterprises Company, LLC
            - Bundle Identifier: com.credera.mobile.Credera-iOS-Accelerator
3. Include incoming and outgoing network connections for sandbox
    - Credera-iOS-Accelerator project file > Signing & Capabilities
        - App Sandbox
            1. Check Incoming Connections (Server)
            2. Check Outgoing Connections (Client)
4. Add Keychain Sharing Capability
    - Credera-iOS-Accelerator project file > Signing & Capabilities
        - Click "+ Capability" in top left corner
            1. Add "Keychain Sharing"
            2. Add Keychain Groups
                - com.credera.mobile.Credera-iOS-QA
                - com.credera.mobile.Credera-iOS-Accelerator
5. Include all necessary dependencies for Credera-iOS-Accelerator (i.e., Firebase) 
    - File > Add Package Dependencies...
6. If pulling data request is not working -> deactive your Netskope Client

## Project Features
This project is a starting point for a Swift UI application including:
- Firebase Analytics
- Firebase Remote Configuration
- Firebase Crashlytics
- App Localization Support
- Unit and Widget Testing
- Integration Testing

## Packages Included


