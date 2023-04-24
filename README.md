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

## Logwatch

First you need to configure matrix-sender, I recommand you to check the repo [matrix-sender](https://github.com/Oxbian/matrix-sender).

After that you need to edit `logwatch.sh` to add the `matrix.sh` absolute path.

Now you can add the script to your crontab, `sudo crontab -e`.
```bash
0 0 * * * /home/oxbian/matrix-monitoring/logwatch.sh
```

## Contributing

If you want to contribute, make a pull request with your contribution.

## License

This project is under the GPLv3 license, you can use it in your project but not in closed sources ones.  
Sharing project is what make the world live, think about it.
