/// <summary>
/// Sample page demonstrating basic AL page structure
/// </summary>
page 80000 "Sample List"
{
    PageType = List;
    SourceTable = "Sample Table";
    Caption = 'Sample List';
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Sample Card";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the entry number.';
                }
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the description.';
                }
                field("Created Date"; Rec."Created Date")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the created date.';
                }
                field(Active; Rec.Active)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies if the entry is active.';
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(CreateNew)
            {
                ApplicationArea = All;
                Caption = 'Create New Entry';
                Image = New;
                ToolTip = 'Create a new sample entry.';

                trigger OnAction()
                var
                    SampleTable: Record "Sample Table";
                begin
                    SampleTable.Init();
                    if Page.RunModal(Page::"Sample Card", SampleTable) = Action::LookupOK then
                        CurrPage.Update(false);
                end;
            }
        }
    }
}
