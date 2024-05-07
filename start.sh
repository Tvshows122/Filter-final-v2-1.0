if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Tvshows122/Filter-final-v2.git /mybot1
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mybot1
fi
cd /mybot1
pip3 install -U -r requirements.txt
echo "Starting TheMovieProviderBot...."
python3 bot.py
