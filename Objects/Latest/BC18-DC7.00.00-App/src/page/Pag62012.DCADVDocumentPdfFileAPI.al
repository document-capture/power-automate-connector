page 62012 "DCADV Document PdfFile API"
{
    APIGroup = 'documentCapture';
    APIPublisher = 'github_documentcapture';
    APIVersion = 'v1.0';
    Caption = 'dcadvDocumentContentAPI';
    DelayedInsert = true;
    EntityName = 'dcDocumentPdfFile';
    EntitySetName = 'dcDocumentPdfFiles';
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
                field(systemId; Rec.SystemId)
                {
                    ApplicationArea = All;
                    Caption = 'SystemId';
                }
                field(FileContent; ApiFileManagement.getBase64EncodedBlobContent(Rec, FileTypes::Pdf))
                {
                    ApplicationArea = All;
                    Caption = 'File content';
                }
            }
        }
    }
    var
        ApiFileManagement: Codeunit "DCADV Document File Management";
        FileTypes: Enum "DCADV Document Blob Types";
}
