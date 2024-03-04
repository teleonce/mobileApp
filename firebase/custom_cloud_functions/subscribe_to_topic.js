const functions = require("firebase-functions");
const admin = require("firebase-admin");

if (admin.apps.length === 0) {
  admin.initializeApp();
}

exports.subscribeToTopic = functions.https.onCall(async (data, context) => {
  const userId = data.userId; // ID del usuario
  const topic = data.topic; // El tema al que suscribir el token

  const userTokensRef = admin
    .firestore()
    .collection(`users/${userId}/fcm_tokens`);
  let token;
  await userTokensRef
    .limit(1)
    .get()
    .then((querySnapshot) => {
      querySnapshot.forEach((doc) => {
        token = doc.data().fcm_token; // Asumiendo que el token se almacena en el campo 'fcm_token'
      });
    });

  const subscriptionResult = await admin
    .messaging()
    .subscribeToTopic(token, topic)
    .then((response) => {
      return { result: `Subscribed to ${topic}` };
    })
    .catch((error) => {
      console.log("Error subscribing to topic:", error);
      throw new functions.https.HttpsError(
        "unknown",
        "Failed to subscribe to topic",
        error,
      );
    });

  // Aquí agregamos la parte para guardar el topic suscrito en el documento del usuario
  const userRef = admin.firestore().collection("users").doc(userId);
  await userRef
    .update({
      topic: topic,
    })
    .then(() => {
      console.log(`Topic ${topic} saved to user ${userId}`);
    })
    .catch((error) => {
      console.log("Error saving topic to user:", error);
      throw new functions.https.HttpsError(
        "data-loss",
        "Failed to save topic to user",
        error,
      );
    });

  return subscriptionResult;
});
