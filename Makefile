
install:
	./dotfiles.sh

#submodules update
update:
	./submodules_update.sh


# git push --recurse-submodules=check 配下のサブモジュールがプッシュされていないとメッセージを表示しプッシュが中断されるようになる。
# git submodule foreach 配下の全てのサブモジュールに対して、指定したコマンドを実行する
# git submodule update サブモジュールを、登録されているコミットIDで更新する
# git submodule update --remote サブモジュールを、サブモジュールのリモート追跡ブランチ (remote-tracking branch)で更新する
# git submodule update --remote --rebase サブモジュールの現在のブランチを、リモート追跡ブランチにリベースする
# git submodule update --remote --merge サブモジュールの現在のブランチとリモート追跡ブランチをマージする

