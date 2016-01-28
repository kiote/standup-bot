## Into

![](http://g.recordit.co/qErIRe7b0U.gif)

Simple Slack bot which remembers your standup message and shows this message on demand. You can start your own version of this bot with Heroku + MongoLab addon.

To connect this bot use [outgoing webhooks](https://api.slack.com/outgoing-webhooks) with "standup:" and "standup?" keywords. Endpoint URL should be: your-heroku-app.herokuapp.com/gateway

## Local testing

* requires mongodb up and running
* env variables: `export MONGOLAB_URI=mongodb://localhost`
