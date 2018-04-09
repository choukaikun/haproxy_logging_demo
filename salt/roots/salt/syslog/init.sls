rsyslog:
  service.running:
    - watch:
      - file: /etc/rsyslog.conf
      - file: /etc/rsyslog.d/haproxy.conf

Uncomment_modload:
  file.uncomment:
    - name: "/etc/rsyslog.conf"
    - regex: \$ModLoad imudp

uncomment_port:
  file.uncomment:
    - name: "/etc/rsyslog.conf"
    - regex: \$UDPServerRun 514

#{% if 1 == salt['cmd.retcode']('test -f /etc/rsyslog.d/haproxy.conf') %}
#haproxy_log_file:
#  file.touch:
#    - name: /etc/rsyslog.d/haproxy.conf
#{% endif %}

haproxy_log_entry:
  file.managed:
    - name: /etc/rsyslog.d/haproxy.conf
    - contents: 
      - if $programname startswith 'haproxy' then /var/log/haproxy.log
