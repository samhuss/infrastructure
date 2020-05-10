#! /bin/bash
docker run -d -p 8080:8080 \
  --name hasura-test \
  -e HASURA_GRAPHQL_DATABASE_URL=postgres://admin:M2ZkNmYzZjVkNjVlMDY5NGVjNjczZWM2@19d9a7e4-e316-40c0-a995-6669a47ca4cc.bpb68u2f0gvaqgd0n64g.databases.appdomain.cloud:31518/raseedyDB?sslmode=verify-full \
  -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
  -e HASURA_GRAPHQL_ADMIN_SECRET=nY2TBtObuB2b^]xX \
  -e PGSSLROOTCERT=/certs/postgres-ca.pem \
  -v $(pwd)/certs:/certs/ \
  hasura/graphql-engine:latest