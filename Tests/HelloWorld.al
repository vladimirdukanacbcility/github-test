/// <summary>
/// Sample test codeunit demonstrating basic test structure
/// </summary>
codeunit 80100 "Sample Tests"
{
    Subtype = Test;

    [Test]
    procedure TestCreateEntry()
    var
        SampleTable: Record "Sample Table";
        SampleMgt: Codeunit "Sample Management";
        EntryNo: Integer;
    begin
        // [GIVEN] A new sample entry with code and description
        
        // [WHEN] Creating the entry
        EntryNo := SampleMgt.CreateEntry('TEST001', 'Test Description');

        // [THEN] The entry should be created successfully
        SampleTable.Get(EntryNo);
        if SampleTable."Code" <> 'TEST001' then
            Error('Code was not set correctly');
        if SampleTable.Description <> 'Test Description' then
            Error('Description was not set correctly');
        if not SampleTable.Active then
            Error('Active field should be true by default');
    end;

    [Test]
    procedure TestValidateCode()
    var
        SampleMgt: Codeunit "Sample Management";
    begin
        // [GIVEN] An entry with code TEST002
        SampleMgt.CreateEntry('TEST002', 'Test Entry');

        // [WHEN] Validating the code
        // [THEN] It should return true
        if not SampleMgt.ValidateCode('TEST002') then
            Error('Valid code should return true');
    end;

    [Test]
    procedure TestValidateNonExistentCode()
    var
        SampleMgt: Codeunit "Sample Management";
    begin
        // [GIVEN] A non-existent code
        
        // [WHEN] Validating the code
        // [THEN] It should return false
        if SampleMgt.ValidateCode('NONEXISTENT') then
            Error('Non-existent code should return false');
    end;
}