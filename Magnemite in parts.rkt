;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Magnemite in parts|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;Living Magnemite

;First Magnemite:

;(above
;
;(overlay (rectangle 70 20 "outline" "black")(rectangle 70 20 "solid" "grey"));top of top screw
;
;
;(beside
; (overlay                ;magnet left
; (above (beside(overlay(square 40 "outline" "black")(square 40 "solid" "red"))(rectangle 40 1 "solid" "grey"))
;         (circle 20 "solid" "white")
;         (beside(overlay(square 40 "outline" "black")(square 40 "solid" "blue"))(rectangle 40 1 "solid" "grey")))
; (beside (rectangle 60 100 "solid" "white")(rectangle 60 1 "solid" "grey" ))
; (circle 60 "outline" "black")(circle 60 "solid" "grey"))
; 
;
;(overlay (circle 95 "outline" "black") ;main body
;                (above
;                 (overlay (circle 40 "outline" "black")(circle 10 "solid" "black") (circle 40 "solid" "white"))
;                      (beside (overlay(circle 20 "outline" "black")(rectangle 8 24 "solid" "dark grey")(rectangle 24 8 "solid" "dark grey")(circle 20 "solid" "grey"))
;                              (rectangle 50 60 "solid" "light blue")
;                              (overlay(circle 20 "outline" "black")(rectangle 8 24 "solid" "dark grey")(rectangle 24 8 "solid" "dark grey") (circle 20 "solid" "grey"))
;               )) (circle 95 "solid" "light blue") (above (overlay(rectangle 40 130 "outline" "black")(rectangle 40 130 "solid""grey"))(rectangle 10 130 "solid" "white")  ))
;
;
; (overlay                   ;magnet right
; (above (beside(rectangle 40 1 "solid" "grey")(overlay(square 40 "outline" "black")(square 40 "solid" "red")))
;         (circle 20 "solid" "white")
;         (beside(rectangle 40 1 "solid" "grey")(overlay(square 40 "outline" "black")(square 40 "solid" "blue"))))
; (beside(rectangle 60 1 "solid" "grey" ) (rectangle 60 100 "solid" "white"))
; (circle 60 "outline" "black")(circle 60 "solid" "grey"))
; ))


;Sectioned Magnemite

(define TOP-SCREW-TOP (overlay ;top of top screw
                       (rectangle 70 20 "outline" "black")
                       (rectangle 70 20 "solid" "grey")))

(define LEFT-MAG
 (overlay                ;magnet left
 (above (beside(overlay(square 40 "outline" "black")(square 40 "solid" "red"))(rectangle 40 1 "solid" "grey"))
         (circle 20 "solid" "white")
         (beside(overlay(square 40 "outline" "black")(square 40 "solid" "blue"))(rectangle 40 1 "solid" "grey")))
 (beside (rectangle 60 100 "solid" "white")(rectangle 60 1 "solid" "grey" ))
 (circle 60 "outline" "black")(circle 60 "solid" "grey")))
 

(define RIGHT-MAG
 (overlay                   ;magnet right
 (above (beside(rectangle 40 1 "solid" "grey")(overlay(square 40 "outline" "black")(square 40 "solid" "red")))
         (circle 20 "solid" "white")
         (beside(rectangle 40 1 "solid" "grey")(overlay(square 40 "outline" "black")(square 40 "solid" "blue"))))
 (beside(rectangle 60 1 "solid" "grey" ) (rectangle 60 100 "solid" "white"))
 (circle 60 "outline" "black")(circle 60 "solid" "grey")))


;;main body
;(overlay
;   (circle 95 "outline" "black") ;body outline
;           (above
;                 (overlay      ;eye
;                        (circle 40 "outline" "black") 
;                        (circle 10 "solid" "black")
;                        (circle 40 "solid" "white"))
;                 (beside       ;screw section
;                     (overlay  ;left screw
;                           (circle 20 "outline" "black")
;                           (rectangle 8 24 "solid" "dark grey")
;                           (rectangle 24 8 "solid" "dark grey")
;                           (circle 20 "solid" "grey"))
;                     (rectangle 50 60 "solid" "light blue") ;seperation
;                      (overlay ;right screw
;                         (circle 20 "outline" "black")
;                         (rectangle 8 24 "solid" "dark grey")
;                         (rectangle 24 8 "solid" "dark grey")
;                         (circle 20 "solid" "grey"))))
;    (circle 95 "solid" "light blue") ;body fill
;    (above                       ;back of top screw
;         (overlay
;             (rectangle 40 130 "outline" "black")
;             (rectangle 40 130 "solid""grey"))
;         (rectangle 10 130 "solid" "white")))

;main body

(define BD-OTLN (circle 95 "outline" "black")) ;body outline

                 (define EYE
                   (overlay
                        (circle 40 "outline" "black") 
                        (circle 10 "solid" "black")
                        (circle 40 "solid" "white")))
                
                     (define LEFT-SCREW  ;left screw
                       (overlay
                           (circle 20 "outline" "black")
                           (rectangle 8 24 "solid" "dark grey")
                           (rectangle 24 8 "solid" "dark grey")
                           (circle 20 "solid" "grey")))
                     
                     (define SCREW-SEP
                       (rectangle 50 60 "solid" "light blue")) ;seperation
                     
                     (define RIGHT-SCREW      ;right screw
                       (overlay
                         (circle 20 "outline" "black")
                         (rectangle 8 24 "solid" "dark grey")
                         (rectangle 24 8 "solid" "dark grey")
                         (circle 20 "solid" "grey")))
                      
(define BD-FILL (circle 95 "solid" "light blue"))

(define TOP-SCREW-STEM
    (above                       ;back of top screw
         (overlay
             (rectangle 40 130 "outline" "black")
             (rectangle 40 130 "solid""grey"))
         (rectangle 10 130 "solid" "white")))

; body parts above
(define BODY
  (overlay
     BD-OTLN
     (above
        EYE
        (beside
         LEFT-SCREW SCREW-SEP RIGHT-SCREW))
     BD-FILL))

;Full image

(define IMG
  (above
     TOP-SCREW-TOP
     (overlay
        (beside LEFT-MAG BODY RIGHT-MAG)
        TOP-SCREW-STEM)))

IMG



