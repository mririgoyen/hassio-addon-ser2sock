## Hass.io Add-on: ser2sock

This add-on allows you to create a socket interface for your serial device for use in Home Assistant.

### About
This add-on, in it's current state, requires a little bit of extra configuration to utilize and cannot be installed via the Hass.io Community Repositories yet.

### Installation
1. Clone this repo into your `addons` folder.
2. Modify `config.json` to expose your serial device. By default, `/dev/ttyAMA0` is exposed.
3. Set the `baudRate` and `serialDevice` path to the exposed serial device in the `options` object.
4. By default, the socket interface will be exposed on port `8100`. If you would like to change that, update the line in the `Dockerfile` that says `EXPOSE 8100`.
5. Go into Hass.io section of Home Assistant and click the add-on repositories icon in the top right corner. Then click the refresh icon. ser2sock should appear in the list.
6. Install ser2sock.
7. If everything was configured correctly, your socket interface should be available.

### Technical Details
This add-on builds a local copy of [ser2sock](https://github.com/nutechsoftware/ser2sock).

### License
MIT
