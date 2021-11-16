pageextension 56789 "PageExtension56789" extends "Posted Sales Invoice"
{
    actions
    {
        addlast(Reporting)
        {
            action("New Invoice")
            {
                Caption = 'New Invoice';
                Image = "PrintCover";
                Promoted = False;
                ApplicationArea = All;

                trigger OnAction()var reportRec: Record "Sales Invoice Header";
                begin
                    reportRec:=Rec;
                    reportRec.SetRecFilter();
                    Report.Run(Report::"New Invoice", true, false, reportRec);
                end;
            }
        }
    }
}
