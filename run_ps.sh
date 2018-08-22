#!/bin/bash
ansible-playbook -i hosts -vvvvv create_master.yml --user=max --ask-become-pass --ask-pass
ansible-playbook -i hosts -vvvvv create_follower.yml --user=max --ask-become-pass --ask-pass
