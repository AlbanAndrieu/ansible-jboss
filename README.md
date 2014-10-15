ansible-jboss
====================

A role for installing jboss.

[![Build Status](https://api.travis-ci.org/AlbanAndrieu/ansible-jboss.png?branch=master)](https://travis-ci.org/AlbanAndrieu/ansible-jboss)

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
