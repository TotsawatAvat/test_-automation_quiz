*** Settings ***
Library    String
Library    JSONLibrary
Library    Collections
Library    RequestsLibrary
Library    SeleniumLibrary    run_on_failure=None

# python
Library    ${CURDIR}/library/simple_cipher.py
# common
Resource   ${CURDIR}/../keyword/common/api/api_common.robot
Resource   ${CURDIR}/../keyword/common/gui/gui_common.robot
Resource   ${CURDIR}/../keyword/common/basic/basic_common.robot
# feature
Resource   ${CURDIR}/../keyword/feature/gui/gui_login__feature.robot
# function
Resource   ${CURDIR}/../keyword/function/api/api_profile__function.robot
Resource   ${CURDIR}/../keyword/function/gui/gui_main__function.robot
Resource   ${CURDIR}/../keyword/function/gui/gui_login__function.robot
# resource
Variables  ${CURDIR}/data/api/api_data.yaml
Variables  ${CURDIR}/data/gui/gui_data.yaml
Variables  ${CURDIR}/data/basic/basic_data.yaml