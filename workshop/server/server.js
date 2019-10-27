const express = require("express");
const app = express();
const port = 3000;

app.get("/1337123", (req, res) => {
    return res.download("./1.tar");
});
app.get("/h4x0r2", (req, res) => {
    return res.download("./2.tar");
});
app.get("/hunder2", (req, res) => {
    return res.download("./3.tar");
});

app.listen(port, () => {
    return console.log(`File server listening on port ${port}!`);
});
