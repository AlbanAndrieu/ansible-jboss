ansible-jboss
====================

A role for installing jboss.

[![Build Status](https://api.travis-ci.org/AlbanAndrieu/ansible-jboss.png?branch=master)](https://travis-ci.org/AlbanAndrieu/ansible-jboss)
[![Galaxy](http://img.shields.io/badge/galaxy-jboss-blue.svg?style=flat-square)](https://galaxy.ansible.com/list#/roles/1775)
[![Tag](http://img.shields.io/github/tag/AlbanAndrieu/ansible-jboss.svg?style=flat-square)]()

## Actions

- Ensures that jboss is installed (using `apt`)

Usage example
------------

    - name: Install jboss
      connection: local  
      hosts: workstation
      remote_user: albandri
      
      roles:
        - role: jboss     
      
Requirements
------------

none

Dependencies
------------

none

License
-------

MIT

#### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/AlbanAndrieu/ansible-jboss/issues)!
