table 56789 "New Table"
{
    LookupPageId = "New Table";

    fields
    {
        field(1;"Key";Code[30])
        {
            DataClassification = EndUserIdentifiableInformation;
        }
        field(2;Value;Text[80])
        {
            DataClassification = EndUserIdentifiableInformation;
        }
        field(56789;"Shipping Name";Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@2';
        }
        field(56790;"Shipping Name 2";Text[50])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@4';
        }
        field(56791;"Shipping Address";Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@5';
        }
        field(56792;"Shipping Address 2";Text[50])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@6';
        }
        field(56793;"Shipping Country/Region Code";Code[10])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@35';
            TableRelation = "Country/Region";
        }
        field(56794;"Shipping City";Text[30])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@7';
            TableRelation = if("Shipping Country/Region Code"=const(''))"Post Code".City
            else if("Shipping Country/Region Code"=filter(<>''))"Post Code".City where("Country/Region Code"=field("Shipping Country/Region Code"));
        }
        field(56795;"Shipping Post Code";Text[20])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@91';
            TableRelation = "Post Code";
        }
        field(56796;"Shipping County";Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@92';
        }
        field(56797;"Shipping Contact";Text[100])
        {
            DataClassification = EndUserIdentifiableInformation;
            CaptionClass = 'ForNAV,Shipping@18@8';
        }
    }
    keys
    {
        key(PK;"Key", Value)
        {
            Clustered = true;
        }
    }
}
