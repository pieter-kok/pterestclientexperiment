codeunit 50201 "Client Builder PTE"
{
    Access = Internal;
    SingleInstance = true;

    var
        RestClient: Codeunit "Rest Client";
        IsInitialized: Boolean;
        BaseUrlTok: Label 'https://api.restful-api.dev/', Locked = true;

    internal procedure Build(): Codeunit "Rest Client"
    var
        HttpClientHandler: Codeunit "Http Client Handler PTE";
    begin
        if not IsInitialized then begin
            RestClient.Initialize(HttpClientHandler);
            RestClient.SetBaseAddress(BaseUrlTok);
            IsInitialized := true;
        end;

        exit(RestClient);
    end;
}