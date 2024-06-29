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

GetPassword()
{
    echo -n 'サービス名を入力してください:'
    read service
    grep -A 2 "$service" passwords.sh
    if [ $? -eq 1 ]; then
        echo 'そのサービス名は登録されていません'
    fi
    echo
}

choices=''
echo 'パスワードマネージャーへようこそ!'
while [ "$choices" != 'Exit' ]
do
    echo '次の選択肢から入力してください(Add Password/Get Password/Exit):'
    read choices
if [ "$choices" == 'Add Password' ];then
    AddPassword
elif [ "$choices" == 'Get Password' ];then
    GetPassword
elif [ "$choices" == 'Exit' ];then
    break
else
    echo '入力が間違えています。Add Password/Get Password/Exit から入力してください。'
    echo
fi
done

echo -e "Tahnk You\e[31m!\e[0m"
