CRONTAB_CADENCE="*/5 * * * *" # ie. Every 5th minute
SCRIPT_FILENAME=arc-delete-tab-archive.sh
CRONTAB_ENTRY="$CRONTAB_CADENCE $(pwd)/$SCRIPT_FILENAME"

if !(crontab -l | grep -q "$SCRIPT_FILENAME")
then
  # Append job
  (crontab -l 2>/dev/null; echo "$CRONTAB_ENTRY") | crontab
  echo "Job created:"
else
  echo "Job is already installed. Run 'crontab -e' to edit."
fi

crontab -l | grep $SCRIPT_FILENAME
