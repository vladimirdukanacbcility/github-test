# AL-PTE-Template
Template for AL PTE (Per-Tenant Extension) for Microsoft Dynamics 365 Business Central

## Getting Started

This template provides starting files for AL development with:

### Application Folder
- **SampleTable.Table.al**: Basic table structure with fields, keys, and triggers
- **SampleManagement.Codeunit.al**: Codeunit with example procedures for data manipulation
- **SampleList.Page.al**: List page for displaying table data
- **SampleCard.Page.al**: Card page for detailed record view
- **HelloWorld.al**: Page extension example showing how to extend standard BC pages
- **app.json**: Application manifest with proper GUID and configuration

### Tests Folder
- **HelloWorld.al**: Sample test codeunit demonstrating unit test structure
- **app.json**: Test project manifest with reference to Application project

### VS Code Configuration
- **.vscode/launch.json**: Debug configurations for both Application and Tests
- **.vscode/settings.json**: AL-specific editor settings and code analyzers

### Other Files
- **main.ruleset.json**: Code analysis ruleset
- **AL-PTE-Template.code-workspace**: Multi-folder workspace configuration
- **.gitignore**: Configured for AL project artifacts

## Prerequisites

- Visual Studio Code
- AL Language extension for VS Code
- Microsoft Dynamics 365 Business Central development environment

## Usage

1. Clone this repository
2. Open the workspace file `AL-PTE-Template.code-workspace` in VS Code
3. Update the `app.json` files with your specific details (publisher, name, etc.)
4. Configure the `launch.json` file with your BC server details
5. Start developing your AL extension!

