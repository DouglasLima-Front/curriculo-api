const express = require('express');
const cors = require('cors');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

// Rotas
app.use('/users', require('./routes/users'));
app.use('/experiences', require('./routes/experiences'));
app.use('/educations', require('./routes/educations'));
app.use('/projects', require('./routes/projects'));
app.use('/skills', require('./routes/skills'));

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`Servidor rodando na porta ${PORT}`);
});
