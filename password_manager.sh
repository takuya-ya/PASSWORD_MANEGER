#!/bin/bash

echo 'パスワードマネージャーへようこそ!'
echo 'サービス名を入力してください:'
read service
echo 'ユーザー名を入力してください:'
read user
echo 'パスワードを入力してください:'
read password

echo "サービス名：$service" >> passwords.sh
echo "ユーザー名：$user" >> passwords.sh
echo "パスワード：$password" >> passwords.sh

echo -e "Tahnk You\e[31m!\e[0m"
