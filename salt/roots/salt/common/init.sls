include:
  - common.packages

#disable_selinux:
#  selinux.setenforce:
#    - name: disabled

fix_minion_id:
  cmd.run:
    - name: hostname > /etc/salt/minion_id

policycoreutils-python:
  pkg.installed

policycoreutils:
  pkg.installed

selinux_mode:
  selinux.mode:
    - name: disabled
    - require:
      - pkg: policycoreutils
      - pkg: policycoreutils-python
