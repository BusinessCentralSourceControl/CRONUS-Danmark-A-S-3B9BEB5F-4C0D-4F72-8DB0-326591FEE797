Report 56789 "New Invoice"
{
    WordLayout = './Layouts/NewInvoice.docx';
    DefaultLayout = Word;

    dataset
    {
        dataitem(Header;"Sales Invoice Header")
        {
            column(ReportForNavId_2;2)
            {
            } // Autogenerated by ForNav - Do not delete
            column(ReportForNav_Header;ReportForNavWriteDataItem('Header', Header))
            {
            }
            dataitem(Line;"Sales Invoice Line")
            {
                DataItemLink = "Document No."=field("No.");
                DataItemLinkReference = Header;
                DataItemTableView = sorting("Document No.", "Line No.");

                column(ReportForNavId_3;3)
                {
                } // Autogenerated by ForNav - Do not delete
                column(ReportForNav_Line;ReportForNavWriteDataItem('Line', Line))
                {
                }
                trigger OnPreDataItem();
                begin
                    ReportForNav.OnPreDataItem('Line', Line);
                end;
            }
            trigger OnPreDataItem();
            begin
                ReportForNav.OnPreDataItem('Header', Header);
            end;
        }
    }
    requestpage
    {
        SaveValues = false;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';

                    field(ForNavOpenDesigner;ReportForNavOpenDesigner)
                    {
                        ApplicationArea = Basic;
                        Caption = 'Design';
                        Visible = ReportForNavAllowDesign;

                        trigger OnValidate()begin
                            ReportForNav.LaunchDesigner(ReportForNavOpenDesigner);
                            CurrReport.RequestOptionsPage.Close();
                        end;
                    }
                }
            }
        }
        actions
        {
        }
        trigger OnOpenPage()begin
            ReportForNavOpenDesigner:=false;
        end;
    }
    trigger OnInitReport()begin
        ;
        ReportsForNavInit;
    end;
    trigger OnPostReport()begin
    end;
    trigger OnPreReport()begin
        ;
        ReportsForNavPre;
    end;
    // --> Reports ForNAV Autogenerated code - do not delete or modify
    var ReportForNav: Codeunit "ForNAV Report Management";
    ReportForNavTotalsCausedBy: Integer;
    ReportForNavInitialized: Boolean;
    ReportForNavShowOutput: Boolean;
    ReportForNavOpenDesigner: Boolean;
    [InDataSet]
    ReportForNavAllowDesign: Boolean;
    local procedure ReportsForNavInit()var id: Integer;
    begin
        Evaluate(id, CopyStr(CurrReport.ObjectId(false), StrPos(CurrReport.ObjectId(false), ' ') + 1));
        ReportForNav.OnInit(id, ReportForNavAllowDesign);
    end;
    local procedure ReportsForNavPre()begin
        if ReportForNav.LaunchDesigner(ReportForNavOpenDesigner)then CurrReport.Quit();
    end;
    local procedure ReportForNavSetTotalsCausedBy(value: Integer)begin
        ReportForNavTotalsCausedBy:=value;
    end;
    local procedure ReportForNavSetShowOutput(value: Boolean)begin
        ReportForNavShowOutput:=value;
    end;
    local procedure ReportForNavInit(jsonObject: JsonObject)begin
        ReportForNav.Init(jsonObject, CurrReport.ObjectId);
    end;
    local procedure ReportForNavWriteDataItem(dataItemId: Text;
    rec: Variant): Text var values: Text;
    jsonObject: JsonObject;
    currLanguage: Integer;
    begin
        if not ReportForNavInitialized then begin
            ReportForNavInit(jsonObject);
            ReportForNavInitialized:=true;
        end;
        case(dataItemId)of 'Header': begin
            currLanguage:=GlobalLanguage;
            GlobalLanguage:=1033;
            jsonObject.Add('DataItem$Header$CurrentKey$Text', Header.CurrentKey);
            GlobalLanguage:=currLanguage;
        end;
        end;
        ReportForNav.AddDataItemValues(jsonObject, dataItemId, rec);
        jsonObject.WriteTo(values);
        exit(values);
    end;
// Reports ForNAV Autogenerated code - do not delete or modify -->
}