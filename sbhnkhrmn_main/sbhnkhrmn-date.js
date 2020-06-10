
const jsonFile = window.location.pathname.replace("index.html", "SBHNKHRMN.json");
const lastModifiedDate = new File([], jsonFile).lastModified
document.getElementById("date").innerHTML = new Date(lastModifiedDate);