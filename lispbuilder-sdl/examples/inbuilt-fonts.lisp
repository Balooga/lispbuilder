
(in-package #:sdl-examples) 

(defvar *current-y* 0)
(defvar *prev-font-height* 0)

(defun display-font (font-def name)
  (let ((font (sdl:initialise-font font-def)))
    (sdl:draw-string-solid (format nil "Hello World!!!! : font - ~A" name)
			   (sdl:point :x 10
				      :y (incf *current-y* (+ 2 *prev-font-height*)))
			   :color sdl:*white*
			   :font font)
    (setf *prev-font-height* (sdl:char-height font))))

(defun inbuilt-fonts ()
  (sdl:with-init ()
    (sdl:window 640 480)
    (setf (sdl:frame-rate) 2)
    (setf *current-y* 0)
    (setf *prev-font-height* 0)

    (display-font sdl:*font-5x7* '*font-5x7*)
    (display-font sdl:*font-5x8* '*font-5x8*)
    (display-font sdl:*font-6x9* '*font-6x9*)
    (display-font sdl:*font-6x10* '*font-6x10*)
    (display-font sdl:*font-6x12* '*font-6x12*)
    (display-font sdl:*font-6x13* '*font-6x13*)
    (display-font sdl:*font-6x13B* '*font-6x13B*)
    (display-font sdl:*font-6x13O* '*font-6x13O*)
    (display-font sdl:*font-7x13* '*font-7x13*)
    (display-font sdl:*font-7x13B* '*font-7x13B*)
    (display-font sdl:*font-7x13O* '*font-7x13O*)
    (display-font sdl:*font-7x14* '*font-7x14*)
    (display-font sdl:*font-7x14B* '*font-7x14B*)
    (display-font sdl:*font-8x8* '*font-8x8*)
    (display-font sdl:*font-8x13* '*font-8x13*)
    (display-font sdl:*font-8x13B* '*font-8x13B*)
    (display-font sdl:*font-8x13O* '*font-8x13O*)
    (display-font sdl:*font-9x15* '*font-9x15*)
    (display-font sdl:*font-9x15B* '*font-9x15B*)
    (display-font sdl:*font-9x18* '*font-9x18*)
    (display-font sdl:*font-9x18B* '*font-9x18B*)
    (display-font sdl:*font-10x20* '*font-10x20*)
      
    (sdl:with-events ()
      (:quit-event () t)
      (:video-expose-event () (sdl:update-display)))))

