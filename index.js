const express = require("express")

const app = express();


app.get("/", () => {
    return "Hello World"
})

app.listen(3000)