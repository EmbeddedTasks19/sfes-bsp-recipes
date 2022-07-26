#!/bin/sh
#
#   @copyright  Copyright (C) 2020 by MSC Technologies GmbH
#   @author     Waldemar Glensk <waldemar.glensk@msc-technologies.eu>
#
#   GPL License
#
#   Version 2.0, June 1991
#
#   http://www.gnu.org/licenses/old-licenses/gpl-2.0
#
#   This program is free software; you can redistribute it and/or
#   modify it under the terms of the GNU General Public License
#   as published by the Free Software Foundation; version 2
#   of the License.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program; if not, write to the Free Software2015
#   Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#   MA  02110-1301, USA.

# set CAN Standby low to use Normal mode
mscio-cmd seti gpio_config CAN_STB 0   

# set CAN Termination Pin Low to have CAN termination
mscio-cmd seti gpio_config CAN_TERM_N 0