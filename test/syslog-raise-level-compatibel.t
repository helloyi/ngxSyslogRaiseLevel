use lib 'lib';
use Test::Nginx::Socket;
plan tests => blocks() * repeat_each(1);
run_tests();

__DATA__


=== TEST 0: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 100;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 100

=== TEST 1: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 101;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 101

=== TEST 2: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 200;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 200

=== TEST 3: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 201;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 201

=== TEST 4: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 202;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 202

=== TEST 5: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 204;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 204

=== TEST 6: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 206;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 206

=== TEST 7: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 300;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 300

=== TEST 8: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 301;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 301

=== TEST 9: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 302;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 302

=== TEST 10: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 303;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 303

=== TEST 11: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 304;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 304

=== TEST 12: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 307;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 307

=== TEST 13: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 400;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 400

=== TEST 14: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 401;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 401

=== TEST 15: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 402;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 402

=== TEST 16: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 403;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 403

=== TEST 17: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 404;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 404

=== TEST 18: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 405;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 405

=== TEST 19: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 406;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 406

=== TEST 20: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 409;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 409

=== TEST 21: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 410;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 410

=== TEST 22: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 411;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 411

=== TEST 23: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 412;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 412

=== TEST 24: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 413;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 413

=== TEST 25: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 415;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 415

=== TEST 26: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 416;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 416

=== TEST 27: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 417;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 417

=== TEST 28: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 500;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 500

=== TEST 29: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 501;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 501

=== TEST 30: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 502;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 502

=== TEST 31: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 503;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 503

=== TEST 32: syslog:user:err:127.0.0.1  ===
--- config
    location /test {
        access_log syslog:user:err:127.0.0.1; 
        return 504;
    }

--- request
    GET /test HTTP/1.1

--- error_code: 504
