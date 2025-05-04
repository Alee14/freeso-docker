# FreeSO Docker
Running a FreeSO server on a Docker compose stack.

Note: This will **not** be support for FreeSO itself, report any problems on the official repo.

# Requirements
- Linux x64 server or WSL (not tested)
- Basic understanding on Linux

# How to run
1. First create directories (auth, game, nfs, vars).
2. Copy config.sample.json to config.json.
3. Create an .env file with the following content:
```
DB_USERNAME=fsoserver
DB_PASSWORD=[password]
DB_NAME=fso
```
4. Download or compile the FreeSO server. If downloaded, extract the content to the server subdirectory. If compiled, rename the output directory as FreeSOServer.
5. Put it in a subdirectory as FreeSOServer. (ex. server/FreeSOServer)
6. Create a docker image for the FreeSO server by doing `docker build . -t freeso` on the server subdirectory.
7. Download and extract TSO files on the `game` folder.
8. Change the server for the database ip to `db` as it will connect to the mariadb container.
9. Follow the [guide](https://github.com/riperiperi/FreeSO/blob/master/Documentation/Initial%20Setup.md) from the FreeSO repo.
10. Run the server as `docker compose up -d`.
