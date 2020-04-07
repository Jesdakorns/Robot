*** Settings ***
Library    Selenium2Library
resource    ./keyword.robot

# Suite Setup    Open Browser     ${SERVER}     ${browser}
# Test Setup  Maximize Browser Window
Test Teardown  Close Browser
# Suite Teardown  Close All Browsers

*** Test Cases ***
เข้าสู่ระบบ Profile
   เปิดเว็บ Profile
กรอก email และ password ถูก
   เปิดเว็บ Profile
   กรอก email และ password ถูก
   คลิกปุ่มเข้าสู่ระบบ
กรอก email ถูก password ผิด
   เปิดเว็บ Profile
   กรอก email ถูก password ผิด
   คลิกปุ่มเข้าสู่ระบบ
กรอก email ผิด password ถูก
   เปิดเว็บ Profile
   กรอก email ผิด password ถูก
   คลิกปุ่มเข้าสู่ระบบ
กรอก email ไม่กรอก password
   เปิดเว็บ Profile
   กรอก email ไม่กรอก password
   คลิกปุ่มเข้าสู่ระบบ
ไม่กรอก email กรอก password
   เปิดเว็บ Profile
   กรอก email ไม่กรอก password
   คลิกปุ่มเข้าสู่ระบบ
ไม่กรอก email และ password
   เปิดเว็บ Profile
   คลิกปุ่มเข้าสู่ระบบ
