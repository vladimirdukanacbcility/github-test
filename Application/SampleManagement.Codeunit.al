/// <summary>
/// Sample codeunit demonstrating basic AL codeunit structure
/// </summary>
codeunit 80000 "Sample Management"
{
    /// <summary>
    /// Example procedure that creates a new entry
    /// </summary>
    /// <param name="Code">The code for the new entry</param>
    /// <param name="Description">The description for the new entry</param>
    /// <returns>The Entry No. of the created record</returns>
    procedure CreateEntry(Code: Code[20]; Description: Text[100]): Integer
    var
        SampleTable: Record "Sample Table";
    begin
        SampleTable.Init();
        SampleTable."Code" := Code;
        SampleTable.Description := Description;
        SampleTable.Insert(true);
        exit(SampleTable."Entry No.");
    end;

    /// <summary>
    /// Example procedure that validates a code
    /// </summary>
    /// <param name="Code">The code to validate</param>
    /// <returns>True if the code exists and is active</returns>
    procedure ValidateCode(Code: Code[20]): Boolean
    var
        SampleTable: Record "Sample Table";
    begin
        SampleTable.SetRange("Code", Code);
        SampleTable.SetRange(Active, true);
        exit(not SampleTable.IsEmpty());
    end;

    /// <summary>
    /// Example procedure that gets description by code
    /// </summary>
    /// <param name="Code">The code to look up</param>
    /// <returns>The description or empty text if not found</returns>
    procedure GetDescription(Code: Code[20]): Text[100]
    var
        SampleTable: Record "Sample Table";
    begin
        if SampleTable.Get(Code) then
            exit(SampleTable.Description);
        exit('');
    end;
}
