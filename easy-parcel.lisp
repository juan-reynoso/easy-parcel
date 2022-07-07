;;;; easy-parcel.lisp
;;;; This file has the basic functions of the web-server
;;;; Author: Juan Reynoso Elias
;;;; Created at: 2022/06/07
;;;; Last update: 2022/06/07
(in-package #:easy-parcel)

(defparameter *server* nil
  "Starts the ACCEPTOR so that it begins accepting
connections.")

(defvar *wwwroot*  (concatenate 'string
				(namestring (asdf:component-pathname (asdf:find-system :easy-parcel)))
				"wwwroot")
  "The pathname /home/my-user/src/lisp/easy-parcel/wwwroot")

(defun start-web-server (&key (port 9002))
  "Start the web server."
  (setf *server* (start (make-instance 'easy-acceptor :port port))))

(defun stop-web-server ()
  "Stop the web server."
  (stop *server*))

(defun restart-web-server ()
  "Restart the web server."
  (stop-web-server)
  (start-web-server))
