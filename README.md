# template-rss-bridge

A garnix-compatible repo for deploying your own [rss-bridge](https://github.com/RSS-Bridge/rss-bridge/).

To get your own rss-bridge going:

1) Create a [garnix](https://garnix.io) account if you don't have one yet.
2) Fork this repo.
3) Make sure the garnix GitHub App is enabled on this repo.
4) Update the host name in the server config
  [./hosts/server.nix](https://github.com/garnix-io/template-rss-bridge/blob/main/hosts/rss-bridge.nix).
5) [Optional] Add your public ssh key in 
  [./hosts/server.nix](https://github.com/garnix-io/template-rss-bridge/blob/main/hosts/rss-bridge.nix).
  This will allow you to ssh into your deployed host.
6) Push your changes! garnix will build and deploy the package, and make your
   server available in a `garnix.me` domain.
