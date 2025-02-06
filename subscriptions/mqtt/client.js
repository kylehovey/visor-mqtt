const mqtt = require('mqtt');

const { MQTT_BROKER, MQTT_USERNAME, MQTT_PASSWORD } = process.env;

module.exports = mqtt.connect(`mqtt://${MQTT_BROKER}`, {
  username: MQTT_USERNAME ?? '',
  password: MQTT_PASSWORD ?? '',
});
