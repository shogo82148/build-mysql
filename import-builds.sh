#!/bin/bash

set -eux

ROOT=$(cd "$(dirname "$0")" && pwd)

mkdir -p "$ROOT/tmp"

for MYSQL_VERSION in "9.4.0" "9.3.0" "9.2.0" "9.1.0" "9.0.1" "8.4.7" "8.3.0" "8.2.0" "8.1.0" "8.0.42" "5.7.44" "5.6.51"; do
  cd "$ROOT"
  rm -rf "tmp/mysql-$MYSQL_VERSION"
  mkdir -p "tmp/mysql-$MYSQL_VERSION"
  cd "tmp/mysql-$MYSQL_VERSION"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-darwin-arm64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-darwin-x64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-ubuntu-22.04-arm64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-ubuntu-22.04-x64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-ubuntu-24.04-arm64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-ubuntu-24.04-x64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mysql-$MYSQL_VERSION-win32-x64.zip"
  SUFFIX=$(date +%Y%m%d%H%M%S)
  gh release create "mysql-$MYSQL_VERSION-$SUFFIX" --title "MySQL $MYSQL_VERSION" --notes "imported from shogo82148/actions-setup-mysql v1.45.0 https://github.com/shogo82148/actions-setup-mysql/releases/tag/v1.45.0" ./*.tar.zstd ./*.zip
done

for MARIADB_VERSION in "12.0.2" "11.8.3" "11.7.2" "11.6.2" "11.5.2" "11.4.8" "11.3.2" "11.2.6" "11.1.6" "11.0.6" "10.11.14" "10.10.7" "10.9.8" "10.8.8" "10.7.8" "10.6.23" "10.5.29" "10.4.34" "10.3.39" "10.2.44"; do
  cd "$ROOT"
  rm -rf "tmp/mariadb-$MARIADB_VERSION"
  mkdir -p "tmp/mariadb-$MARIADB_VERSION"
  cd "tmp/mariadb-$MARIADB_VERSION"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-darwin-arm64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-darwin-x64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-ubuntu-22.04-arm64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-ubuntu-22.04-x64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-ubuntu-24.04-arm64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-ubuntu-24.04-x64.tar.zstd"
  curl -sSL -O "https://github.com/shogo82148/actions-setup-mysql/releases/download/v1.45.0/mariadb-$MARIADB_VERSION-win32-x64.zip"
  SUFFIX=$(date +%Y%m%d%H%M%S)
  gh release create "mariadb-$MARIADB_VERSION-$SUFFIX" --title "MariaDB $MARIADB_VERSION" --notes "imported from shogo82148/actions-setup-mysql v1.45.0 https://github.com/shogo82148/actions-setup-mysql/releases/tag/v1.45.0" ./*.tar.zstd ./*.zip
done
