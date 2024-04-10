import fs from "fs";
import Handlebars from "handlebars";
import project from "./../dist/docs.json" assert { type: "json" };

// The HTML template to use for our simple docs
const tmpl = `
<!DOCTYPE HTML>
<html>
  <head>
    <title>My Project Documentation</title>
  </head>
  <body>
    <h1>Modules</h1>
    <ul>
    {{#each project.children}}
      <li>{{this.name}}</li>
    {{/each}}
    </ul>
  </body>
</html>
`;

// Compile the template with handlebars using our project
// object as context key
const result = Handlebars.compile(tmpl)({ project });

fs.writeFileSync("dist/docs.html", result);
