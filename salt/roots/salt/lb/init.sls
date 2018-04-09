include:
  - bin.haproxy

#haproxy:
#  pkg.installed:
#    - pkg: haproxy

#  service.running:
#    - watch:
#      - file: /etc/haproxy/haproxy.cfg

#haproxy_config_file:
#  file.managed:
#    - name: /etc/haproxy/haproxy.cfg
#    - source: /srv/files/haproxy.cfg
