permissionset 50200 "REST Client Exp. PTE"
{
    Assignable = true;
    Caption = 'REST Client Experiment', MaxLength = 30;

    Permissions =
        codeunit "Client Builder PTE" = X,
        codeunit "Get Objects PTE" = X,
        codeunit "Http Client Handler PTE" = X,
        page "Implementation PTE" = X;
}