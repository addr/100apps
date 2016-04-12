var agent = require('./_header'),
    device = require('../device');

agent.createMessage()
  .device(device)
  .alert('Hello World!')
  .send();
