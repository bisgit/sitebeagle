#!/usr/bin/newlisp

; test tag test_a

(load "sitebeagle.lsp")
(load "twitter.lsp");

;
; start of tests and variable definitions
;
; 
;

(println "----[ testing Sitebeagle distributed computing version ]----")
(println "----[  in sitebeagle directory type: newlisp -c -d 4711]----")

(set 'myprog [text]
(load "sitebeagle.lsp")
(new Sitebeagle 'snoopy)
(set 'snoopy:url "http://www.codebelay.com/")
(snoopy:getmd5)
[/text])

; test
(println (net-eval '(("localhost" 4711 myprog true)) 1000 ))

(println "----[ testing Sitebeagle in script ]----")
(new Sitebeagle 'katie)
(set 'katie:url "https://thebe.jtan.com/~barce/links")
(println katie:url)
(println (katie:getmd5))
(katie:pollurl)

(println "sending tweet...")
(new Twitter 'tweet)

;
; this is the account you use to send tweets
;
(set 'tweet:user "noobwatcher")
(set 'tweet:pass "PASS")

;
; this is the account you use to receive tweets
;
(set 'tweet:recipient "barce")

(tweet:dm (string "something changed: " katie:url))
(println "something changed: " katie:url)

(exit)
