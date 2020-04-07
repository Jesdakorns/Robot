*** Settings ***
Library           Selenium2Library
resource          ./keyword.robot

# Suite Setup       Open Browser               ${SERVER}    ${ฺBROWSER}
# Test Setup        Maximize Browser Window
Test Teardown     Close Browser
Suite Teardown    Close All Browsers

*** Test Cases ***
สร้างเกมสำเร็จ
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูสร้างเกม
    ค้นหาชุดข้อมูลอขงเกม
    เลือกชุดข้อมูล

