// const {data} = require('./duo');
// data()
// console.log(data['data']())
// const data = require('./duo');
// console.log(data.__controller__)
const fs = require('fs')
let stat = fs.lstatSync('./public');
console.log(stat.isDirectory())