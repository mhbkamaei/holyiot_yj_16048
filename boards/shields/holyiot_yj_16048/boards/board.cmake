# SPDX-License-Identifier: MIT

board_runner_args(jlink "--device=nRF52832_xxAA" "--speed=4000")
board_runner_args(pyocd "--target=nrf52832" "--frequency=4000000")
board_runner_args(nrfjprog "--nrf-family=NRF52")

set(OPENOCD_NRF5_SUBFAMILY "nrf52")

include(${ZEPHYR_BASE}/boards/common/nrfjprog.board.cmake)
include(${ZEPHYR_BASE}/boards/common/nrfutil.board.cmake)
include(${ZEPHYR_BASE}/boards/common/jlink.board.cmake)
include(${ZEPHYR_BASE}/boards/common/pyocd.board.cmake)
include(${ZEPHYR_BASE}/boards/common/openocd-nrf5.board.cmake)

#west flash --runner openocd --cmd-pre-load "reset halt; nrf5 mass_erase"