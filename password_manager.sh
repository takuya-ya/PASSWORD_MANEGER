#!/bin/bash

AddPassword()
{
    echo -n 'サービス名を入力してください:'
    read service
    echo -n 'ユーザー名を入力してください:'
    read user
    echo -n 'パスワードを入力してください:'
    read -s password
    echo
    echo 'パスワードの追加は成功しました'
    echo

    echo "サービス名：$service" >> passwords.sh
    echo "ユーザー名：$user" >> passwords.sh
    echo "パスワード：$password" >> passwords.sh
}

choices=''
while [ "$choices" != 'Exit' ]
do
    echo 'パスワードマネージャーへようこそ!'
    echo '次の選択肢から入力してください(Add Password/Get Password/Exit):'
    read choices
if [ "$choices" == 'Add Password' ];then
    AddPassword
else
    break
fi
done
echo -e "Tahnk You\e[31m!\e[0m"
