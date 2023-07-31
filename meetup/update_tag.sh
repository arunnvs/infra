#!/bin/bash

sed -i "s/registry\.hub\.docker\.com\/sarunn\/meetup-prod-php\:.*/registry\.hub\.docker\.com\/sarunn\/meetup-prod-php\:$1/g" app.yaml
sed -i "s/registry\.hub\.docker\.com\/sarunn\/meetup-prod-nginx\:.*/registry\.hub\.docker\.com\/sarunn\/meetup-prod-nginx\:$1/g" nginx.yaml
grep "image:" app.yaml  nginx.yaml
