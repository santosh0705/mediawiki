### How to build Docker container image
`docker image build -t <Tag Name> --build-arg MW_VERSION_MAJOR=<Mediawiki MAJOR.MINOR Version> --build-arg MW_VERSION_MINOR=<Mediawiki PATCH Version>

### How to use chart
`helm install mediawiki --set wiki.adminpw=<Wiki Admin User Password> --set db.rootpw=<Mysql Root Password> --set db.dbuserpw=<User DB Password> mediawiki`
