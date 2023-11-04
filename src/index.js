const express = require('express');
const app = express();


app.use('/',(req,res)=>{
    res.json({message:'hello world'})
})

app.listen(8002,(err)=>{
    if(err){
        return console.error(err)
    }
    console.log('listening to port '+8002)
})