page 50200 "Implementation PTE"
{
    ApplicationArea = All;
    Caption = 'Implementation';
    PageType = Card;
    UsageCategory = Tasks;

    actions
    {
        area(Processing)
        {
            action(GetObjects)
            {
                Caption = 'Get Objects';
                Image = ServiceItem;
                ToolTip = 'Gets the objects from the web service.';

                trigger OnAction()
                var
                    GetObjects: Codeunit "Get Objects PTE";
                begin
                    GetObjects.GetObjects();
                end;
            }
        }
    }
}
