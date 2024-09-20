namespace DanKinsella.WebSocketsPoC;
controladdin WebSocketControl
{
    Scripts = './WebSocketComms.js';

    procedure OpenSocket(ServerUrl: Text);

    procedure SendMessage(Message: Text);

    event OnWebSocketOpen();

    event OnWebSocketMessage(Message: Text);
}