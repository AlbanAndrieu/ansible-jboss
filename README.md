# ansible-jboss

A role for installing jboss.


## Actions

- Ensures that jboss is installed (using `apt`)


## Usage:
```
  - name: Install jboss
    hosts: jboss
    user: root
  #  connection: local
    
    roles:
      - jboss      
```

## License

MIT
