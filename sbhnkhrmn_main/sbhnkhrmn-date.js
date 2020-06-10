
const jsonFile = window.location.pathname.replace("index.html", "SBHNKHRMN.json");
const lastModifiedDate = new File([], jsonFile).lastModified
document.getElementById("date").innerHTML = new Date(lastModifiedDate);

const fileInput = document.querySelector('body');
fileInput.addEventListener('load', (event) => {
  // files is a FileList object (similar to NodeList) 
  const files = event.target.files;
  debugger;

  for (let file of files) {
    const date = new Date(file.lastModified);
    console.log(`${file.name} has a last modified date of ${date}`);
  }
});