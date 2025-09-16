


# • BTP Trial sign-up: https://www.sap.com/products/technolo...
# • Cloud Foundry CLI download: https://github.com/cloudfoundry/cli
# • UUID generator: https://www.uuidgenerator.net
# • Mail https://mail.cx/zh/
# • SMS https://lubansms.com

./cf login -a https://api.cf.ap21.hana.ondemand.com

#/cf login -a https://api.cf.us10-001.hana.ondemand.com


#./cf push app_cf --docker-image uncleluo/mous:latest -m 512M --health-check-type port
./cf push app_cf --docker-image ghcr.io/uncleluogithub/mous:latest -m 512M --health-check-type port

./cf set-env app_cf UUID 7bd57098-82bd-4dfa-b32c-9943a52d354f

./cf restage app_cf


./cf logs app_cf --recent


# or https://www.youtube.com/watch?v=zuLaPkHmmQA

#cf TUNNEL: http://127.0.0.1:10086

./cf push app_cf –docker-image ghcr.io/uncleluogithub/sapcf:latest -m 512M -k 512M –health-check-type port –no-route –no-start
./cf set-env app_cf APP_UUID 7bd57098-82bd-4dfa-b32c-9943a52d354f
./cf set-env app_cf VMESS_HOST YOUR_CLOUDFLARE_TUNNEL_DOMAIN
./cf set-env app_cf TUNNEL_TOKEN ‘YOUR_TUNNEL_TOKEN_HERE’
./cf set-health-check app_cf port
./cf start app_cf
./cf logs app_cf –recent
