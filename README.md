####
这是一个动态修改配置文件中的密码的 action


###GUIDE

* 创建 secret
* 在 action 中指定 dest 和 pairs
* pairs 是一个 key1:value1,key2:value2 这样的字符串, 按,分隔之后,依次循环遍历, 把dest 中的所有 key 替换为 value


### Example
```$xslt
name: CI
on:
  push:
    branches: [ master ]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v2
    - uses: magicnana999/update_password_action@master
      with:
        pairs: 'database_name:${{ secrets.DATABASE_TEST}},redis_name:${{ secrets.REDIS_TEST}}'
        dest: '**/application.yaml'
```


