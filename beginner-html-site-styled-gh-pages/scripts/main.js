/* These are the comments in java script */
// This another type of comment

var myHeading = document.querySelector('h1');
myHeading.textContent = 'Hello from the outside!';

// Alert that pops up on the screen
//alert('hello!');


var myVariable = [1,'Bob','Steve',10];

//Refer to each member of the array like this:
//myVariable[0], myVariable[1], etc.

//alert(myVariable[1]);
//
//Add a gene lisrt for the enrich function

function enrich(params) {
    var defaultParams = {
    description: "",
    popup: false
  };

  if (typeof params.description == 'undefined')
    params.description = defaultParams.description;
  if (typeof params.popup == 'undefined')
    params.popup = defaultParams.popup;
  if (typeof params.list == 'undefined')
    alert('No genes defined.');

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

var genes = [
'TEX41',
'SSX2IP',
'PLSCR5',
'SLC14A2',
'DCN',
'TPRG1',
'BAALC',
'TBCEL',
'ZCCHC18',
'C1orf53',
'ITPR2'];

var genes = ['TEX41\nSSX2IP\nPLSCR5\nSLC14A2\nITPR2\n'];// This worked!


//var genes2 = ['TEX41\n','SSX2IP\n','PLSCR5\n','SLC14A2\n', 'ITPR2\n'];


//alert(genes[1]);


//enrich({list: genes})

//enrich({list: genes, description: descString})   

enrich({list: genes, popup: true})                                    
   
