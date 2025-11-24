#get file curls
curl "http://127.0.0.1:5010/files" # not working might just get the available IDs out in a list
curl "http://127.0.0.1:5010/files/0" -o downloaded_file.png
curl "http://127.0.0.1:5010/files/1b860ade-6f14-4d3a-8cfe-55ac285fb6cf" -o downloaded_file.png

# put curls
curl "http://127.0.0.1:5010/files" -T test_image.png -H "Content-Type: application/octet-stream"

# delete curls
curl -X DELETE "http://127.0.0.1:5010/files" -H "Content-Type: application/json" -d '{"id": "1b860ade-6f14-4d3a-8cfe-55ac285fb6cf"}'
