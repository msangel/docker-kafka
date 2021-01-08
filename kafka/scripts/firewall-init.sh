#!/usr/bin/env bash

# Clear input table.
iptables --flush INPUT

# Drop unmatched traffic.
iptables --policy INPUT DROP

# Accept traffic to the loopback interface.
iptables \
  --append INPUT \
  --in-interface lo \
  --jump ACCEPT

# Accept traffic to tunnel interfaces.
iptables \
  --append INPUT \
  --out-interface tap0 \
  --jump ACCEPT

iptables \
  --append INPUT \
  --out-interface tun0 \
  --jump ACCEPT

