if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/godxneon/Kuttbot.git /Kuttbot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Kuttbot
fi
cd /Kuttbot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
