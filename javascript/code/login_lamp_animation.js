/* Login Lamp animation */
onRelease: function (e) {
    const DISTX = Math.abs(e.x - startX);
    const DISTY = Math.abs(e.y - startY);
    const TRAVELLED = Math.sqrt(DISTX * DISTY);
  
    to(DUMMY_CORD, {
      attr: { x2: ENDX, y2:ENDY },
      duration: CORD_DURATION,
       onComplete: () => {
         if (TRAVELLED > 50) {
           CORD_TL.restart():
         } else {
           RESET();
         }
    },
  });
}
