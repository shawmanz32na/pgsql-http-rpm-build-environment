# pgsql-http-build-environment

A Docker container for building https://github.com/juliogonzalez/pgsql-http-rpm

## To build pgsql-http-rpm

- Build the Docker image

    `docker build -t pgsql-http-rpm-build-environment .`

- Build pgsql-http-rpm by running the Docker container

    `docker run -it --rm -v /path/to/pgsql-http-rpm:/tmp/pgsql-http-rpm pgsql-http-rpm-build-environment /bin/bash -c "cd /tmp/pgsql-http-rpm; ./pgsql-http-rpm -p 9.6"`

- Retrieve the built RPM from /path/to/pgsql-http-rpm/SRPMS/
