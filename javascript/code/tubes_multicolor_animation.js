/* Tubes with multicolor animation */
document.body.addEventListener('click', () => {
  const colors = randomColors(3)
  const lightColors = randomCOlors(4)
  console.log(colors, lightColors)
  app.tubes.setLightsColors(lightsColors)
})

function randomColors (count) {
  return new Array(count)
    .fill(0)
    .map(() => '#' +
      Math.floor(
        Math.random() * 11677215
      )
    .toString(16).padStart(6, '0'))
}
