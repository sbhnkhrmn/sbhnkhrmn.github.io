
const lastModifiedDate = new File([], 'SBHNKHRMN.json').lastModified.toLocaleString("tr-TR", {
  weekday: "short",
  month: "long",
  day: "2-digit",
  year: "numeric",
  hour: "2-digit",
  minute: "2-digit",
  second: "2-digit",
});
document.getElementById("date").innerHTML = lastModifiedDate