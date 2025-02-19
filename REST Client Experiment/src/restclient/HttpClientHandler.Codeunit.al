codeunit 50200 "Http Client Handler PTE" implements "Http Client Handler"
{
    Access = Internal;

    procedure Send(HttpClient: HttpClient; HttpRequestMessage: Codeunit "Http Request Message"; var HttpResponseMessage: Codeunit "Http Response Message") Success: Boolean
    var
        CurrentHttpResponseMessage: HttpResponseMessage;
    begin
        Success := HttpClient.Send(HttpRequestMessage.GetHttpRequestMessage(), CurrentHttpResponseMessage);
        HttpResponseMessage.SetResponseMessage(CurrentHttpResponseMessage);
    end;
}
