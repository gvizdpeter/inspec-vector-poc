docker build -t inspec-vector:latest .

docker run --env-file ${PWD}/.env -p 9598:9598 -v ${PWD}/tests:/tmp/tests -v ${PWD}/vector.yml:/etc/vector/vector.yml inspec-vector:latest -c /etc/vector/vector.yml
