
(defun %umemo-slime-get-full-symbol-name--test (filename)
  (with-current-buffer (find-file-noselect filename)
    (prog1
        (umemo-slime-get-full-symbol-name (current-buffer))
      (kill-buffer (current-buffer)))))

;; *.describe.1.txt (describe 'temp::internal-function)
;; *.describe.2.txt (describe 'temp::external-function)
;; *.describe.3.txt (describe 'temp:external-function)
;; (view-fline "sbcl.describe.1.txt")
;; (view-fline "sbcl.describe.2.txt")
;; (view-fline "sbcl.describe.3.txt")
;; (view-fline "sbcl.describe.4.txt")
;; (view-fline "cmucl.describe.1.txt")
;; (view-fline "cmucl.describe.2.txt")
;; (view-fline "cmucl.describe.3.txt")
;; (view-fline "cmucl.describe.4.txt")
;; (view-fline "clisp.describe.1.txt")
;; (view-fline "clisp.describe.2.txt")
;; (view-fline "clisp.describe.3.txt")
;; (view-fline "clisp.describe.4.txt")
(%umemo-slime-get-full-symbol-name--test "sbcl.describe.1.txt") ; => "TEMP::INTERNAL-FUNCTION"
(%umemo-slime-get-full-symbol-name--test "sbcl.describe.2.txt") ; => "TEMP:EXTERNAL-FUNCTION"
(%umemo-slime-get-full-symbol-name--test "sbcl.describe.3.txt") ; => "TEMP:EXTERNAL-FUNCTION"
(%umemo-slime-get-full-symbol-name--test "sbcl.describe.4.txt") ; => "COMMON-LISP:CAR"
(%umemo-slime-get-full-symbol-name--test "clisp.describe.1.txt") ; => "TEMP::INTERNAL-FUNCTION,"
(%umemo-slime-get-full-symbol-name--test "clisp.describe.2.txt") ; => "TEMP:EXTERNAL-FUNCTION,"
(%umemo-slime-get-full-symbol-name--test "clisp.describe.3.txt") ; => "TEMP:EXTERNAL-FUNCTION,"
(%umemo-slime-get-full-symbol-name--test "clisp.describe.4.txt") ; => "COMMON-LISP:CAR"
(%umemo-slime-get-full-symbol-name--test "cmucl.describe.1.txt") ; => "TEMP::INTERNAL-FUNCTION"
(%umemo-slime-get-full-symbol-name--test "cmucl.describe.2.txt") ; => "TEMP:EXTERNAL-FUNCTION"
(%umemo-slime-get-full-symbol-name--test "cmucl.describe.3.txt") ; => "TEMP:EXTERNAL-FUNCTION"
(%umemo-slime-get-full-symbol-name--test "cmucl.describe.4.txt") ; => "COMMON-LISP:CAR"
