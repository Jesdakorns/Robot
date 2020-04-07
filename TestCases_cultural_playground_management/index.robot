*** Settings ***
Library             Selenium2Library
resource            ./keyword.robot
# resource            ./login.robot
# resource            ./add_dataset.robot
# resource            ./create_game.robot
# resource            ./delect_dataset.robot


# Suite Setup       Open Browser               ${SERVER}    ${browser}
# Test Setup        Maximize Browser Window
Test Teardown       Close Browser
# Suite Teardown    Close All Browsers

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

เพิ่มชุดข้อมูลสำเร็จ
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูเพิ่มชุดข้อมูล
    เลือกเกม
    เพิ่มชุดข้อมูล 8 ข้อมูล
    คลิกปุ่มบันทึก

เพิ่มชุดข้อมูลไม่สำเร็จกรณีเลือกข้อมูลไม่ครบ 8 ข้อมูล
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูเพิ่มชุดข้อมูล
    เลือกเกม
    เพิ่มชุดข้อมูลน้อยกว่า 8 ข้อมูล
    คลิกปุ่มบันทึก

เพิ่มชุดข้อมูลไม่สำเร็จกรณีเลือกข้อมูลมากกว่า 8 ข้อมูล
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูเพิ่มชุดข้อมูล
    เลือกเกม
    เพิ่มชุดข้อมูลมากกว่า 8 ข้อมูล
    คลิกปุ่มบันทึก

เพิ่มชุดข้อมูลไม่สำเร็จกรณีไม่ได้เลือกเกม
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูเพิ่มชุดข้อมูล
    ไม่เลือกเกม
    เพิ่มชุดข้อมูล 8 ข้อมูล
    คลิกปุ่มบันทึก


สร้างเกมสำเร็จ
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูสร้างเกม
    ค้นหาชุดข้อมูลอขงเกม
    เลือกชุดข้อมูล

ลบชุดข้อมูลสำเร็จ
    เปิดเว็บ Profile
    กรอก email และ password ถูก
    คลิกปุ่มเข้าสู่ระบบ
    คลิกเมนูลบชุดข้อมูล
    ค้นหาชุดข้อมูลอขงเกม
    เลือกชุดข้อมูล

