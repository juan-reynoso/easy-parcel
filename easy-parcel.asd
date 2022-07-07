;;;; easy-parcel.asd

(asdf:defsystem #:easy-parcel
  :description "Describe easy-parcel here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:hunchentoot)
  :components ((:file "package")
               (:file "easy-parcel")))
