codeunit 50202 "Get Objects PTE"
{
    procedure GetObjects()
    var
        ClientBuilder: Codeunit "Client Builder PTE";
        HttpContent: Codeunit "Http Content";
        HttpResponseMessage: Codeunit "Http Response Message";
        RestClient: Codeunit "Rest Client";
        JsonArray: JsonArray;
        ObjectsTok: Label 'objects', Locked = true;
    begin
        RestClient := ClientBuilder.Build();
        HttpResponseMessage := RestClient.Get(ObjectsTok);
        if not HttpResponseMessage.GetIsSuccessStatusCode() then
            Error(ErrorInfo.Create(StrSubstNo('%1: %2', HttpResponseMessage.GetHttpStatusCode(), HttpResponseMessage.GetErrorMessage())));
        HttpContent := HttpResponseMessage.GetContent();
        JsonArray := HttpContent.AsJson().AsArray();
    end;
}
