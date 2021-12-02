# ARUKE API

# ローカル環境での実行方法

1. クローンする。
2. ローカル環境に mysql の準備をする。
3. docker-compose build
4. docker-compose run web rails db:create
5. docker-compose run web rails db:seed
6. docker-compose up
