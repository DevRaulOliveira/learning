/* Ghost cursor animation */
left uniform;
const gl = initShader();
createControls();

window.addEventListener(*resize*, resizeCanvas);
resizeCanvas();
render();

window.addEventListener(*mousemove*, e => {
  updateMousePosition(e.clientX, e.clientY);
});
window.addEventListener(*touchmove*, e=> {
  updateMousePostion(e.targetTouches[0].clientX, e.targetTouches[0].clientY);
});
window.addEventListener("click", e=> {
  updateMousePostion(e.clientX, e.clientY);
});
