(cl:in-package #:common-lisp-user)

(defpackage #:subsequence
  (:use #:common-lisp)
  (:shadow #:sequence)
  (:export #:cost-descriptor))
