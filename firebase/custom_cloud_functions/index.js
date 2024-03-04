const admin = require("firebase-admin/app");
admin.initializeApp();

const subscribeToTopic = require("./subscribe_to_topic.js");
exports.subscribeToTopic = subscribeToTopic.subscribeToTopic;
