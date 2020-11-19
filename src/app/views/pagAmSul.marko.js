// Compiled using marko@4.23.9 - DO NOT EDIT
"use strict";

var marko_template = module.exports = require("marko/src/html").t(__filename),
    marko_componentType = "/avemturismo$1.0.0/src/app/views/pagAmSul.marko",
    marko_renderer = require("marko/src/runtime/components/renderer"),
    marko_loadTag = require("marko/src/runtime/helpers/load-tag"),
    init_components_tag = marko_loadTag(require("marko/src/core-tags/components/init-components-tag")),
    await_reorderer_tag = marko_loadTag(require("marko/src/core-tags/core/await/reorderer-renderer")),
    _preferred_script_location_tag = marko_loadTag(require("marko/src/core-tags/components/preferred-script-location-tag"));

function render(input, out, __component, component, state) {
  var data = input;

  out.w("<!DOCTYPE html><html lang=br><head><title>Avemturismo</title><link rel=stylesheet type=text/css href=/estatico//css/estilo.css><link rel=\"shortcut icon\" href=/estatico/res/mapamundi_logo.png type=image/x-icon></head><body><div class=wrapper><nav><ul class=menu><li><a href=/estatico/pagInicial.marko>Home</a></li></ul></nav><img src=/estatico/res/amsul.png style=\"width: 90%; height: 90%;\"><img src=/estatico/res/pin.png class=rpin id=pin-br style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-arg style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-chi style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-peru style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-equa style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-gui style=\"width: 2%;\"><img src=/estatico/res/pin.png class=rpin id=pin-colom style=\"width: 2%;\"></div>");

  init_components_tag({}, out);

  await_reorderer_tag({}, out, __component, "19");

  _preferred_script_location_tag({}, out);

  out.w("</body></html>");
}

marko_template._ = marko_renderer(render, {
    ___implicit: true,
    ___type: marko_componentType
  });

marko_template.meta = {
    id: "/avemturismo$1.0.0/src/app/views/pagAmSul.marko",
    tags: [
      "marko/src/core-tags/components/init-components-tag",
      "marko/src/core-tags/core/await/reorderer-renderer",
      "marko/src/core-tags/components/preferred-script-location-tag"
    ]
  };
