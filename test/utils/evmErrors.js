const forgeErrorMessage = str => `VM Exception while processing transaction: revert ${str}`;
const forgeErrorMessage2 = str => `Returned error: VM Exception while processing transaction: revert ${str}`;

const expectRevert = async (fn, errMsg) => {
  try {
    await fn;
  } catch (err) {
    if (err.message !== forgeErrorMessage(errMsg)) {
      throw err;
    }
    return;
  }
  throw new Error('should have thrown');
};

const expectRevert2 = async (fn, errMsg) => {
  try {
    await fn;
  } catch (err) {
    if (err.message !== forgeErrorMessage2(errMsg)) {
      throw err;
    }
    return;
  }
  throw new Error('should have thrown');
};

module.exports = {
  expectRevert,
  expectRevert2,
};
