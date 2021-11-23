FROM quay.io/operator-framework/ansible-operator:v1.15.0

ENV VERSION_ANSIBLE=4.8.0
USER root
RUN pip3 uninstall -y ansible
RUN pip3 install ansible==${VERSION_ANSIBLE} && \
    pip3 install "ansible-runner>=2.0.2" ansible-runner-http kubernetes openshift netaddr dnspython
USER ${USER_UID}

COPY requirements.yml ${HOME}/requirements.yml
RUN ansible-galaxy collection install -r ${HOME}/requirements.yml && \
    chmod -R ug+rwx ${HOME}/.ansible

COPY watches.yaml ${HOME}/watches.yaml
COPY roles/ ${HOME}/roles/
COPY playbooks/ ${HOME}/playbooks/
