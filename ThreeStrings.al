page 50200 "Get Longest Common Substring"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Input)
            {
                field(FirstString; FirstString)
                {
                    Caption = 'First String';
                    ApplicationArea = All;
                    trigger OnValidate()
                    begin
                        if FirstString = '' then
                            LongestCommonSubstring := '';
                        GetLongestCommonSubstring();
                    end;
                }
                field(SecondString; SecondString)
                {
                    Caption = 'Second String';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if SecondString = '' then
                            LongestCommonSubstring := '';
                        GetLongestCommonSubstring();
                    end;
                }
                field(ThirdString; ThirdString)
                {
                    Caption = 'Third String';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if SecondString = '' then
                            LongestCommonSubstring := '';
                        GetLongestCommonSubstring();
                    end;
                }
            }
            group(Result)
            {
                field(LongestCommonSubstring; LongestCommonSubstring)
                {
                    Caption = 'Longest Common Substring';
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
    var
        FirstString: Text;
        SecondString: Text;
        ThirdString: Text;
        LongestCommonSubstring: Text;

    local procedure GetLongestCommonSubstring()
    var
        RecordMatchMgt: Codeunit "Record Match Mgt.";
    begin
        if (FirstString <> '') and (SecondString <> '') and (ThirdString <> '') then
            LongestCommonSubstring := RecordMatchMgt.GetLongestCommonSubstring(RecordMatchMgt.GetLongestCommonSubstring(FirstString, SecondString), ThirdString);
    end;
}
