pageextension 56790 "PageExtension56790" extends "Customer Card"
{
    layout
    {
        addafter("Country/Region Code")
        {
            field(Rate;Rec.Rate)
            {
                ApplicationArea = All;
            }
        }
    }
    actions
    {
        addlast(Reporting)
        {
            action("My BC19 Ready App")
            {
                Caption = 'My BC19 Ready App';
                Image = "PrintCover";
                Promoted = False;
                ApplicationArea = All;

                trigger OnAction()var reportRec: Record "Customer";
                begin
                    reportRec:=Rec;
                    reportRec.SetRecFilter();
                    Report.Run(Report::"My BC19 Ready App", true, false, reportRec);
                end;
            }
        }
    }
}
