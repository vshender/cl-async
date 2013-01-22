(defpackage :cl-async-future
  (:use :cl :cl-async-base :cl-async-util)
  (:nicknames :asf)
  (:export #:future
           #:make-future
           #:attach-errback
           #:signal-error
           #:futurep
           #:finish
           #:attach
           #:alet
           #:alet*
           #:multiple-future-bind
           #:wait-for
           #:future-handler-case))

(defpackage :cl-async
  (:use :cl :cl-async-base :cl-async-util :trivial-gray-streams)
  (:nicknames :as)
  (:export #:+af-inet+
           #:+af-inet6+
           #:+af-unspec+
           #:+af-unix+

           ;; common conditions/accessors
           #:event-info
           #:event-error
           #:event-errcode
           #:event-errmsg
           ;; common functions
           #:check-event-loop-running
           #:stats
           #:dump-event-loop-status
           #:add-event-loop-exit-callback
           #:start-event-loop
           #:exit-event-loop

           ;; timer functions
           #:delay

           ;; fd functions
           #:fd-add

           ;; signal numbers
           #:+sighup+
           #:+sigint+
           #:+sigquit+
           #:+sigill+
           #:+sigtrap+
           #:+sigabrt+
           #:+sigemt+
           #:+sigfpe+
           #:+sigkill+
           #:+sigbus+
           #:+sigsegv+
           #:+sigsys+
           #:+sigpipe+
           #:+sigalrm+
           #:+sigterm+
           #:+sigurg+
           #:+sigstop+
           #:+sigtstp+
           #:+sigcont+
           #:+sigchld+
           #:+sigttin+
           #:+sigttou+
           #:+sigio+
           #:+sigxcpu+
           #:+sigxfsz+
           #:+sigvtalrm+
           #:+sigprof+
           #:+sigwinch+
           #:+siginfo+
           #:+sigusr1+
           #:+sigusr2+
           ;; signal handling functions
           #:signal-handler
           #:free-signal-handler
           #:clear-signal-handler

           ;; dns conditions
           #:dns-error
           ;; dns functions
           #:start-dns-logging
           #:stop-dns-logging
           #:dns-lookup

           ;; tcp conditions/accessors
           #:tcp-info
           #:tcp-socket
           #:tcp-error
           #:tcp-eof
           #:tcp-timeout
           #:tcp-refused
           #:tcp-accept-error
           #:tcp-accept-error-listener
           #:tcp-accept-error-tcp-server
           #:socket-closed
           #:tcp-server-bind-error
           ;; socket class/accessors
           #:socket
           #:socket-c
           #:socket-data
           ;; tcp functions
           #:socket-closed-p
           #:close-socket
           #:close-tcp-server
           #:write-socket-data
           #:set-socket-timeouts
           #:enable-socket
           #:disable-socket
           #:init-tcp-socket
           #:connect-tcp-socket
           #:tcp-connect
           #:tcp-send
           #:tcp-server

           ;; tcp stream
           #:async-stream
           #:stream-socket
           #:async-input-stream
           #:async-output-stream
           #:async-io-stream

           ;; http conditions/accessors
           #:http-info
           #:http-error
           #:http-timeout
           #:http-refused
           ;;http functions
           #:http-client
           #:http-response
           #:http-server
           #:close-http-server
           ;; http classes/accessors
           #:http-request
           #:http-request-c
           #:http-request-method
           #:http-request-uri
           #:http-request-resource
           #:http-request-querystring
           #:http-request-headers
           #:http-request-body))
