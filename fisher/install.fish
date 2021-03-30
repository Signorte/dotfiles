

echo Install z history management tool
fisher install jethrokuan/z 

echo Install plugin-peco on fish
fisher install oh-my-fish/plugin-peco

echo Install plugin-ghq on fish
fisher install decors/fish-ghq
echo 'set GHQ_SELECTOR peco' >> $HOME/.config/fish/config.fish
echo '' >> $HOME/.config/fish/config.fish
echo "function fish_user_key_bindings" >> $HOME/.config/fish/config.fish
echo "  bind \cr 'peco_select_history (commandline -b)'" >> $HOME/.config/fish/config.fish
echo "  bind \c] peco_select_ghq_repository" >> $HOME/.config/fish/config.fish
echo "end" >> $HOME/.config/fish/config.fish

# exit

