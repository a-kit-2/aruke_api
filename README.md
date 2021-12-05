# ARUKE API

# ローカル環境での実行方法

1. クローンする。
2. ローカル環境に mysql の準備をする。
3. database.yml.sample を複製して名前を database.yml にし、password を自分の mysql のパスワードを設定する。
4. docker-compose build
5. docker-compose run web rails db:create
6. docker-compose run web rails db:migrate
7. docker-compose run web rails db:seed
8. docker-compose up
