//function enrich(params) {
shinyjs.enrich = function(params) {
    var defaultParams = {
    description: "",
    popup: false
  };


    
  if (typeof params.description == 'undefined')
    params.description = defaultParams.description;
  if (typeof params.popup == 'undefined')
    params.popup = defaultParams.popup;
  if (typeof params.list == 'undefined')
    alert('No genes defined.')

  var form = document.createElement('form');
  form.setAttribute('method', 'post');
  form.setAttribute('action', 'http://amp.pharm.mssm.edu/Enrichr/enrich');
  if (params.popup)
    form.setAttribute('target', '_blank');
  form.setAttribute('enctype', 'multipart/form-data');

  var listField = document.createElement('input');
  listField.setAttribute('type', 'hidden');
  listField.setAttribute('name', 'list');
  listField.setAttribute('value', params.list);
  form.appendChild(listField);

  var descField = document.createElement('input');
  descField.setAttribute('type', 'hidden');
  descField.setAttribute('name', 'description');
  descField.setAttribute('value', params.description);
  form.appendChild(descField);

  document.body.appendChild(form);
  form.submit();
  document.body.removeChild(form);
}