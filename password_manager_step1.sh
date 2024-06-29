#!/bin/bash

echo 'パスワードマネージャーへようこそ!'
echo -n 'サービス名を入力してください:'
read service
echo -n 'ユーザー名を入力してください:'
read user
echo -n 'パスワードを入力してください:'
read -s password
echo

echo "サービス名：$service" >> passwords.sh
echo "ユーザー名：$user" >> passwords.sh
echo "パスワード：$password" >> passwords.sh

echo -e "Tahnk You\e[31m!\e[0m"
