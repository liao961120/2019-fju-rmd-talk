remark.macros['scale'] = function(w) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + w + '" />';
};

remark.macros['class'] = function(cl) {
  var url = this;
  return '<img src="' + url + '" class="' + cl + '" />';
};

remark.macros['gen'] = function(w, cl="") {
  var url = this;
  return '<img src="' + url + '" style="width: ' + w + '" class="' + cl + '" />';
};

remark.macros['abs'] = function(width="30%", left="85%", top="15%", cl="") {
  var url = this;
  return '<img src="' + url + '" style="position:absolute;left:' + left + ';top:' + top + ';width:' + width + '" class="' + cl + '" />';
};