pagelen="8"
i="0"
while [ $pagelen -eq 8 ]; do
  echo "python NFCReader_2.py --read $i | tail -n1"
  NFC_page=$(python NFCReader_2.py --read $i | tail -n1)
  echo $NFC_page
  pagelen=${#NFC_page}
  if [ $pagelen -eq 8 ]; then
    ./light blink
  fi
  i=$((i+1))
done
