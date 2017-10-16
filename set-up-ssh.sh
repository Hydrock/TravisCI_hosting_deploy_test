#!/usr/bin/env bash
openssl aes-256-cbc -K $encrypted_20bbbffa0feb_key -iv $encrypted_20bbbffa0feb_iv -in ./deploy_rsa.enc -out ${TRAVIS_BUILD_DIR}/deploy_rsa -d
chmod 600 ${TRAVIS_BUILD_DIR}/deploy_key
mv ${TRAVIS_BUILD_DIR}/deploy_rsa ~/.ssh/id_rsa
cat ${TRAVIS_BUILD_DIR}/deploy_rsa >> ~/.ssh/config