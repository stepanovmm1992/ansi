Видео работы https://youtu.be/zWgreDZE_ak
Утановка postgresql 10 в конфигурации master slave -  помощью Ansible.
На текущий момент работает на ubuntu18.04 
В файл hosts прописываем ip адреса машин (пока поддержка 2 машин) - первая станет master, вторая slave.
Так же поменять пользователя удаленных машин которому будем пробрасывать rsa и по необходимости указываем пользователя от которого по ssh будет работать ansible (--user=max).



Запускается run_ps.sh



```
mmstepanov@mmstepanov-Latitude-5480:~/git/ansi$ cat run_ps.sh 
#!/bin/bash
ansible-playbook -i hosts -vvvvv create_master.yml --user=max --ask-become-pass --ask-pass
ansible-playbook -i hosts -vvvvv create_follower.yml --user=max --ask-become-pass --ask-pass
```