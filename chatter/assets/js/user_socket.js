import { Socket } from "phoenix"

let socket = new Socket("/socket", { params: { email: window.email } });
socket.connect();

export default socket