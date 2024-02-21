default: test

# run tests on any file change
test:
    find lib/ spec/ | entr -s 'rake spec'

# check types on any file change
check:
    find lib/ sig/ | entr -s 'rake check'
