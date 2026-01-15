/// <summary>
/// Sample page extension demonstrating how to extend standard BC pages
/// This example extends the Customer List page
/// </summary>
pageextension 80100 "Customer List Extension" extends "Customer List"
{
    layout
    {
        // Add new fields to the page layout
        addafter(Name)
        {
            field("Custom Note"; CustomNote)
            {
                ApplicationArea = All;
                Caption = 'Custom Note';
                ToolTip = 'Shows a custom note for demonstration purposes.';
                
                trigger OnValidate()
                begin
                    // Add validation logic here
                end;
            }
        }
    }

    actions
    {
        addafter(CustomerLedgerEntries)
        {
            action(CustomAction)
            {
                ApplicationArea = All;
                Caption = 'Custom Action';
                Image = Action;
                ToolTip = 'Demonstrates a custom action.';

                trigger OnAction()
                begin
                    Message('Custom action triggered for customer: %1', Rec.Name);
                end;
            }
        }
    }

    var
        CustomNote: Text[100];
}