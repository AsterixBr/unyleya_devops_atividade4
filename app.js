const express = require('express');
const app = express();
app.get('/', (req, res) => {
  res.send('Projeto DevOps AWS funcionando!');
});
app.listen(3000);
