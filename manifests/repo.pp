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

  apt::source { 'passenger':
    location    => 'https://oss-binaries.phusionpassenger.com/apt/passenger/4',
    release     => $lsbdistcodename,
    repos       => 'main',
    key         =>  {
    'id'     => '561F9B9CAC40B2F7',
    'server' => 'hkp://keyserver.ubuntu.com:80',
    },
  }
}
