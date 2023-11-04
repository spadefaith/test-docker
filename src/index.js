const express = require('express');
const app = express();


app.use('/',(req,res)=>{
    res.json({message:'hello world 123'})
})

app.listen(8001,(err)=>{
    if(err){
        return console.error(err)
    }
    console.log('listening to port '+8001)
})