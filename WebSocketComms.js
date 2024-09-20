let socket;

function OpenSocket(ServerUrl) {
    socket = new WebSocket(ServerUrl);

    socket.onopen = (event) => {
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnWebSocketOpen', '');
    };

    socket.onmessage = (event) => {       
        Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnWebSocketMessage', [event.data]);
    };
}

function SendMessage(Message) {
    socket.send(Message);
}



