; Defvar can be used to define static variables.
; The tutorial has us use defparameter for these globals, because we're going to be changing them
(defparameter *small* 1)
(defparameter *big* 100)
(defun guess-my-number ()
  (ash (+ *small* *big*) -1))
(defun smaller ()
  (setf *big* (1- (guess-my-number)))
  (guess-my-number))
(defun bigger ()
  (setf *small* (1+ (guess-my-number)))
  (guess-my-number))
(defun start-over ()
  (defparameter *small* 1)
  (defparameter *big* 100)
  (guess-my-number))
; Let can be used to define local variables, and flet can be used to define local functions. This would be useful for private functions, I suppose
; Label can be used if you want to let a private function call itself in the body of the function
; This is useful for private recursive functions
; The 1- and 1+ functions (Yes those are functions) do the same as (- x 1) and ((+ x 1)
