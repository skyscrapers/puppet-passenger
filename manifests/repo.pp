##### LICENSE

# Copyright (c) Skyscrapers (iLibris bvba) 2014 - http://skyscrape.rs
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# == Class passenger::repo
#
# This class is called from passenger
#
class passenger::repo {
  if !defined(Class['apt']) {
    class { 'apt': }
  }

  if ($::lsbdistrelease == '12.04') {
    apt::source { 'precise-passenger':
      location    => 'http://skypackages.s3-website-eu-west-1.amazonaws.com/ubuntu/',
      release     => 'precise-passenger',
      repos       => 'main',
      key         => '1BC1B9EF',
      key_source  => 'http://skypackages.s3-website-eu-west-1.amazonaws.com/gpg.key',
      include_src => false,
    }
  } elsif ($::lsbdistrelease == '14.04') {
    apt::source { 'trusty-passenger':
      location    => 'http://skypackages.s3-website-eu-west-1.amazonaws.com/ubuntu/',
      release     => 'trusty-passenger',
      repos       => 'main',
      key         => '1BC1B9EF',
      key_source  => 'http://skypackages.s3-website-eu-west-1.amazonaws.com/gpg.key',
      include_src => false,
    }
  }
}
