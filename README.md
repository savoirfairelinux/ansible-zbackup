# zbackup

Provisions a local backup storage folder powered by [zBackup][zbackup].

Other than automatically creating the zbackup repo, it also manages timestamps for dumps. So,
each repo is accompanied by easy to use `dump` and `getlatest` scripts.

We don't manage the propagation of these backups to other servers. Other roles have to take care
of that.

## Requirements

* Ansible 2.0+
* Debian Jessie deployment target

## Usage

Here's an example usage:

    zbackup_storage_path: /opt/myproject/backups
    zbackup_owner: myproject_user

Once the system is provisioned, dump your tar directly in your backup's `dump` command with:

    cat mybackup.tar | '/opt/myproject/backups/dump'

Important note: it *needs* to be a tar-NOT-gzipped file. Don't feed it something else.

Then, you can get back your latest dump with:

    '/opt/myproject/backups/getlatest' > mybackup.tar

Or, you can get a gzipped version of the dump with:

    '/opt/myproject/backups/getlatest -z' > mybackup.tar.gz

[zbackup]: http://zbackup.org/

