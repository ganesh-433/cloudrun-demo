// Import the Express framework
const express = require('express');

// Create a new Express application
const app = express();

// Define the port to listen on. Cloud Run provides this via an environment variable.
const PORT = process.env.PORT || 8080;

// Define a simple endpoint that responds to GET requests
app.get('/', (req, res) => {
  res.send('Hello from Cloud Run! This is a new version 2.0..');
});

// Start the server
app.listen(PORT, () => {
  console.log(`Web service listening on port ${PORT}`);
});
