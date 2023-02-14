pkill postgresql
sleep 3s
sudo systemctl start postgresql
sleep 2s
sudo -u postgres psql -q < ./consulta1.sql > "./com_indice/$(date +"%I_%M_%S").log"
sleep 1s