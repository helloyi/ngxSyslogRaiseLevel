use lib 'lib';
use Test::Nginx::Socket;

plan tests => blocks();
run_tests();

__DATA__

=== TEST 1: Compatible syslog:user ===
--- config
    location /test {
        access_log syslog:user;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 2: Compatible syslog:user:info ===
--- config
    location /test {
        access_log syslog:user:info;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 3: Compatible syslog:user:info:127.0.0.1 ===
--- config
    location /test {
        access_log syslog:user:info:127.0.0.1;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 4: Compatible syslog:user:info:127.0.0.1:514 ===
--- config
    location /test {
        access_log syslog:user:info:127.0.0.1:514;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 5: Compatible syslog:user:info:127.0.0.1:514:tengine-format-test5 ===
--- config
    location /test {
        access_log syslog:user:info:127.0.0.1:514:tengine-format-test5;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 6: Compatible syslog:user:info:/dev/log ===
--- config
    location /test {
        access_log syslog:user:info:/dev/log;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 7: Compatible syslog:user:info:/dev/log ===
--- config
    location /test {
        access_log syslog:user:info:/dev/log;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 8: Compatible syslog:user:info:/dev/log:tengine-format-test8 ===
--- config
    location /test {
        access_log syslog:user:info:/dev/log:tengine-format-test9;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 9: Compatible syslog:user:::tengine-format-tes9t ===
--- config
    location /test {
        access_log syslog:user:::tengine-format-test9;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 10: Compatible syslog:user:info::tengine-format-test10 ===
--- config
    location /test {
        access_log syslog:user:info::tengine-format-test10;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 11: Compatible syslog:user::/dev/log ===
--- config
    location /test {
        access_log syslog:user::/dev/log;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200


=== TEST 12: new support syslog:user:info:warn:err ===
--- config
    location /test {
        access_log syslog:user:info:warn:err;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 13: new support syslog:user:info:warn:err:127.0.0.1 ===
--- config
    location /test {
        access_log syslog:user:info:warn:err:127.0.0.1;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 14: new support syslog:user:info:warn:err:127.0.0.1:514 ===
--- config
    location /test {
        access_log syslog:user:info:warn:err:127.0.0.1:514;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 15: new support syslog:user:info:warn:err:/dev/log ===
--- config
    location /test {
        access_log syslog:user:info:warn:err:/dev/log;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 16: new support syslog:user:info:warn:err:/dev/log:tengine-format-test16 ===
--- config
    location /test {
        access_log syslog:user:info:warn:err:127.0.0.1:tengine-format-test16;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 17: new support syslog:user:info:::127.0.0.1 ===
--- config
    location /test {
        access_log syslog:user:info:::127.0.0.1;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 18: new support syslog:user:::::tengine-format-test18 ===
--- config
    location /test {
        access_log syslog:user:::::tengine-format-test18 ;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 19: new support syslog:user::warn:::tengine-format-test19 ===
--- config
    location /test {
        access_log syslog:user::warn:::tengine-format-test19 ;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 20: new support syslog:user:::err::tengine-format-test20 ===
--- config
    location /test {
        access_log syslog:user:::err::tengine-format-test20 ;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200 

=== TEST 21: new support syslog:user:::tengine-format-test20 ===
--- config
    location /test {
        access_log syslog:user:::tengine-format-test21 ;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200 

=== TEST 22: new support syslog:user:::::tengine-format-test22 ===
--- config
    location /test {
        access_log syslog:user:::::tengine-format-test22 ;
        empty_gif;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200 
