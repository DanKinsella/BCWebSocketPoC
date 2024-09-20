namespace DanKinsella.WebSocketsPoC;

using Microsoft.Sales.Customer;

pageextension 50100 CustomerCardExt extends "Customer Card"
{
    layout
    {
        addfirst(General)
        {
            usercontrol(WebSockets; WebSocketControl)
            {
                ApplicationArea = All;

                trigger OnWebSocketOpen()
                begin
                    CurrPage.WebSockets.SendMessage('Hello from BC!');
                end;

                trigger OnWebSocketMessage(Message: Text)
                begin
                    Message('Message received: ' + Message);
                end;
            }
        }

    }

    actions
    {
        addfirst("F&unctions")
        {
            action(OpenSocket)
            {
                Caption = 'Open Socket';
                ApplicationArea = All;
                Image = LaunchWeb;
                trigger OnAction()
                begin
                    CurrPage.WebSockets.OpenSocket('ws:\\localhost:8765');
                end;
            }
        }
    }


}