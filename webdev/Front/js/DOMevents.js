//  1. Este código agrega un manejador de eventos al evento 'mousemove' del documento, que actualiza el contenido del elemento con ID 'mousePosition' con la posición actual del mouse en la página.

document.addEventListener('mousemove', function(event) {
    // seleccionamos el elemento en donde se mostrará la posición del mouse
    document.getElementById('mousePosition').innerHTML = 'Posición del mouse: Posición X: ' + event.pageX + ' Posición Y: ' + event.pageY
  });

// 2.Este código agrega un manejador de eventos al botón con ID 'form1-submit' que evita que se envíe el formulario y actualiza el contenido del elemento con ID 'fullName' con el valor de los campos de nombre y apellido del formulario.

// seleccionamos el botón y agregamos un manejador de eventos
const btn = document.getElementById('form1-submit');
btn.addEventListener('click', function(event) {
    event.preventDefault();

    let firstName = document.getElementById('form-fname').value;
    let lastName = document.getElementById('form-lname').value;
    // seleccionamos el elemento en donde se mostrará el nombre completo
    document.getElementById('fullName').innerHTML = `Full Name: ${firstName} ${lastName}`;
})

// 3. Este código agrega manejadores de eventos a los botones con ID 'btn-insert-r' y 'btn-insert-c', que insertan una nueva fila y una nueva columna, respectivamente, en la tabla con ID 'sampleTable'.

// obtener la tabla y los botones
const table = document.getElementById("sampleTable");
const btnInsertRow = document.getElementById("btn-insert-r");
const btnInsertCol = document.getElementById("btn-insert-c");

// agregar manejadores de eventos para los botones
btnInsertRow.addEventListener("click", function() {
    // agregar una nueva fila al final de la tabla
    let newRow = table.insertRow(-1);

    // agregamos la cantidad de celdas según la cantidad de columnas que tenga la tabla
    for (let i = 0; i < table.rows[0].cells.length; i++) {
        newRow.insertCell(i).innerHTML = "New Cell";
    }

});



btnInsertCol.addEventListener("click", function() {
    // para cada fila en la tabla, agregar una nueva celda al final
    for (let i = 0; i < table.rows.length; i++) {
        table.rows[i].insertCell(-1).innerHTML = "new column";
    }
});

// 4. Este código agrega un manejador de eventos al botón con ID 'btn-change' que cambia el valor de una celda específica en la tabla con ID 'myTable' según los valores de fila, columna y nuevo valor especificados en los campos correspondientes del formulario.

// seleccionamos el botón y agregamos un manejador de eventos
const btnChange = document.getElementById('btn-change');
// seleccionamos la tabla
const table2 = document.getElementById('myTable')

btnChange.addEventListener('click', function() {
    const rowIndex = document.getElementById('rowIndex').value;
    const colIndex = document.getElementById('colIndex').value;
    const newValue = document.getElementById('newValue').value;
    
    //añadimos el nuevo valor a la celda especificada
    table2.rows[rowIndex].cells[colIndex].textContent = newValue;
})


// 5. Este código agrega manejadores de eventos al botón 'addColorButton' y 'removeColorButton' que agregan y eliminan opciones en el elemento 'colorSelect', respectivamente. También agrega un manejador de eventos al elemento 'imagenGato' que cambia la fuente de la imagen a una imagen aleatoria de gatos cuando el mouse se coloca sobre la imagen.

// seleccionamos los elementos y agregamos manejadores de eventos
const colorSelect = document.getElementById("colorSelect");
  const addColorButton = document.getElementById("btn-add-color");
  const removeColorButton = document.getElementById("btn-rmv-color");


  addColorButton.addEventListener("click", function () {
    // solicitamos el nuevo color y lo agregamos a la lista
    const newColor = prompt("Enter a new color:");
    const option = document.createElement("option");
    // definimos el texto de la opción
    option.text = newColor;
    // añadimos el nuevo color a la lista
    colorSelect.add(option);
  });

  removeColorButton.addEventListener("click", function () {
    // seleccionamos el color seleccionado y lo eliminamos de la lista
    const selectedOption = colorSelect.options[colorSelect.selectedIndex];
    colorSelect.remove(selectedOption);
  });

  
  // 6. Esta función genera una imagen aleatoria de gatos con diferente ancho y altura cuando el mouse pasa encima de la imagen y la muestra en el elemento 'imagenGato'.

  // seleccionamos el elemento y agregamos un manejador de eventos
  const imagenGato = document.getElementById("imagenGato");

  imagenGato.addEventListener("mouseenter", function() {
    // generamos un ancho y altura aleatorios
    const width = Math.floor(Math.random() * (600 - 300 + 1)) + 300;
    const height = Math.floor(Math.random() * (600 - 300 + 1)) + 300;
    // generamos la nueva fuente de la imagen
    const newSrc = `http://placekitten.com/${width}/${height}`;
    // actualizamos la fuente de la imagen
    imagenGato.src = newSrc;
  });

  