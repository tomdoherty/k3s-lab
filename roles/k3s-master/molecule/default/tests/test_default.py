import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']
).get_hosts('all')


def test_k3s_file(host):
    f = host.file('/etc/k3s.conf')

    assert f.exists
    assert f.user == 'root'
    assert f.group == 'root'


def test_k3s_is_installed(host):
    k3s = host.package("k3s")
    assert k3s.is_installed


def test_k3s_running_and_enabled(host):
    k3s = host.service("k3sd")
    assert k3s.is_running
    assert k3s.is_enabled
