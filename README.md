# matrix-monitoring
------

Some scripts to monitor your server and send data to matrix. Those scripts use a [matrix-sender](https://github.com/Oxbian/matrix-sender), another script I made to send message to matrix.

## Install

To install this project & load submodules, use:

```bash
git clone --recurse-submodules https://github.com/Oxbian/matrix-monitoring.git
```

Or you can use:
```bash
git clone https://github.com/Oxbian/matrix-monitoring.git
git submodule update --init --recursive
```

## Update

To get the latest update from this repo, you will need to run those commands in the matrix-monitoring folder:  

```bash
git stash
git pull origin main
git pull --recurse-submodules
git stash pop
```

Thanks to those commands you will be able to get the last update without losing your token & configurations.  

## Logwatch

First you need to configure matrix-sender, I recommand you to check the repo [matrix-sender](https://github.com/Oxbian/matrix-sender).  

After that you need to edit `logwatch.sh` to add the `matrix.sh` absolute path.  

Now you can add the script to your crontab, `sudo crontab -e`.  
```bash
0 0 * * * /home/oxbian/matrix-monitoring/logwatch.sh
```

## SSH Login

The script `login-notify.sh` will allow you to get a message when someone successfully open a SSH connection on your server.  

First, you will need to have matrix-sender configured, then add the path of matrix.sh in the `login-notify.sh` script.  

After that I recommand to create a symlink of this file in `/etc/ssh` and let the access to root only for security reason.

```bash
sudo ln -sf "$(pwd)/login-notify.sh" /etc/ssh/login-notify.sh 
sudo chown root:root /etc/ssh/login-notify.sh
```

After that you will need to add those lines in your pam configuration `/etc/pam.d/sshd`:

```bash
#Send a message on SSH connection
session optional pam_exec.so seteuid /etc/ssh/login-notify.sh
```

## Contributing

If you want to contribute, make a pull request with your contribution.  

## License

This project is under the GPLv3 license, you can use it in your project but not in closed sources ones.  
Sharing project is what make the world live, think about it.
