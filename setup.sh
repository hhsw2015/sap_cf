


# • BTP Trial sign-up: https://www.sap.com/products/technolo...
# • Cloud Foundry CLI download: https://github.com/cloudfoundry/cli
# • UUID generator: https://www.uuidgenerator.net

./cf login -a https://api.cf.ap21.hana.ondemand.com

#/cf login -a https://api.cf.us10-001.hana.ondemand.com


./cf push app_cf --docker-image uncleluo/mous:latest -m 512M --health-check-type port

./cf set-env app_cf UUID 7bd57098-82bd-4dfa-b32c-9943a52d354f

./cf restage app_cf


./cf logs app_cf --recent

