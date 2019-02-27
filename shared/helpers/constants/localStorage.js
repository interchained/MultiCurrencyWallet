export default {
  enter: 'enter',
  reject: 'reject',
  firstStart: 'firstStart',
  didWidgetsDataSend: 'didWidgetsDataSend',
  activeTabId: 'activeTabId',
  testnetSkip: 'testnetSkip',
  storageRevision: '_revision',
  wasCautionShown: 'wasCautionShown',
  wasCautionPassed: 'wasCautionPassed',
  hiddenCoinsList: 'hiddenCoinsList',
  privateKeysSaved: 'privateKeysSaved',
  telosRegistrated: 'telosRegistrated',
  demoMoneyReceived: 'demoMoneyReceived',
  eosAccountActivated: `${process.env.ENTRY}:eos:activationFlag`,
  telosAccountActivated: `${process.env.ENTRY}:telos:activationFlag`,
  eosActivationPayment: `${process.env.ENTRY}:eos:activationPayment`,
}
