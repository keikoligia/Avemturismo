// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/login.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/css/estilo.css><link rel=\"shortcut icon\" href=res/mapamundi_logo.png type=image/x-icon></head><body><audio controls id=player><source src=/res/misica.mp3 type=audio/mpeg> Seu browser não suporta este player.</audio><nav><ul class=menu><li><a href=#>Home</a></li><li><a href=pagSobre.html>Sobre</a></li><li><a href=#>Qual era deseja ir?</a><ul><li><a href=pagModernidade.html>Modernidade</a></li><li><a href=pagAntiguidade.html>Antiguidade</a></li></ul></li><li><a href=#>Contato</a></li></ul></nav><img src=res/mapamundi.png style=width:100%>");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "24");

  _preferred_script_location_tag({}, out);

  out.w("</body></html>");
}

marko_template._ = marko_renderer(render, {
    ___implicit: true,
    ___type: marko_componentType
  });

marko_template.meta = {
    id: "/avemturismo$1.0.0/src/app/views/login.marko",
    tags: [
      "marko/src/core-tags/components/init-components-tag",
      "marko/src/core-tags/core/await/reorderer-renderer",
      "marko/src/core-tags/components/preferred-script-location-tag"
    ]
  };
