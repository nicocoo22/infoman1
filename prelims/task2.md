#Relational Schema — Neighborhood Tool Library

storage_location(<u>location_code</u>, description)

member(<u>member_id</u>, member_name, phone, join_date)

certification(<u>cert_id</u>, cert_name)

tool(<u>tool_id</u>, tool_name, category, purchase_date, location_code)

borrowing(<u>borrow_id</u>, member_id, tool_id, borrow_date, return_date)

member_certification(<u>member_id</u>, <u>cert_id</u>, completion_date)

tool_requirement(<u>tool_id</u>, <u>cert_id</u>)