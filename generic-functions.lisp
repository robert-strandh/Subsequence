(cl:in-package #:subsequence)

;;; Given a sequence and an element of that sequence, find the next
;;; element in the sequence.  Client code must supply two methods on
;;; this generic function.  The first method must specialize to the
;;; class NULL for the ELEMENT argument, and it must return the first
;;; element of the sequence.  The second method must specialize to the
;;; specific class of the sequence element, and it must return the
;;; element following the one given.  When given the last element of
;;; the sequence, this function must return NIL.
(defgeneric next-element (sequence element))

;;; Given a sequence and an element of that sequence, find the
;;; previous element in the sequence.  Client code must supply two
;;; methods on this generic function.  The first method must
;;; specialize to the class NULL for the ELEMENT argument, and it must
;;; return the last element of the sequence.  The second method must
;;; specialize to the specific class of the sequence element, and it
;;; must return the element preceding the one given.  When given the
;;; first element of the sequence, this function must return NIL.
(defgeneric previous-element (sequence element))
