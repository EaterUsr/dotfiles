cd /home/alban/dotfiles

if git status | grep "changes"
  git add --all
  git commit -m "[BOT] update config"
end

if git status | grep "ahead"
  git push origin main
end
