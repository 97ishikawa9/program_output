if (location.pathname.match("programs/new")){
  document.addEventListener("DOMContentLoaded", () => {
    const inputElement = document.getElementById("programs_tag_relation_name");
    inputElement.addEventListener("keyup", () => {
      const keyword = document.getElementById("programs_tag_relation_name").value;
      const XHR = new XMLHttpRequest();
    })
  });
};