module.exports = {
  networks: {
    development: {
      host: "127.0.0.1",     // Localhost
      port: 7545,            // Standard Ganache GUI port
      network_id: "*",       // Match any network id
    },
  },
  
  compilers: {
    solc: {
      version: "0.8.10",     // Specify the Solidity version
    }
  },

  db: {
    enabled: false
  }
};
