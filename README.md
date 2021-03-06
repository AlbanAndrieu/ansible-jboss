## [![Nabla](https://debops.org/images/debops-small.png)](https://github.com/AlbanAndrieu) roles/alban_andrieu_jboss

This file was generated by Ansigenome. Do not edit this file directly but instead have a look at the files in the ./meta/ directory. 

[![License](http://img.shields.io/:license-apache-blue.svg?style=flat-square)](http://www.apache.org/licenses/LICENSE-2.0.html)
[![Travis CI](https://img.shields.io/travis/AlbanAndrieu/ansible-jboss.svg?style=flat)](https://travis-ci.org/AlbanAndrieu/ansible-jboss)
[![Branch](http://img.shields.io/github/tag/AlbanAndrieu/ansible-jboss.svg?style=flat-square)](https://github.com/AlbanAndrieu/ansible-jboss/tree/master)
[![Donate](https://img.shields.io/gratipay/AlbanAndrieu.svg?style=flat)](https://www.gratipay.com/~AlbanAndrieu)
[![Ansible Galaxy](https://img.shields.io/badge/galaxy-alban.andrieu.jboss-660198.svg?style=flat)](https://galaxy.ansible.com/alban.andrieu/jboss)
[![Platforms](http://img.shields.io/badge/platforms-ubuntu-lightgrey.svg?style=flat)](#)


Ensures that jboss is properly installed (using `apt`) and configured

### Installation

This role requires at least Ansible `v2.3.0.0`. To install it, run:

Using `ansible-galaxy`:
```shell
$ ansible-galaxy install alban.andrieu.jboss
```

Using `arm` ([Ansible Role Manager](https://github.com/mirskytech/ansible-role-manager/)):
```shell
$ arm install alban.andrieu.jboss
```

Using `git`:
```shell
$ git clone https://github.com/AlbanAndrieu/ansible-jboss.git
```

### Documentation

More information about `alban.andrieu.jboss` can be found in the
TODO [official alban.andrieu.jboss documentation](https://docs.debops.org/en/latest/ansible/roles/ansible-jboss/docs/).


### Role variables

List of default variables available in the inventory:

```YAML
jboss_enabled: yes                       # Enable module

jboss_http_port: 8180
jboss_https_port: 8443

## Where to install jboss and Unix user/group
jboss_owner                              : "jboss"
jboss_group                              : "jboss"
jboss_shell                              : "/bin/false"
jboss_base_dir                           : "/usr/share/jboss-as"

## Most likely you dont need to edit
#todo jboss_service_enabled   : 'yes'
jboss_major             : "7"
jboss_minor             : "1.1"
jboss_version           : "{{ jboss_major }}.{{ jboss_minor }}"
jboss_name              : "jboss-as-{{ jboss_version }}"
jboss_full_name         : "{{ jboss_name }}.Final"
jboss_archive_extracted : "{{ jboss_full_name }}"
jboss_archive           : "{{ jboss_full_name }}.zip"
jboss_url               : "http://download.jboss.org/jbossas/7.1/{{ jboss_full_name }}/{{ jboss_archive }}"
#jboss_home_dir          : "{{jboss_base_dir}}/{{jboss_name}}"
jboss_link_dir          : "/workspace/{{jboss_full_name}}"

docker_files_generated_directory: "./"
docker_files_enable: no
docker_volume_directory                  : "/var/log/jboss-as"
docker_working_directory                 : "/home/vagrant"
docker_image_name                        : "nabla/ansible-jboss"
```


### Detailed usage guide

Describe how to use in more detail...

### Testing
```shell
$ ansible-galaxy install alban.andrieu.jboss
$ vagrant up
```

### Contributing

The [issue tracker](https://github.com/AlbanAndrieu/ansible-jboss/issues) is the preferred channel for bug reports, features requests and submitting pull requests.

For pull requests, editor preferences are available in the [editor config](.editorconfig) for easy use in common text editors. Read more and download plugins at <http://editorconfig.org>.

In lieu of a formal styleguide, take care to maintain the existing coding style. Add unit tests and examples for any new or changed functionality.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

### Authors and license

`roles/alban_andrieu_jboss` role was written by:

- [Alban Andrieu](fr.linkedin.com/in/nabla/) | [e-mail](mailto:alban.andrieu@free.fr) | [Twitter](https://twitter.com/AlbanAndrieu) | [GitHub](https://github.com/AlbanAndrieu)

License
-------

- License: [GPLv3](https://tldrlegal.com/license/gnu-general-public-license-v3-%28gpl-3%29)

### Feedback, bug-reports, requests, ...

Are [welcome](https://github.com/AlbanAndrieu/ansible-jboss/issues)!

***

This role is part of the [Nabla](https://github.com/AlbanAndrieu) project.
README generated by [Ansigenome](https://github.com/nickjj/ansigenome/).

***

Alban Andrieu

[linkedin](fr.linkedin.com/in/nabla/)