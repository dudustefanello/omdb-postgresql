pkill postgresql
sleep 3s
sudo systemctl start postgresql
sleep 2s
sudo -u postgres psql -q < ./consulta2.sql > "sem_indices_a/$(date +"%I_%M_%S").log"
sleep 1s