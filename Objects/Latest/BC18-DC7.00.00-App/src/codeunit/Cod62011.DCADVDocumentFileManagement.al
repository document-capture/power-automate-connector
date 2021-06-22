codeunit 62011 "DCADV Document File Management"
{
    procedure getBase64EncodedBlobContent(Document: Record "CDC Document"; FileType: enum "DCADV Document Blob Types") Base64EncodedBlobContent: Text
    var
        TempFile: Record "CDC Temp File";
        Base64Convert: Codeunit "CDC Convert Base 64";
    begin
        case FileType of
            FileType::Pdf:
                begin
                    if not Document."PDF File".HasValue then
                        exit;
                    Document.CalcFields("PDF File");
                    TempFile.Data := Document."PDF File";
                end;
            FileType::Tiff:
                begin
                    if not Document."TIFF Image File".HasValue then
                        exit;
                    Document.CalcFields("TIFF Image File");
                    TempFile.Data := Document."TIFF Image File";
                end;


            FileType::Misc:
                begin
                    if not Document."Misc. File".HasValue then
                        exit;
                    Document.CalcFields("Misc. File");
                    TempFile.Data := Document."Misc. File";
                end;

            FileType::Xml:
                begin
                    if not Document."Xml File".HasValue then
                        exit;
                    Document.CalcFields("XML File");
                    TempFile.Data := Document."XML File";
                end;

            FileType::Html:
                begin
                    if not Document."HTML File".HasValue then
                        exit;
                    Document.CalcFields("Html File");
                    TempFile.Data := Document."Html File";
                end;

            FileType::CleanXml:
                begin
                    if not Document."Clean XML File".HasValue then
                        exit;
                    Document.CalcFields("Clean XML File");
                    TempFile.Data := Document."Clean XML File";
                end;
        end;
        Base64EncodedBlobContent := Base64Convert.ToBase64String(TempFile);
    end;
}