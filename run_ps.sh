#!/bin/bash
ansible-playbook -vvvvv create_master.yml --ask-become-pass --ask-pass
ansible-playbook -vvvvv create_follower.yml --ask-become-pass --ask-pass
