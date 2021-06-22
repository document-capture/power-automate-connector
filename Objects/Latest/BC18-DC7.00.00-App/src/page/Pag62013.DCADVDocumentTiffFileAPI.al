page 62013 "DCADV Document TiffFile API"
{
    APIGroup = 'documentCapture';
    APIPublisher = 'github_documentcapture';
    APIVersion = 'v1.0';
    Caption = 'dcadvDocumentContentAPI';
    DelayedInsert = true;
    EntityName = 'dcDocumentTiffFile';
    EntitySetName = 'dcDocumentTiffFiles';
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
