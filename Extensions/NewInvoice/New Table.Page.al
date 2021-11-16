page 56789 "New Table"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "New Table";
    DelayedInsert = true;
    Caption = 'New Table';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Key";Rec."Key")
                {
                    ApplicationArea = All;
                }
                field(Value;Rec.Value)
                {
                    ApplicationArea = All;
                }
                field("Shipping Name";Rec."Shipping Name")
                {
                    ApplicationArea = All;
                }
                field("Shipping Name 2";Rec."Shipping Name 2")
                {
                    ApplicationArea = All;
                }
                field("Shipping Address";Rec."Shipping Address")
                {
                    ApplicationArea = All;
                }
                field("Shipping Address 2";Rec."Shipping Address 2")
                {
                    ApplicationArea = All;
                }
                field("Shipping Country/Region Code";Rec."Shipping Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Shipping City";Rec."Shipping City")
                {
                    ApplicationArea = All;
                }
                field("Shipping County";Rec."Shipping County")
                {
                    ApplicationArea = All;
                }
                field("Shipping Post Code";Rec."Shipping Post Code")
                {
                    ApplicationArea = All;
                }
                field("Shipping Contact";Rec."Shipping Contact")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
