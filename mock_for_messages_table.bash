echo "use nsadmin">>testing.txt;

for i in {1..5}; do for j in "SMS" "EMAIL" "WECHAT" "ANDROID" "IOS" "LINE"; do for k in {1..5}; do for l in "HIGH" "BULK"; do for m in {0..5}; do for n in {1..5}; do echo "insert into messages_2019_09 (client_id, receiver, sender, message_class, sent_time, received_time, scheduled_time, status, priority, ndnc, sending_org_id, gsm_sender_id, cdma_sender_id, gateway, campaign_id, tags)  values ($i, \"receiver\", \"sender\", \"$j\", \"2019-09-01 01:01:01\", \"2019-09-01 01:01:01\", \"2019-09-01 01:01:01\", $k, \"$l\", 0, $m, \"gsm sender\", \"cdma sender\", \"gateway\", $n, \"tags\");">>testing.txt; done;done;done;done;done;done

mysql < testing.txt -u capillary -p
