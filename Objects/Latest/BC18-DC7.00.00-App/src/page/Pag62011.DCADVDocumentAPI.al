page 62011 "DCADV Document API"
{

    APIGroup = 'documentCapture';
    APIPublisher = 'github_documentcapture';
    APIVersion = 'v1.0';
    Caption = 'dcadvDocumentAPI';
    DelayedInsert = true;
    EntityName = 'dcDocument';
    EntitySetName = 'dcDocuments';
    PageType = API;
    DeleteAllowed = false;
    ModifyAllowed = false;

    ODataKeyFields = SystemId;
    SourceTable = "CDC Document";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(SystemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Caption = 'SystemId';
                }
                field(documentNo; Rec."No.")
                {
                    ApplicationArea = All;
                    Caption = 'Document No.';
                    Editable = false;
                }
                field(sourceRecordName; Rec."Source Record Name")
                {
                    ApplicationArea = All;
                    Caption = 'Source Record Name';
                }
                field(sourceRecordId; Rec."Source Record No.")
                {
                    ApplicationArea = All;
                    Caption = 'Source Record No.';
                }

                field(documentHasPdfFile; Rec."PDF File".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Pdf Document';
                }
                field(documentHasTiffFile; Rec."TIFF Image File".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Tiff File';
                }
                field(documentHasHtmlFile; Rec."HTML File".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Html File';
                }
                field(documentHasMiscFile; Rec."Misc. File".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Misc. File';
                }
                field(documentHasCleanXmlFile; Rec."Clean XML File".HasValue)
                {
                    ApplicationArea = All;
                    Caption = 'Clean XML File';
                }
            }
        }
    }



}
