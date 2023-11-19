cd /home/alban/dotfiles
if git status | grep "changes"; or git status | grep "ahead"
  git add --all
  git commit -m "[BOT] update config"
  git push origin main
end
