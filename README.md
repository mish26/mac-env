# mac-env
macを新規購入した際に、便利なツールを自動でsetupできるようにしています。

# 登録されている設定
- ShiftIt
- Finderの上部に絶対Pathを表示

# 実行方法
```
mkdir mac-env
cd mac-env
git clone https://github.com/mish26/mac-env.git
vim system.environment.plist
  # ${USER_NAME} をwhoamiした結果に置き換えてください。
sh -x env.sh
```
