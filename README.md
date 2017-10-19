# facter_flush_reproducer
Reproducer for Facter.flush bug

Run against Facter 3.6.6 and note that tests 3 and 4, which depend on `Facter.flush` working, fail.

Add `gem 'facter'` to the `Gemfile` and note that tests 3 and 4 now succeed under Facter 2.5.1.
