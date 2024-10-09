vi api_variables.yml
rm -rf api_variables.yml
clear
vi api_variables.yml
rm -rf api_variables.yml
clear
vi api_variables.yml
ansible-vault encrypt_string --ask-vault-pass 'https://regres.in/api/unknown' --name 'api_url'
vi api_variables.yml 
vi vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
vi vault_demo1.yml
vi api_variables.yml 
clear
rm -rf api_variables.yml
clear
vi api_variables.yml
clear
vi api_variables.yml 
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml 
vi vault_demo.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
vi api_variables.yml 
ansible-playbook vault_demo1.yml --ask-vault-pass
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml 
vi vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
clear
rm -rf api_variable.yml
clear
vi api_variables.yml
rm -rf api_variables.yml
clear
vi api_variables.yml
clear
rm -rf api_variables.yml 
clear
vi api_variables.yml
clear
rm -rf api_variables.yml 
clear
vi api_variables.yml
clear
vi api_variables.yml
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml

ansible-playbookvault_demo1.yml --ask-vault-pass
ansible-playbook vault_demo1.yml --ask-vault-pass
vi api_variables.yml
rm -rf api_variables.yml 
clear
vi api_variables.yml
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml
vi vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
clear
rm -rf api_variables.yml 
clear
vi api_variables.yml
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml
vi vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
clear
rm -rf api_variables.yml 
clear
vi api_variables.yml
rm -rf api_variables.yml 
clear
vi api_variables.yml
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml 
vi vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
vi api_variables.yml 
clear
vi api_variables1.yml
ansible-vault encrypt_string 'https://reqres.in/api/unknown' --ask-vault-pass --name 'api_url' 
vi api_variables.yml
rm -rf api_variables1.yml
rm -rf api_variables.yml 
clear
vi api_variables.yml
ansible-vault encrypt_string 'https://reqres.in/api/unknown' --name 'api_url'
vi api_variables.yml 
vi vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
clear
vi app_config_template.j2 
rm -rf app_config_template.j2 
clear
ls -al
rm -rf secrets.yml
rm -rf database_variables.yml 
clear
vi app_config_template.j2
cp vault_demo1.yml vault_demo2.yml
vi vault_demo2.yml
ansible-vault create database_variables.yml
clear
ansible-vault create database_variables.yml
vi secrets.yml
clear
ansible-vault encrypt secrets.yml
clear
cd playbooks
cd vault
clear
vi secrets.yml
ansible-vault encrypt secrets.yml
cat secrets.yml
cat database_variables.yml
clear
rm -rf secrets.yml
clear
vi secrets.yml
ansible-vault encrypt secrets.yml
cat secrets.yml
cat database_variables.yml
vi app_config_template.j2 
vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
vi vault_demo2.yml
clear
ansible-playbook vault_demo2.yml --ask-vault-pass
ansible managed-node01 -m ansible.builtin.shell -a "cat /etc/app_config.yaml"
ansible-vault encrypt app_config_template.j2 
echo "Passw0rd" > password_app_config
echo "Passw0rd@123 > password_template

clear
echo "Passw0rd@123" > password_template
ansible-playbook vault_demo2.yml --vault-password-file password_app_config --vault-password-file password_template
ansible-vault edit secrets.yml
ansible-vault view secrets.yml
clear
cd playbooks
cd vault
ls -al
clear
cd playbooks
cd vault
clear
ls -al
ansible-vault decrypt secrets.yml --output temp.yml
vi temp.yml
ansible-vault decrypt api_variables.yml --output temp.yml
ansible-vault decrypt api_variables.yml --output temp1.yml
vi api_variables.yml
ansible-vault decrypt api_variables.yml temp1.yml
ansible-vault view api_variables.yml
ansible-vault view secrets.yml
cd playbooks
cd vault
clear
ansible-vault decrypt secrets.yml
vi secrets.yml
ansible-vault decrypt secrets.yml --output temp3.yml
ansible-vault decrypt database_variables.yml --output temp3.yml
vi database_variables.yml 
vi temp3.yml
vi api_variables.yml 
vi temp7.yml
ansible-vault view temp7.yml
vi temp7.yml
ansible-vault view temp7.yml
ansible-vault decrypt temp7.yml
vi secrets.yml
ansible-vault encrypt secrets.yml
ansible-vault view secrets.yml
ansible-vault edit secrets.yml
vi secrets.yml
clear
cd playbooks
cd vault
vi secrets.yml
ansible-vault view secrets.yml
ansible-vault edit secrets.yml
vi secrets.yml
ansible-vault edit secrets.yml
ansible-vault decrypt secrets.yml --output t1.yml
vi t1.yml
clear
cd /etc/ansible
sudo vi ansible.cfg
ansible-config init --disabled > ansible.cfg
sudo vi  ansible-config init --disabled > ansible.cfg
cd
ansible-config init --disabled > ansible.cfg
vi ansible.cfg
clear
ls -ltr
cd playbooks
ls -ltr
cd roles
ls -ltr
clear
cd playbooks
cd roles
ls -ltr
ansible-galaxy init webroles
cd webroles
ls -ltr
cd vars
ls -ltr
sudo vi main.yml
cd ..
cd tasks
ls -ltr
sudo vi main.yml
cd ..
cd serverroles
ls -ltr
cd meta
ls -ltr
sudo vi main.yml
cd ..
ls -ltr
cd ..
ls -ltr
sudo vi rolesplaybook.yml 
ansible-playbook rolesplaybook.yml 
clear
cd playbooks
cd roles
ls -ltr
cd ..
ansible-playbook rolesplaybook.yml 
clear
clear
cd playbooks
ls -ltr
cd roles
cd serverroles
ls -ltr
cd tasks
sudo vi main.yml
cd vars
cd ..
cd vars
sudo vi main.yml
cd ..
sudo vi rolesplaybook.yml 
cd playbooks
ls -ltr
clear
cd playbooks
rm -rf roles
ls -ltr
clear
mkdir roles
cd roles
ansible-galaxy init serverroles
ls -ltr
cd serverroles
ls -ltr
cd vars
sudo vi main.yml
cd ..
cd tasks
sudo vi main.yml
cd ../..
cd ..
sudo vi rolesplaybook.yml 
ansible-playbook rolesplaybook.yml
clear
cd roles
cd serverroles
cd tasks
sudo vi main.yml
cd ../..
cd ..
sudo vi rolesplaybook.yml 
ansible-playbook rolesplaybook.yml 
clear
ansible-galaxy collection list
ansible-galaxy collection list | grep aws
ansible-galaxy collection list | grep -i aws
ansible-galaxy collection list | grep -i azure
ansible-galaxy collection list | grep -i google
ansible-galaxy collection list | grep -i community.asa
ansible-galaxy collection list | grep -i oracle
ansible-galaxy collection list | grep -i oci
ansible-galaxy collection install oci
ansible-galaxy collection install oracle.oci
ll /usr/share/ansible/
vi /etc/ansible/ansible.cfg 
ll ~/.ansible/collections/
ll ~/.ansible/collections/ansible_collections/
ansible-galaxy collection init sangram.aws
ll
ll sangram/
ll sangram/aws/
vi sangram/aws/galaxy.yml 
cat sangram/aws/galaxy.yml 
ansible-galaxy collection upgrade oracle.oci
ansible-galaxy collection --help
ansible-galaxy collection install --upgrade oracle.oci
cat ~/.ansible/collections/ansible_collections/oracle/oci/README.md 
exit
clear
cd playbooks
cd roles
cd serverroles
ls -ltr
cd defaults
sudo vi main.yml
cd ..
cd tasks
sudo vi main.yml
cd ..
cd vars
sudo vi main.yml
cd ../..
cd ..
sudo vi rolesplaybook.yml 
ansible-playbook rolesplaybook.yml 
clear
cd vars
clear
cd roles
cd vars
clear
cd serverroles
cd tasks
sudo vi main.yml
cd ..
cd vars
sudo vi main.yml
cd ..
sudo vi rolesplaybook.yml 
ansible-playbook rolesplaybook.yml 
cd ..
ansible thinknyx_servers ansible.builtin.shell -a "ls -ltr /home/madhuri"
clear
ansible thinknyx_servers -b ansible.builtin.shell -a "ls -ltr /home/madhuri"
clear
ansible thinknyx_servers -b -m ansible.builtin.shell -a "ls -ltr /home/madhuri"
cd playbooks
cd roles
cd serverroles
cd vars
sudo vi main.yml
cd ../..
cd ..
ansible-playbook rolesplaybook.yml 
ansible thinknyx_servers -b -m ansible.builtin.shell -a "ls -ltr /home/madhuri"
cd playbooks/
clear
cd playbooks
ls -ltr
cd collections
ls -ltr
ansible-galaxy collection install community.general
ansible-galaxy collection install community.general --force
ls -ltr
ansible-galaxy collection install madhuri75jha.general
clear
cd playbooks
cd collections
ansible-galaxy collection init py_demo_Collection
ansible-galaxy collection init madhuri75jha.newpy_Collection
ls -ltr
cd madhuri75jha/
ls -ltr
cd newpy_Collection/
tree
cd ..
tree
ll
ansible-galaxy collection list | grep oracle
ansible-galaxy collection list | grep azure
ansible-galaxy collection list | grep microsoft
ansible-galaxy collection --help
ansible-galaxy collection remove oracle.oci
ll
ansible-galaxy collection install oracle.oci -p sangram/
vi /etc/ansible/ansible.cfg 
ls -la
vi ansible.cfg 
rm -rf ~/.ansible/collections/ansible_collections/oracle
rm -rf ~/.ansible/collections/ansible_collections/oracle.oci-5.3.0.info/
ansible-galaxy collection remove oracle.oci -p sangram/
ansible-galaxy collection install oracle.oci -p sangram/
ll sangram/
ansible-galaxy collection install oracle.oci -p /usr/share/ansible/collections --force
rm -rf sangram/ansible_collections/
ansible-galaxy collection install oracle.oci
history
ansible-galaxy collection list | grep microsoft
rm -rf ~/.ansible/collections/ansible_collections/oracle
ansible-galaxy collection list | grep oracle
ll
cat playbooks/collections/madhuri75jha/
cd playbooks/collections/
tree
mv madhuri75jha/my_collections1/madhuri75jha-my_collections1-1.0.0.tar.gz madhuri75jha/newpy_Collection/
tree
mv madhuri75jha/newpy_Collection/madhuri75jha-my_collections1-1.0.0.tar.gz madhuri75jha/my_collections1/
ll ~/.ansible/collections/
ansible-galaxy collection init sangram.azure
ll
ll sangram/
rm -rf sangram/
cd 
clear
cd playbooks
cd collections
tree
clear
ansible-galaxy collection --help
ansible-galaxy collection publish --help
ansible-galaxy collection build
ansible-galaxy collection build --help
ansible-galaxy role --help
cd playbooks
cd collections
ansible-galaxy role --help
cd ..
cd roles
ansible-galaxy role import --help
clear
clear
cd playbooks
cd collections
cd madhuri75jha/
cd my_collections1/
ls -ltr
cd roles
cd serverroles
ls -ltr
cd vars
sudo vi main.yml
cd ..
cd serverroles
cd tasks
sudo vi main.yml
cd ..
sudo vi collections_demorole.yml
ansible-playbook collections_demorole.yml 
cd collections/
cd madhuri75jha/
cd my_collections1/
cd serverroles
ls -ltr
cd roles
ls -ltr
cd serverroles/
ls -ltr
cd tasks
ls -ltr
cd meta
cd..
cd ..
cd meta
ls -ltr
sudo vi main.yml
clear
cd playbooks
cd roles
cd serverroles
ls -ltr
pwd
cd 
cd playbooks
cd collections
ls -ltr
cd madhuri75jha
ls -ltr
cd my_collections1/
ls -ltr
cd roles
cp -r /home/ubuntu/playbooks/roles/serverroles .
ls -ltr
cd serverroles
ls -ltr
cd tasks
sudo vi main.yml
clear
cd playbooks
cd roles
cd serverroles
cd
cd playbooks
cd collections
ls -ltr
cd madhuri75jha/
cd my_collections1/
ls -ltr
cd roles
cd ..
ansible-galaxy collections build
ansible-galaxy collection build
ls -ltr
rm -rf madhuri75jha-my_collections1-1.0.0.tar.gz 
ls -ltr
tree
ls -ltr
ls -ltR
ls -R
ls -al
ansible-galaxy collection build
cd meta
ls -ltr
sudo vi runtime.yml 
clear
cd playbooks
ls -ltr
sudo vi collections_demorole.yml 
ansible-playbook collections_demorole.yml 
cd collections
cd madhuri75jha
cd my_collections1/
cd roles/
cd serverroles/
cd tasks
sudo vi main.yml
cd ..
cd vars
sudo vi main.yml
cd
cd playbooks
ansible-playbook collections_demorole.yml 
ansible all -m command -a "id ansible_user"
cd 
ansible all -m command -a "id ansible_user"
ansible all -m command -a "id madhuri"
clear
cd playbooks
ls -ltr
sudo vi ex_handlers_loop_conditions_sangram.yml
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
cd ..
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
cd playbooks
clear
cd playbooks
cd
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
cd playbooks
clear

ansible-playbook ex_handlers_loop_conditionals.yml
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
clear
sudo vi ex_handlers_loop_conditionals.yml
ansible-playbook ex_handlers_loop_conditionals.yml
clear
cd plabooks
clear
cd playbooks
sudo vi ex_handlers_loop_conditionals.yml
clear
sudo vi ex_handlers_loop_conditionals.yml
clear
sudo vi ex_handlers_loop_conditionals.yml
ansible-playbook ex_handlers_loop_conditionals.yml
sudo vi ex_handlers_loop_conditionals.yml
ls -ltr
sudo vi ex_handlers_loop_conditions_sangram_a.yml
sudo vi ex_handlers_loop_conditions_sangram.yml
ansible-playbook ex_handlers_loop_conditions_sangram.yml
ansible-playbook ex_handlers_loop_conditionals.yml
cd
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
cd playbooks
ansible-playbook ex_handlers_loop_conditionals.yml
ansible-playbook ex_handlers_loop_conditions_sangram.yml
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
ansible-playbook ex_handlers_loop_conditions_sangram.yml
sudo vi ex_handlers_loop_conditions_sangram.yml
ansible-playbook ex_handlers_loop_conditions_sangram.yml
sudo vi ex_handlers_loop_conditions_sangram.yml
ansible-playbook ex_handlers_loop_conditions_sangram.yml
ansible managed-node01 -m apt -a "name=php8.3-fpm,apache2 state=absent" -b
ansible-playbook ex_handlers_loop_conditions_sangram.yml
ansible-doc -l
ansible-doc --help
ansible-doc -l | grep ansible.builtin
ansible-doc -l | grep ansible.builtin.co
ansible-doc -l | grep ansible.builtin.systemd
ansible-doc --help
ansible-doc plugin ansible.builtin.copy
ansible-doc ansible.builtin.copy
ansible-doc ansible.builtin.systemd
clear
cd playbooks
sudo vi magic_exampl.yml
ansible-playbook magic_exampl.yml
clear
ansible-galaxy collection list
ansible-galaxy collection list | grep aws
ansible-galaxy collection list | grep azure
ansible-galaxy collection list | grep oci
ansible-galaxy collection install oracle.oci
ansible-galaxy collection install oracle.oci -p /usr/share/ansible/collections
clear
cat ~/.ansible/collections/ansible_collections/oracle/oci/README.md
clear
ansible-galaxy collection install --upgrade oracle.oci
rm -rf ~/.ansible/collections/ansible_collections/oracle
clear
cd playbooks
cd collections
ls -ltr
cd ..
rm -rf collection/
ls -ltr
cd collections
ls -ltr
cd ..
rmdir collections
rmdir -R collections
rmdir --help
cd collections
cd madhuri75jha/
ls -ltr
cd my_collectionns
cd my_collections1
ls -ltr
cd roles
ls -ltr
cd serverroles
ls -ltr
cd
cd playbooks
rm -r collections
ls -ltr
clear
mkdir -p collections
cd collections
ansible-galaxy collection init madhuri75jha.my_collections1
tree
sudo vi galaxy.yml
cd madhuri75jha/
cd my_collections1/
ls -ltr
sudo vi galaxy.yml 
cd meta
vi runtime.yml
cd roles
cd ..
cd roles
cp ~/playbooks/roles/serverroles .
cp -r ~/playbooks/roles/serverroles .
ls -ltr
cd serverroles
ls -ltr
cd tasks
ls -ltr
vi main.yml
cd ../..
cd ..
ansible-galaxy collection build
ls -ltr
exit
clear
ansible-doc -l
clear
ansible-doc -l | grep ansible.builtin
ansible-doc -l | grep ansible.builtin.systemd
ansible-doc ansible.builtin.copy
clear
cd playbooks
ls -ltr
sudo vi collections_demorole.yml
clear
sudo vi collections_demorole.yml
ls -ltr
clear
ls -ld
ls -d
clear
ansible-playbook collections_demorole.yml 
cd roles
cd serverroles
ls -ltr
cd tasks
ls -ltr
vi main.yml
cd ..
sudo vi collections_demorole.yml
ansible-playbook collections_demorole.yml 
cd
ansible all -m ansible.builtin.file -a "path=/home/madhuri/data state=absent" --become
ansible all -m ansible.builtin.user -a "name=madhuri state=absent" --become
clear
cd playbooks
sudo vi collections_demorole.yml 
ansible-playbook collections_demorole.yml 
clear
cd collections
ls -ltr
cd ..
cd collections
cp ~/playbooks/collections_demorole.yml .
clear
ls -ltr
clear
ls -ltr
sudo vi collections_demorole.yml 
ls -ltr
ansible-playbook collections_demorole.yml 
clear
sudo vi collections_demorole.yml 
clear
sudo vi collections_demorole.yml 
ls -ltr
ansible-playbook collections_demorole.yml 
sudo vi collections_demorole.yml 
cd ..
cd roles
ls -ltr
rm -r serverroles
cd ..
rm -r roles
clear
ls -ltr
clear
sudo vi collections_demorole.yml 
clear
ls -ltr
clear
ansible-playbook collections_demorole.yml 
clear
ansible-playbook collections_demorole.yml 
sudo vi collections_demorole.yml 
ansible-galaxy collection list
sudo vi collections_demorole.yml 
ansible-galaxy collection install madhuri75jha.my_collections1
sudo vi collections_demorole.yml 
ansible-playbook collections_demorole.yml 
ls -ltr
clear
ansible-playbook collections_demorole.yml 
clear
cat playbooks/vault/api_variables.yml 
echo -e '$ANSIBLE_VAULT;1.1;AES256\n63333865386134613965336664646237383233323333346531616361363663383166666434646562\n3037373361306432623535343838656633626261653364300a373061363332356365363661376234\n32383665633332643737653665346463633630366662353832303430346637613762326234663238\n6536623335343734650a316338666265393039336133646430306631363765633835653837663934\n64363730626534363165346635633532663361333233623564393962616364373863' | ansible-vault decrypt
cat $ANSIBLE_VAULT;1.1;AES256
clear
cat /etc/os-release
cd playbooks
cd roles
cd collections
ls -ltr
cd madhuri75jha/
cd my_collections1/
cd roles
ls -ltr
cd serverroles/
clear
cd playbooks
cd roles
cd ..
cp importroles_ex.yml includeroles_ex.yml
sudo vi importroles_ex.yml 
ansible-playbook importroles_ex.yml
sudo vi importroles_ex.yml 
ansible-playbook importroles_ex.yml
ansible-playbook includeroles_ex.yml
sudo vi includeroles_ex.yml 
ansible-playbook includeroles_ex.yml
clear
cd playbooks
clear
clear
cd playbooks
cd
ansible  managed-node01 -m ansible.builtin.copy -a 'src=/var/tmp/mydemo_script.sh dest=/var/tmp/mydemo_script.sh mode=755'
ansible  managed-node01 -m ansible.builtin.copy -a 'src=/var/tmp/mydemo_script.sh dest=/var/tmp/mydemo_script.sh mode=755' --become --become-user=root
clear
sudo vi mydemo_script.sh
bash mydemo_script.sh 
ansible  managed-node01 -m ansible.builtin.copy -a 'src=/home/ubuntu/mydemo_script.sh dest=/var/tmp/mydemo_script.sh mode=755' --become --become-user=root
ansible managed-node01 -m ansible.builtin.shell -a "ls -ltr /var/tmp/mydemo_script.sh"
ansible  managed-node01 -m ansible.builtin.shell -a "/var/tmp/mydemo_script.sh"
clear
ansible all -m ansible.builtin.command -a 'uptime'
ansible all -a 'uptime'
ansible all -m ansible.builtin.command -a 'cat /etc/os-release'
ansible thinknyx_servers -m ansible.builtin.user -a "name=Shelly state=present" --become --become-user=root
ansible all -m ansible.builtin.user -a "name=Shelly groups=Project append=yes" --become --become-user=root
clear
ansible all -m ansible.builtin.group -a "name=Project state=present" --become --become-user=root
ansible all -m ansible.builtin.user -a "name=Shelly groups=Project append=yes" --become --become-user=root
ansible managed-node01 -m ansible.builtin.file -a "path=/var/tmp/testfile1.txt mode=777 groups=Project state=touch" --become --become-user=root
clear
ansible managed-node01 -m ansible.builtin.file -a "path=/var/tmp/testfile1.txt mode=777 group=Project state=touch" --become --become-user=root
clear
ansible managed-node01 -m ansible.builtin.file -a "path=/var/tmp/Samplestextfile.txt mode=777 group=Project state=touch" --become --become-user=root
ansible managed-node01 -m ansible.builtin.fetch -a "src=/var/tmp/Samplestextfile.txt dest=~/fetched/" --become --become-user=root
ls -ltr
sudo vi my_demo1_script.sh
bash my_demo1_script.sh
ansible managed-node01 -m ansible.builtin.copy -a 'src=/var/tmp/my_demo1_script.sh dest=/var/tmp/my_demo1_script.sh mode=755' --become --become-user=root
clear
ansible managed-node01 -m ansible.builtin.copy -a 'src=/home/ubuntu/mydemo1_script.sh dest=/var/tmp/mydemo1_script.sh mode=755' --become --become-user=root
ls -ltr
clear
ansible managed-node01 -m ansible.builtin.copy -a 'src=/home/ubuntu/my_demo1_script.sh dest=/var/tmp/my_demo1_script.sh mode=755' --become --become-user=root
ansible managed-node01 -m ansible.builtin.shell -a "ls -ltr /var/tmp/my_demo1_script.sh" 
ansible managed-node01 -m ansible.builtin.shell -a "/var/tmp/my_demo1_script.sh"
ansible all -m ansible.builtin.apt -a "name=nginx state=absent" -b
clear
ansible thinknyx_servers -m ansible.builtin.apt "name=nginx state=present" --become --become-user=root
clear
ansible all -m ansible.builtin.apt -a "name=nginx state=present" -b
ansible managed-node01 -m ansible.builtin.service -a "name=nginx state=stopped" --become --become-user=root
ansible managed-node01 -m ansible.builtin.service -a "name=nginx state=restarted" --become --become-user=root
clear
ansible all -m systemd -a "name=apache2 state=stopped" -b
clear
ansible managed-node01 -m ansible.builtin.service -a "name=nginx state=restarted" --become --become-user=root
clear
cd playbooks
ls -ltr
cd vault
clear
ls -ltr
sudo vi app_config_template.j2 
clear
ls -ltr
sudo vi app_config_template.j2 
ansible-vault view app_config_template.j2 
clear
sudo vi app_config_template.j2 
ansible-vault view app_config_template.j2 
ansible-vault edit database_variables.yml 
ansible-vault decrypt app_config_template.j2 
ansible-vault decrypt database_variables.yml --output database_variables_develop.yml 
cat database_variables_develop.yml
echo -e 'encrypted_vault_string' | ansible-vault decrypt
clear
playbooks
clear
cd playbooks
cd vault
ls -ltr
sudo vi api_variables.yml 
rm -rf api_variables.yml 
sudo vi api_variables.yml
ansible-vault encrypt_string 'https://reqres.in/api/unknown' --name 'api_url'
sudo vi api_variables.yml
clear
sudo vi api_variables.yml 
echo -e '$ANSIBLE_VAULT;1.1;AES256356665663366346163633431616337613036356536363834353138313337663837653165646163396431396534393333623130383332666266336435366465660a313735323639656564326263306633616532613337393531386539646563383839353661306131616434346531663130356566346161333135333433643931330a64393539306539633963356136303034373932343639666236313839633332616539326539633634636438373030363437643334383332323037396436646364' | ansible-vault decrypt
clear
echo -e '$ANSIBLE_VAULT;1.1;AES256356665663366346163633431616337613036356536363834353138313337663837653165646163396431396534393333623130383332666266336435366465660a313735323639656564326263306633616532613337393531386539646563383839353661306131616434346531663130356566346161333135333433643931330a64393539306539633963356136303034373932343639666236313839633332616539326539633634636438373030363437643334383332323037396436646364' | ansible-vault decrypt
clear
sudo vi api_variables.yml 
echo -e '$ANSIBLE_VAULT;1.1;AES256\n35666566336634616363343161633761303635653636383435313831333766383765316564616339\n6431396534393333623130383332666266336435366465660a313735323639656564326263306633\n61653261333739353138653964656338383935366130613161643434653166313035656634616133\n3135333433643931330a643935393065396339633561363030343739323436396662363138396333\n32616539326539633634636438373030363437643334383332323037396436646364' | ansible-vault decrypt
clear
ansible all -m apt -a "name=nginx state=absent" -b
ansible all -m apt -a "name=nginx state=present" -b
ansible '*' -m ansible.builtin.package -a "name=nginx state=present" -b
ansible '*' -m ansible.builtin.shell -a "systemctl status nginx" -b
ansible all -m systemd -a "name=apache2 state=stopped" -b
clear
ansible '*' -m ansible.builtin.shell -a "systemctl status nginx" -b
ansible all -m apt -a "name=nginx state=present" -b
ansible '*' -m ansible.builtin.shell -a "systemctl status nginx" -b
ansible managed-node01 -m ansible.builtin.systemd -a "name=nginx state=started" -b
ansible '*' -m ansible.builtin.shell -a "systemctl status nginx" -b
sudo vi inventory_test.yml
ansible-playbook inventory_test.yml
sudo vi inventory_test.yml
ansible-playbook inventory_test.yml
ansible-playbook -i hosts inventory_test.yml
ansible-playbook -i /etc/ansible/hosts inventory_test.yml
sudo vi inventory_test.yml
ansible-playbook -i /etc/ansible/hosts inventory_test.yml
ansible-playbook inventory_test.yml
sudo vi inventory_test.yml
ansible-playbook inventory_test.yml
ansible-playbook -i /etc/ansible/hosts inventory_test.yml
sudo vi inventory_test.yml
clear
cd playbooks
ls -ltr
sudo vi ex_handlers_test.yml 
cd playbooks
sudi vi ex_handlers*
sudo vi ex_handlers*
clear
clear
sudo vi inventory_test.yml 
ansible-playbook inventory_test.yml 
clear
cd playbooks
cd vault
sudo vi app_config_template.j2 
cd ..
sudo vi vault_demo2.yml
ansible-vault create database_variables.yml
cd vault
sudo vi app_config_template.j2 
cd ..
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml  --ask-vault-pass
ls -ltr
cd vault
sudo vi api_variables.yml 
ansible-vault view api_variables.yml 
cd ..
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml  --ask-vault-pass
sudo vi vault_demo2.yml
cd vault
sudo vi api_variables.yml 
cd ..
sudo vi vault_demo2.yml
cd vault
sudo vi api_variables.yml 
ansible-vault encrypt_string 'https://reqres.in/api/unknown' --name 'api_url'
sudo vi api_variables.yml 
cd ..
ls -ltr
sudo vi vault_Demo2.yml
sudo vi vault_demo2.yml
ansible-playbook api_variables.yml 
ansible-playbook vault_demo2.yml
sudo vi vault_demo2.yml
ls -ltr
cd vault
ls -ltr
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml
sudo vi vault_demo2.yml
sudo vi api_variables.yml 
ansible-playbook vault_demo2.yml
sudo vi api_variables.yml 
ansible-playbook vault_demo2.yml --ask-vault-pass
ansible-vault encrypt_string --ask-vault-pass 'https://reqres.in/api/unknown' --name 'api_url'
sudo vi api_variables.yml 
ansible-playbook vault_demo2.yml --ask-vault-pass
sudo vi vault_demo2.yml
cd ..
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
cd ..
cd playbooks
sudo vi vault_demo1.yml
ls -ltr
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
ls -ltr
rm -rf vault_demo2.yml 
rm -rf database_variables.yml 
cd vault
ls -ltr
sudo vi vault_demo.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
sudo vi vault_demo1.yml
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
sudo vi vault_demo2.yml
sudo vi database_variables_develop.yml 
sudo vi vault_demo2.yml
sudo vi database_variables_develop.yml 
sudo vi app_config_template.j2 
sudo vi database_variables.yml
ls -ltr
cp database_variables_develop.yml database_variables.yml 
clear
cd playbooks
ls -ltr
cd vaults
cd vault
sudo vi app_config_template.j2 
cd ..
cd vault
ls -ltr
sudo vi database_variables.yml
ansible-vault view database_variables.yml
rm -rf database_variables.yml
sudo vi app_config_template.j2 
cd ..
ls -ltr
sudo vi vault_demo2.yml
clear
cd playbooks
cd vault
ls -ltr
sudo vi vault_demo1.yml
ansible-playbook vault_demo1.yml
ansible-playbook vault_demo1.yml --ask-vault-pass
rm -rf vault_demo2.yml
cp vault_demo1.yml vault_demo2.yml
ls -ltr
sudo vi vault_demo2.yml
clear
sudo vi app_config_template.j2 
sudo vi vault_demo2.yml
sudo vi database_variables.yml
ansible-vault create database_variables.yml
clear
ansible-vault create database_variables.yml
clear
rm -rf database_variables.yml
clear
sudo vi app_config_template.j2 
sudo vi vault_demo2.yml
ansible-vault create database_variables_develop.yml 
clear
ansible-vault create database_variables_develop.yml 
clear
ansible-vault create database_variables.yml
sudo vi app_config_template.j2 
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
sudo vi vault_demo2.yml
ansible managed-node01 -b -m ansible.builtin.file -a "path=/etc/app_config1.yaml state=absent"
ansible-playbook vault_demo2.yml --ask-vault-pass
ansible managed-node01 -b -m ansible.builtin.file -a "path=/etc/app_config1.yaml state=absent"
clear
rm -rf database_variables.yml
sudo vi vault_demo2.yml
sudo vi app_config_template.j2 
clear
sudo vi app_config_template.j2 
sudo vi vault_demo2.yml
ansible-vault create database_variables.yml
sudo vi app_config_template.j2
sudo vi vault_demo2.yml
ansible-playbook vault_demo2.yml --ask-vault-pass
ansible managed-node01 -b -m ansible.builtin.file -a "path=/etc/app_config1.yaml state=absent"
clear
ansible-playbook vault_demo2.yml --ask-vault-pass
ansible managed-node01 -m ansible.builtin.shell -a "cat /etc/app_config.yaml"
ls -ltr
rm -rf password_template password_app_config
ls -ltr
clear
ansible-vault encrypt app_config_template.j2 
echo "Passw0rd" > password_app_config
echo "Passw0rd@123" > password_template
ansible-playbook vault_demo2.yml --vault-password-file password_app_config --vault-password-file password_template
ll playbooks/
ansible-inventory 
ansible-inventory --list
cd playbooks/
ll
cd ..
ll
cd playbooks/
ll
cp /etc/ansible/hosts 
cp /etc/ansible/hosts .
mv hosts custom_hosts
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --list 
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --graph
exit
clear
nano create_dir_file.sh 
bash create_dir_file.sh 
ls -ltr
cd new_directory/
ls -ltr
clear
cd ..
nano create_dir_file.sh 
bash create_dir_file.sh 
nano create_dir_file.sh 
bash create_dir_file.sh 
nano create_dir_file.sh 
clear
rm -r new_directory
ls -ltr
nano create_dir_file.sh 
clear
rm -rf create_dir_file.sh 
clear
nano create_dir_file.sh
bash create_dir_file.sh 
clear
clear
nano create_dir_file.sh
clearr
clear
rm -rf new_directory/
clear
nano create_dir_file.sh
clear
nano create_dir_file.sh
clear
nano create_dir_file.sh
bash create_dir_file.sh 
rm -rf create_dir_file.sh 
sudo hostnamectl set-hostname thinknyx
bash
clear
sudo vi create_direc_file.sh
bash create_direc_file.sh
clear
ansible thinknyx_servers -m user -a "name=madhuri state=absent remove=yes" --become
ansible thinknyx_servers -m user -a "name=madhuri state=absent" --become
ansible thinknyx_servers -m file -a "path=/home/madhuri/data state=absent" --become
clear
cd playbooks
clear
sudo vi includeroles_ex.yml 
ansible-playbook includeroles_ex.yml 
sudo vi importroles_ex.yml 
ansible-playbook importroles_ex.yml 
clear
cd playbooks
cd roles
ls -ltr
ansible-galaxy init webroles
ls -ltr
cd webroles
ls -ltr
clear
cd ..
cd webroles
cd tasks
vi main.yml
cd vars
cd ..
cd vars
vi main.yml
cd ..
cd meta
ls -ltr
vi main.yml
clear
cd..
cd ../..
cd ..
clear
cd roles
clear
ls -ltr
cd webroles
cd tasks
vi main.yml
cd ..
cd vars
vi main.yml
cd ..
cd meta
vi main.yml
clear
cd ..
clear
git --version
clear
cleatr
clear
cd playbooks
cd roles
clear
ls -ltr
cd ..
ls -ltr
clear
cd roles
ls -ltr
cd ..
sudo vi includeroles_ex.yml 
cd ..
ansible thinknyx_servers -m user -a "name=madhuri state=absent" --become
ansible thinknyx_servers -m file -a "path=/home/madhuri/data state=absent" --become
clear
cd playbooks
cd roles
clear
ls -ltr
cd ..
clear
cd roles
ls -ltr
cd ..
sudo vi includeroles_ex.yml 
ansible-playbook includeroles_ex.yml 
sudo vi importroles_ex.yml 
ansible-playbook importroles_ex.yml 
clear
cd roles
ls -ltr
cd webroles
cd tasks
vi main.yml
cd ..
cd vars
vi main.yml
cd ..
cd meta
vi main.yml
cd ..
clear
cd ..
clear
cd roles
clear
cd playbooks
clear
cd roles
clear
cd playbooks
clear
cd roles
ls -ltr
cd webroles
cd tasks
vi main.yml
cd ..
cd vars
vi main.yml
cd ..
cd meta
vi main.yml
cd ..
cd
git --version
cd playbooks
cd roles
cd webroles
git init
git add .
git commit -m "Initial commit for webroles"
git config --global user.email "madhuri75jha"
git commit -m "Initial commit for webroles"
git branch -M main
git remote add origin https://github.com/madhuri75jha/webroles.git
git push -u origin main
ls -ltr
ls -al
git pull origin main
git status
git push origin main
git branch -a
git pull
ls
ls -alrt
rm -rf .git/
ls
git status
git init
git add .
git commit -m "first commit"
git branch -M main
git branch -a
git remote add origin https://github.com/madhuri75jha/webrole-test.git
git status
git push -u origin main
ansible-galaxy collection list | grep amazon
ansible-galaxy collection list | grep azure
ansible-galaxy collection list | grep oci
ansible-galaxy collection list | grep oracke
ansible-galaxy collection list | grep oracle
ansible-galaxy collection install oracle.oci
clear
cd playbooks
clear
cd roles
ls -ltr
cd webroles
ls -la
rm -rf .git
clear
cd ..
clear
cd webroles
ls -ltr
clear
cd ..
clear
cd ..
clear
cd roles
ls -ltr
cd webroles
cd tasks
vi main.yml
cd ..
cd vars 
vi main.yml
cd ..
cd meta 
vi main.yml
git --version
cd ..
git init
git add .
git commit -m "Initial commit of webrole"
git status
git pull origin main
git remote add origin https://github.com/madhuri75jha/webrole.git
git pull
git pull origin main
clear
rm -rf .git
clear
git init
git add README.md
git commit -m "first commit"
clear
rm -rf .git
clear
echo "# webrole" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/madhuri75jha/webrole.git
git push -u origin main
clear
rm -rf .git
clear
git init
rm -rf .git
clear
cd ..
mv serverroles/ ~/playbooks 
clear
ls -ltr
cd ..
ls -ltr server*
clear
cd roles
clear
git init
git add .
git commit -m "Initial commit of Webrole"
git remote add origin https://github.com/madhuri75jha/webrole.git
git push -u origin main
clear
cd playbooks
cd roles
cd webroles
clear
clear 
cd playbooks
cd roles
cd webroles
clear
cd ..
ansible-galaxy role import --role-name webroles https://github.com/madhuri75jha/webrole.git
ansible-galaxy role -h
ansible-galaxy role import
clear
ansible-galaxy role import madhuri75jha https://github.com/madhuri75jha/webrole.git
clear
cd webroles
ansible-galaxy role import madhuri75jha https://github.com/madhuri75jha/webrole.git
clear
sudo ansible-galaxy role import madhuri75jha https://github.com/madhuri75jha/webrole.git
clear
sudo ansible-galaxy role import madhuri75jha webrole
clear
sudo ansible-galaxy role import --token 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 madhuri75jha webrole
clear
git clone https://github.com/madhuri75jha/webrole.git
ansible-galaxy install madhuri75jha.webroles
clear
ansible-galaxy role import webroles madhuri75jha https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --help
clear
ansible-galaxy role import --role-name webrole madhuri75jha https://github.com/madhuri75jha/webrole.git
cd ..
clear
ansible-galaxy role import --role-name webroles --token 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 madhuri75jha https://github.com/madhuri75jha/webrole.git
pip install --upgrade ansible
sudo apt install python3-pip
ansible-galaxy role import --role-name webroles madhuri75jha https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --role-name webrole madhuri75jha https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --role-name webrole madhuri75jha https://github.com/madhuri75jha/webroles/webrole.git
ansible-galaxy role import --role-name webrole/webroles madhuri75jha https://github.com/madhuri75jha/webrole.git
clear
ansible-galaxy role import https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --help
ansible-galaxy role --status
ansible-galaxy role --help
ansible-galaxy role import --help
ansible-galaxy role import --status
ansible-galaxy role import --status madhuri75jha https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --status madhuri75jha https://github.com/madhuri75jha/webrole.git -vvv
ansible-galaxy role import --role-name webrole https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --role-name webroles madhuri75jha https://github.com/madhuri75jha/webrole.git
git remote add origin https://github.com/madhuri75jha/webrole.git
cd playbooks
cd roles
cd webroles
git remote add origin https://github.com/madhuri75jha/webrole.git
clear
ansible-galaxy role import --role-name webroles https://github.com/madhuri75jha/webrole.git
clear
ansible-galaxy role import https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --role-name webroles https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --role-name webroles https://github.com/madhuri75jha/webrole.git
ansible-galaxy role import --role-name webroles madhuri75jha https://github.com/madhuri75jha/webrole.git
cd playbooks
cd roles
cd weroles
clear
cd webroles
ls -ltr
ls -la
cd ..
cd webrole
cd webroles
cd webrole
ls -la
cd wbroles
cd webroles
ls -la
cd meta 
vi main.yml
cd
cd playbooks
cd roles
ls -la
cd webroles
ls -la
rm -rf webrole/
clear
ls -la
cd meta
vi main.yml
clear
cd
clear
cd /etc/ansible
vi hosts
clear
sudo vi hosts
clear
cd
clear
cd /etc/ansible
sudo vi hosts
sudo ansible thinknyx_servers --list-hosts
ansible-inventory --list
cd
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --list
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --graph
clear
pwd
ls -la cust*
cd playbooks
ls -ltr custom_hosts 
sudo vi custom_hosts 
ls -ltr ansible.fg
cd ..
sudo vi ansible.cfg
clear
ansible-inventory --list
clear
ansible-inventory --list
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --list
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --list --graph
clear
ansible-inventory --list
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --list
ansible-inventory -i /home/ubuntu/playbooks/custom_hosts --graph
ansible-inventory -i hosts --help
clear
ansible-inventory -i /etc/ansible/hosts --help
clear
cd /etc/ansible
ansible-inventory -i hosts --help
clear
sudo vi hosts
ansible -i /etc/ansible/hosts thinknyx_servers -m debug -a "var=http_port"
sudo vi hosts
ansible -i /etc/ansible/hosts thinknyx_servers -m ansible.builtin.debug -a "var=http_port"
clear
cd playbooks
sudo vi inventory_test.yml
ansible-playbook inventory_test.yml 
clear
cd playbooks
clear
cd ..
clear
cd playbooks
sudo vi inventory_test.yml 
ansible-playbook inventory_test.yml 
clear
ansible-inventory -i /etc/inventory/hosts inventory_test.yml 
clear
ansible-playbook -i /etc/ansible/inventory inventory_test.yml 
clear
ansible-playbook -i /etc/ansible/hosts inventory_test.yml 
clear
cd /etc/ansible
clear
ansible -i /etc/ansible/hosts thinknyx_servers -m ansible.builtin.debug -a "var=ansible_host"
ansible -i /etc/ansible/hosts thinknyx_servers -m ansible.builtin.debug -a "var=http_port"
cd playbooks/
ls -l 
cd collections/
ls -l
ll madhuri75jha/
cd ..
ll
cd 
ll
cd sangram/
ls -l 
mkdir 10.4
cd 10.4/
ansible-galaxy init role importroledemo
ansible-galaxy role init importroledemo
git init
git add .
git comming -m "Demo"
git commit -m "Demo"
ls -l
ls -la
rm -rf .git/
cd importroledemo/
git init
git add .
git commit -m "Demo"
git remote add origin https://github.com/sangramrath/importroledemo.git
git push -u origin main
git branch -M main
git push -u origin main
git pull
git pull main
git pull main main
cd ..
git clone https://github.com/sangramrath/importroledemo.git
ls -l 
rm -rf importroledemo/
ls -l 
git clone https://github.com/sangramrath/importroledemo.git
cd importroledemo/
cd ..
ansible-galaxy role init importroledemo
ansible-galaxy role init importrole
cp -R importrole/* importroledemo/
cd importrole
cd ..
cd importroledemo/
ls -l 
ls -l ../importrole
git add .
git commit -m "Demo"
git push -u origin main
ansible-galaxy role import sangramrath https://github.com/sangramrath/importroledemo.git
ansible-galaxy role import sangramrath https://github.com/sangramrath/importroledemo.git --token 8ce3751961759ce603cbb993a35a2907fb2e29f4
ansible-galaxy role import sangramrath importroledemo --token 8ce3751961759ce603cbb993a35a2907fb2e29f4
exit
clear
ansible-galaxy role import --role-name webroles https://github.com/madhuri75jha/webrole-test.git
ansible-galaxy role import --role-name webroles madhuri75jha webrole-test
ansible-galaxy role import --role-name webroles madhuri75jha https://github.com/madhuri75jha/webrole-test.git
ansible-galaxy role import --role-name webroles madhuri75jha webrole-test
ansible-galaxy role import --role-name webroles madhuri75jha https://github.com/madhuri75jha/webrole-test.git
ansible-galaxy role import --role-name webrole-test madhuri75jha webrole-test
ansible-galaxy role import madhuri75jha webrole-test
clear
cd playbooks
cd roles
cd webroles
ansible-galaxy role import madhuri75jha webrole-test
ansible-galaxy role import --role-name webrole-test madhuri75jha webrole-test
cd playbooks
cd roles
cd webroles
ls -ltr
ls -la
cd meta
sudo vi main.yml
cd ..
git init
git commit -m "first commit"
git branch -M main
git remote add origin
git remote add origin https://github.com/madhuri75jha/webrole.git
git push -u origin main
git status
git add .
clear
cd playbooks
cd roles
cd webroles
ls -la
git status
git add .
git status
git commit -m "Initial Commit"
git remote add origin https://github.com/madhuri75jha/webrole.git
git remote add origin1 https://github.com/madhuri75jha/webrole.git
git push -u origin1
ls -ltr
ls -la
ansible-galaxy role import madhuri75jha webrole --token 8d290a2f95978c5dcbd1ac6b9d9544e5d2d3f6cb
history
clear
cd playbooks
cd relos
clear
cd roles
cd webroles
git --version
git init
git add .
rm -rf .git
clear
git init
git add .
git commit -m "Initial commit of webrole"
git branch -M main
git remote add origin2 https://github.com/madhuri75jha/webrole.git
git push -u origin2 main
ansible-galaxy role import madhuri75jha webrole --token f9196fdaec5ea300745215fc5a35e547b5ae1d83
clear
ansible-galaxy role --help
ansible-galaxy role delete --help
ansible-galaxy role delete madhuri75jha webrole --token 8d290a2f95978c5dcbd1ac6b9d9544e5d2d3f6cb
clear
clear
cd playbooks
cd roles
cd webroles
cd meta
sudo vi main.yml
cd ..
clear
cd playbooks
clear
cd roles
cd webroles
rm -rf .git
clear
cd ..
clear
cd roles
cd webroles
ls -ltr
cd tasks
vi main.yml
cd ..
cd vars
vi main.yml
cd ..
cd meta
vi main.yml
clear
cd playbooks
ls -ltr
mv serverroles ~/playbooks/roles
clear
ls -ltr
cd roles
ls -ltr
mkdir Ansible_repo
ls -ltr
vi my_demo1_script.sh
mv my_demo1_script.sh /home/ubuntu/Ansible_repo/
cd Ansible_repo/
ls -ltr
mkdir Section_4
cd ..
cd Ansible_repo/
mv my_demo1_script.sh ~/Ansible_repo/Section_4
cd Section_4/
ls -ltr
cd Playbooks
cd playbooks/
ls -ltr
sudo vi user_create.yml
ls -ltr
cd ..
cd Ansible_repo/
mkdir Section_5
cd ..
cd playbooks
mv user_create.yml ~/Ansible_repo/Section_5
sudo vi package_install.yml 
mv package_install.yml ~/Ansible_repo/Section_5
sudo vi mysql_setup.yml 
mv mysql_setup.yml ~/Ansible_repo/Section_5
ls -ltr
sudo vi first_variables_playbook.yml
ansible-playbook first_variables_playbook.yml
sudo vi first_variables_playbook.yml
ansible-playbook first_variables_playbook.yml
wq
sudo vi first_variables_playbook.yml
ansible-playbook first_variables_playbook.yml
cd ..
cd Ansible_repo/
mkdir Section_6
cd ..
cd playbooks
mv first_variables_playbook.yml ~/Ansible_repo/Section_6
sudo vi create_variables.yml
sudo vi user_create_variables.yml
mv user_create_variables.yml ~/Ansible_repo/Section_6
cd playbooks
sudo vi database_vars.yml
ls -ltr
sudo magic_example.yml
sudo magic_exampl.yml
sudo vi magic_exampl.yml
cp magic_exampl.yml ~/Ansible_repo/Section_6
ls -ltr
sudo vi myfactsmotd.yml
cp myfactsmotd.yml ~/Ansible_repo/Section_6
sudo vi nofacts.yml 
cp nofacts.yml ~/Ansible_repo/Section_6
clear
cd playbooks
ls -ltr
sudo vi test_ansible_facts.yml
cp test_ansible_facts.yml ~/Ansible_repo/Section_6
cd ..
cd Ansible_repo/
mkdir Section_7
cd ..
cd playbooks
clear
cd playbooks
ls -ltr
sudo vi ex_conditionals.yml
ansible-playbook ex_conditionals.yml
sudo vi ex_conditionals.yml
ls -ltr ex_condi*
sudo vi ex_conditionals_copy.yml
vi ex_conditionals_sangram.yml
vi ex_conditionals_copyfinal.yml
vi ex_conditionals_copy1.yml
sudo vi ex_conditionals_sangram.yml
ansible-playbook ex_conditionals.yml
cp ex_conditionals.yml ~/Ansible_repo/Section_7
ls -ltr
sudo vi nested_variables.yml
ansible-playbook nested_variables.yml
cp nested_variables.yml ~/Ansible_repo/Section_6
sudo vi ex_loops.yml
ansible-playbook ex_loops.yml
sudo vi ex_loops.yml
ansible-playbook ex_loops.yml
cp ex_loops.yml ~/Ansible_repo/Section_7
ls -ltr
sudo vi docker1.yml
ansible-playbook docker1.yml
ansible-playbook docker.yml
sudo vi docker.yml
sudo vi docker1.yml
cp docker1.yml ~/Ansible_repo/Section_7
ls -ltr
sudo vi ex_handlers_test.yml
sudo vi ex_handlers_loop_conditionals.yml
sudo vi Handlers_7_4_ex.yml
ansible-playbook Handlers_7_4_ex.yml
sudo vi Handlers_7_4_ex.yml
ansible-playbook Handlers_7_4_ex.yml
sudo vi Handlers_7_4_ex.yml
clear
cd Ansible_repo/
ls -ltr
cd Section_7
ls -ltr
cd playbooks
ls -ltr
vvvالأنابيب المتخصصة في العراق في مصنع إيليت بايب في العراق، نفتخر بتقديم مجموعة متنوعة من الأنابيب المتخصصة لتلبية الاحتياجات الصناعية والعلمية المختلفة. أنابيب الزجاج الخاصة بنا، المثالية للاستخدام في المختبرات، تم تصنيعها بدقة لضمان الوضوح والمتانة. هذه الأنابيب مثالية للتعامل مع ومراقبة التفاعلات الكيميائية في ظروف محكمة. يشتهر مصنع إيليت بايب بالجودة والموثوقية، حيث يحدد معايير إنتاج أنابيب الزجاج في العراق. لمزيد من المعلومات، قم بزيارة موقعنا:
sudo vi Handlers_7_4_ex.yml
ansible-playbook Handlers_7_4_ex.yml
sudo vi Handlers_7_4_ex.yml
ansible-playbook Handlers_7_4_ex.yml
sudo vi Handlers_7_4_ex.yml
ansible-playbook Handlers_7_4_ex.yml
cd /home/ubuntu/playbooks/files/apache2.conf
cd playbooks
sudo vi ex_han*
ls -ltr ex_hand*
sudo vi ex_handlers_loop_conditionals.yml
ansible-playbook ex_handlers_loop_conditionals.yml
cp ex_handlers_loop_conditionals.yml ~/Ansible_repo/Section_7
cd ..
cd Ansible_repo/
mkdir Section_8
cp -R /roles ~/Ansible_repo/Section_8
cd ..
cd playbooks
cp -R /roles ~/Ansible_repo/Section_8
ls -ltr
cp -r ~/playbooks/roles ~/Ansible_repo/Section_8
cd ..
cd Ansible_repo/
cd Section_8
ls -ltr
cd roles
ls -ltr
cd serverroles/
ls -ltr
cd
cd playbooks
ls -ltr
sudo vi rolesplaybook.yml 
cp rolesplaybook.yml ~/Ansible_repo/Section_8
cp includeroles_ex.yml ~/Ansible_repo/Section_8
cp importroles_ex.yml ~/Ansible_repo/Section_8
ansible-playbook includeroles_ex.yml 
ansible-playbook importroles_ex.yml 
cd roles
cd serverroles
ls -ltr
cd meta
sudo vi main.yml 
cd
cd playbooks
ansible-playbook rolesplaybook.yml
cd roles
cd webroles
ls -ltr
cd tasks
vi main.yml 
clear
ansible -l "managed-node01, managed-node02" -m ping
ansible -l "managed-node01, managed-node02" -m ping -b
ansible all --limit "managed-node01, managed-node02" -m ping -b 
ansible all -l "managed-node01, managed-node02" -m ping -b 
ansible -l "managed-node01, managed-node02" -m ping -b 
clear
cd /etc/ansible
sudo vi hosts
cd /etc/ansibe
cd /etc/ansible
sudo vi hosts
cd /etc/ansible
sudo vi hosts
exit
cd /etc/ansible
sudo vi hosts
cd /etc/ansible
sudo vi hosts
clear
cd ..
cd
clear
cd /etc/ansible
sudo vi hosts
cd
cd playbooks
ls -ltr
sudo vi ex_conditionals_sangram.yml
clear
sudo vi ex_conditionals_sangram.yml
cd
ls -ltr
git init
git init
git add .
cd Ansible_repo/
cd Section_8
ls -la
cd 
cd playbooks
cd roles
ls -la
rm -rf .git
cd 
ls -la
rm -rf .git
ls -la
git init
git add .
clear
sudo -i
clear
hostnamectl set-hostname thinknyx
set hostname thinknyx
bash
nano createfiledir.sh
clear
sudo createfiledir.sh
clear
sudo nano createfiledir.sh
clear
sudo nano createfileDir.sh
bash createfileDir.sh
hostname
sudo hostnamectl set-hostname thinknyx
bash
clear
uname
uname -a
clear
echo 'Hello Everyone'
clear
echo 'Hello Everyone'
clear
echo 'Hello Everyone'
sudo vi createDirFile.sh
rm -rf createDirfile.sh
clear
echo 'Hello everyone'
sudo vi createDirfile.sh
clear
echo 'Hello Everyone'
sudo vi createDirfile.sh
clear
echo 'Hello Everyone'
sudo vi createDirfile.sh
clear
echo 'Hello Everyone'
sudo vi createDirfile.sh
clear
echo 'Hello Everyone'
sudo nano createDirfile.sh
clear
echo 'Hello Everyone'
sudo nano createDirfile.sh
clear
echo 'Hello Everyone'
sudo nano createDirfile.sh
bash -x createDirfile.sh
man bash
clear
exit
clear
ls -l
clear
rm -rf createDirfile.sh
rm -rf newDir
rm -rf newfile.txt
clear
echo 'Hello! Bash'
echo $SHELL
sudo nano createDirfile.sh
bash -x createDirfile.sh
manclear
clear
man bash
sudo hostnamectl set-hostname controller-node01
bash
exit
clear
ls -la
cd Ansible_repo
ls -la
cd Section_8
ls
cd ..
cd playbooks
ls
cd ..
cd Ansible_repo/
cd Section_8
cd roles
ls
cd serverroles
ls -la
cd meta
ls -la
sudo vi main.yml
cd ..
sudo vi rolesplaybook.yml 
cd ..
cd playbooks
ls -la
cd ..
cd Ansible_repo/
cd Section_8
cd roles
cd serverroles/
ls -la
cd tasks
ls -la
sudo vi main.yml
cd 
cd playbooks
cd collections/
ls -la
cd ..
cd 
cd Ansible_repo/
mkdir Section_9
ls -la
cd 
cd playbooks
cp -R ./collections ~/Ansible_repo/Section_9
cd 
cd Ansible_repo/
cd Section_9
ls -la
cd collections
ls -la
cd madhuri75jha/
ls -la
cd
cd playbooks
ls -la
cp collections_demorole.yml ~/Ansible_repo/Section_9
