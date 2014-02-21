find  -name "*.ini" -print0 | tar --null --no-recursion -uf 2009.tar --files-from -
