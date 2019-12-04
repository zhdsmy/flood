En cours de dev

# flood
A Docker image for flood web UI for rTorrent

variable name      | accepted data type | default            | description
---                | ---                | :---:              | ---
FLOOD_BASE_URI     | String             | /                  | The directory to access Flood
FLOOD_SECRET       | String             | flood              | A key for encrypting session cookie/JWT (strongly recommended to set and save)
RTORRENT_SCGI_HOST | URL / IP Address   | localhost          | The address of your rtorrent SCGI socket
RTORRENT_SCGI_PORT | Integer: 1-65535   | 5000               | The port of your rtorrent SCGI socket
RTORRENT_SOCK      | boolean            | NotSet             | Enable UNIX socket connection to rtorrent
RTORRENT_SOCK_PATH | String             |/data/rtorrent.sock | The path of the rtorrent socket
FLOOD_ENABLE_SSL   | boolean            | NotSet             | Enable bundled SSL encryption


docker run --name flood-standalone -e FLOOD_SECRET=$(openssl rand -hex 32) flood
