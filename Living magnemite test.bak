;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Living magnemite test|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)
;Living Magnemite

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
                       (rectangle 50 60 0 "light blue")) ;seperation                     
                     
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

(define magnemite
  (above
     TOP-SCREW-TOP
     (overlay
        (beside LEFT-MAG BODY RIGHT-MAG)
        TOP-SCREW-STEM)))


;; living magnemite  

;; =================
;; Constants:
;; Screen size
;; most body parts
(define SCREW-SPEED 10)
;the speed each screw moves in degrees per tick
(define DN-SCALE 0.80)
(define UP-SCALE (/ 1 DN-SCALE ))   ;the number each magnet scales by downwards
(define MAG-HEIGHT (image-height LEFT-MAG));the number each magnet scales by upwards
(define CYCLE 24) ;the number of ticks for a full magnet cycle
;; =================
;; Data definitions:
;;make a live magnemite at second 'live'

(define WIDTH 800)
(define HEIGHT 600)
(define MTS  (empty-scene WIDTH HEIGHT)) ; (rectangle WIDTH HEIGHT "solid" "blue"))
(define CTR-Y (/ HEIGHT 2)) ;; !!! good practice
(define CTR-X (/ WIDTH 2)) ;; !!! good practice



;; =================
;; Functions:
;the face screws turn,
;the magnets scale continuously down until zero
;when zero the magnest scale negativley



;; 0 -> live
;; start the world with ...

;; 
(define (main live)
  (big-bang live                   ; WS
            (on-tick   update-rot)     ; live -> rot  (screw and meg)
            (to-draw   update-img)    ; live -> Image
))

;; live -> new rot value
;; produce the next value used to deturmine the rotation of screws and magnets
(define (update-rot live)
  (+ 1 live))


;; live -> Image
;(define (update-img live)       ;update the image of each part by live*SPEED
;  (place-image magnemite CTR-X CTR-Y MTS))
;
(define (update-img live)       
  (place-image (rotate live (magnemite-live live)) CTR-X CTR-Y MTS))

;(define (update-img live)       
;  (place-image (magnemite-live live) CTR-X CTR-Y MTS))

(define (body-live live)
  (overlay
     BD-OTLN
     (above
        EYE
        (beside
          (rotate (*  live SCREW-SPEED -1) LEFT-SCREW)
          SCREW-SEP
          (rotate (* live SCREW-SPEED )RIGHT-SCREW)))
     BD-FILL))


(define (magnemite-live live)
  (above
     TOP-SCREW-TOP
     (overlay
        (beside
         (LMAG-live live)     ;-> Lmag-live
         (body-live live)
         (rotate 180 (LMAG-live (+ live (/ CYCLE 2)))))   ;-> Rmag-live
        TOP-SCREW-STEM)))


;Magnet function
;live->image
;Produces an altered image of the magnet
;given the percentage it has turned by (Num)

; variable of any cycle number becomes between 1 and 240
(define (MC live)   ;<-MAG cucle updates
  (+ 1 (- live (* (floor(/ live CYCLE)) CYCLE))))

;(define (LMAG-live live)               ;Template
;  (cond[Q A]                 ;true towards false
;       [Q A]                 ;false towards false peak
;       [Q A]                 ;false towards true
;       [Q A])                ;true towards true peak

(define LSMUSH
  (scale/xy 1
            (expt DN-SCALE  (* CYCLE 0.25))
            LEFT-MAG))
(define RSMUSH
  (scale/xy 1
            (expt DN-SCALE  (* CYCLE 0.25))
            RIGHT-MAG))


(define (LMAG-live live)
  (cond[(and
         (<= 1 (MC live))
         (<= (MC live) (* CYCLE 0.25)))
        (scale/xy 1
                  (expt DN-SCALE (MC live))
                  LEFT-MAG)]    ;true towards false
       [(and
         (<  (* CYCLE 0.25) (MC live))
         (<= (MC live) (* CYCLE 0.5)))
        (scale/xy 1
                  (expt UP-SCALE (- (MC live) (* CYCLE 0.25)))
                  (rotate 180 RSMUSH))]       ;false towards false peak
       [(and
         (< (* CYCLE 0.5) (MC live))
         (<= (MC live) (* CYCLE 0.75)))
        (scale/xy 1
                  (expt DN-SCALE (- (MC live) (* CYCLE 0.5)))
                  (rotate 180 RIGHT-MAG))]                 ;false towards true
       [(and
         (<  (* CYCLE 0.75) (MC live))
         (<= (MC live) CYCLE))
        (scale/xy 1
                  (expt UP-SCALE (- (MC live) (* CYCLE 0.75)))
                  LSMUSH)]))                ;true towards true peak

  

(main 0)
;I know why he jitters. I like his jitters
;2/8/2021
