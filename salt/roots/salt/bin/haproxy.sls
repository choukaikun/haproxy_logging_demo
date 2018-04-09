net.ipv4.ip_forward:
  sysctl.present:
    - value: 1

net.ipv4.ip_nonlocal_bind:
  sysctl.present:
    - value: 1

haproxy:
  pkg:
    - installed

  service.running:
    - watch:
      - file: /etc/haproxy/haproxy.cfg

haproxy_config_file:
  file.managed:
    - name: /etc/haproxy/haproxy.cfg
    - source: /srv/files/haproxy.cfg
