import consumer from "./consumer";

let id = window.location.pathname.split('/')[2];

consumer.subscriptions.create({channel: "PostsChannel", id: id}, {
    connected() {
        console.log("connected to post channel");
    },
    disconnected() {
        console.log("disconnected from post channel");
    },
    received(comment) {
      let el = document.createElement('li');
      el.innerHTML =  comment;
      document.querySelector('ul').appendChild(el);
    }
 });