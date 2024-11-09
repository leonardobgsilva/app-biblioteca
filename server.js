require('dotenv').config();
const express = require('express');
const path = require('path');
const queryRoutes = require('./src/routes/queries');

const app = express();
const PORT = process.env.PORT || 3000;

app.use(express.static('public'));
app.use('/api', queryRoutes);

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});