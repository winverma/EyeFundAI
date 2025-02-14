function [ pdfText ] = pdfRead( pdf_location )


% Start PDF reader object
reader = com.itextpdf.text.pdf.PdfReader(pdf_location);
tx = com.itextpdf.text.pdf.parser.PdfTextExtractor(reader);

% read each page, return output.
pdfText = cell(1);
page_num = 1;
page_limit_exceeded = false;
while ~page_limit_exceeded
    try
        t1 = tx.getTextFromPage(page_num);
        pdfText{page_num} = char(t1);
        page_num = page_num + 1;
    catch
        page_limit_exceeded = true;
    end
end
reader.close();



end

