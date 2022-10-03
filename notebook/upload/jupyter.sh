port=8888
while [ 1 ]
do
    if ss -plnt | grep $port; then
        port=$(( $port + 1 ))
    else
        echo $port > tmp/port.txt
        jupyter notebook --port=$port --no-browser
        break
    fi
done
