task:init() {
    task:install
    npm init
}

task:install() {
    set -e
     # install test suit
    bake dev mocha istanbul should
    # install build suit
    bake dev babel-core babel-cli babel-preset-env
    # install lint suit
    bake dev eslint eslint-plugin-import eslint-config-airbnb-base lint-staged pre-commit
}

# Install node package
task:i() {
    npm i $@
}

# Install dev dependency
task:dev() {
    npm i --save-dev $@
}

task:test() {
    npm run test
}

task:cov() {
    npm run cov
}
