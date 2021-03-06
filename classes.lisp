(cl:in-package #:subsequence)

;;; The base class of sequences.  Client code must mix this class into
;;; any sequence that should be treated.
(defclass sequence () ())

;;; The base class of all objects that can be elements of a sequence.
;;; Client code must mix this class into any class of elements to be
;;; contained in a sequence.
(defclass element () ())

;;; The base class for all cost descriptors.  A cost descriptor
;;; contains everything that is required to compute individual costs,
;;; sequence costs, and total costs. Client code must mix this class
;;; into any cost descriptor that it defines.  All subclasses of this
;;; class should be immutable.  To change the cost descriptor, client
;;; code will have to create a new one and use (SETF COST-DESCRIPTOR)
;;; to modify the cost descriptor of the sequence.
(defclass cost-descriptor () ())
