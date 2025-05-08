<!DOCTYPE html>
<html>
  <head>
    <title>Employee Availability Form</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <style>
      html, body {
      min-height: 100%;
      }
      body, div, form, input, select, textarea, label { 
      padding: 0;
      margin: 0;
      outline: none;
      font-family: Roboto, Arial, sans-serif;
      font-size: 14px;
      color: #666;
      line-height: 22px;
      }
      h1 {
      position: absolute;
      margin: 0;
      line-height: 40px;
      font-size: 40px;
      color: #fff;
      z-index: 2;
      line-height: 83px;
      }
      .testbox {
      display: flex;
      justify-content: center;
      align-items: center;
      height: inherit;
      padding: 20px;
      }
      form {
      width: 100%;
      padding: 20px;
      border-radius: 6px;
      background: #fff;
      box-shadow: 0 0 8px  #cc7a00; 
      }
      .banner {
      position: relative;
      height: 300px;
      background-image: url("/uploads/media/default/0001/02/095995dadd0a1a9d5d83e6a467edf9ef7f35c114.jpeg");  
      background-size: cover;
      display: flex;
      justify-content: center;
      align-items: center;
      text-align: center;
      }
      .banner::after {
      content: "";
      background-color: rgba(0, 0, 0, 0.2); 
      position: absolute;
      width: 100%;
      height: 100%;
      }
      input, select, textarea {
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 3px;
      }
      input {
      width: calc(100% - 10px);
      padding: 5px;
      }
      input[type="date"] {
      padding: 4px 5px;
      }
      textarea {
      width: calc(100% - 12px);
      padding: 5px;
      }
      .item:hover p, .item:hover i, .question:hover p, .question label:hover, input:hover::placeholder {
      color: #cc7a00;
      }
      .item input:hover, .item select:hover, .item textarea:hover {
      border: 1px solid transparent;
      box-shadow: 0 0 3px 0 #cc7a00;
      color: #cc7a00;
      }
      .item {
      position: relative;
      margin: 10px 0;
      }
      .item span {
      color: red;
      }
      input[type="date"]::-webkit-inner-spin-button {
      display: none;
      }
      .item i, input[type="date"]::-webkit-calendar-picker-indicator {
      position: absolute;
      font-size: 20px;
      color: #cc7a00;
      }
      .item i {
      right: 1%;
      top: 30px;
      z-index: 1;
      }
      [type="date"]::-webkit-calendar-picker-indicator {
      right: 1%;
      z-index: 2;
      opacity: 0;
      cursor: pointer;
      }
      input[type=radio], input[type=checkbox]  {
      display: none;
      }
      label.radio {
      position: relative;
      display: inline-block;
      margin: 5px 20px 15px 0;
      cursor: pointer;
      }
      .question span {
      margin-left: 30px;
      }
      .question-answer label {
      display: block;
      }
      label.radio:before {
      content: "";
      position: absolute;
      left: 0;
      width: 17px;
      height: 17px;
      border-radius: 50%;
      border: 2px solid #ccc;
      }
      input[type=radio]:checked + label:before, label.radio:hover:before {
      border: 2px solid #cc7a00;
      }
      label.radio:after {
      content: "";
      position: absolute;
      top: 6px;
      left: 5px;
      width: 8px;
      height: 4px;
      border: 3px solid #cc7a00;
      border-top: none;
      border-right: none;
      transform: rotate(-45deg);
      opacity: 0;
      }
      input[type=radio]:checked + label:after {
      opacity: 1;
      }
      .btn-block {
      margin-top: 10px;
      text-align: center;
      }
      button {
      width: 150px;
      padding: 10px;
      border: none;
      border-radius: 5px; 
      background: #cc7a00;
      font-size: 16px;
      color: #fff;
      cursor: pointer;
      }
      button:hover {
      background: #ff9800;
      }
      @media (min-width: 568px) {
      .name-item, .city-item {
      display: flex;
      flex-wrap: wrap;
      justify-content: space-between;
      }
      .name-item input, .name-item div {
      width: calc(50% - 20px);
      }
      .name-item div input {
      width:97%;}
      .name-item div label {
      display:block;
      padding-bottom:5px;
      }
      }
      .myitem {
        position: relative;
    margin: 10px 0;
    WIDTH: 50%;
    left: 50%;
      }


      .v-counter {
    border-radius: 32px;
    max-width: 89px;
    overflow: auto;
    padding: 0px 4px;
    border: 1px solid #323140;
    margin: 10px;
}

.v-counter input[type=button]:hover {
    color: black;
    font-weight: bold;
    background-color: transparent;
}
.v-counter span {
   
    font-size: 13px;
    color: black;
    font-family: 'Open Sans';
}
.v-counter input[type=button], input[type=text] {
    display: inline-block;
    width: 88px;
    background-color: transparent;
    outline: none;
    border: none;
    text-align: center;
    cursor: pointer;
    padding: 0px;
    color: black;
    height: 33px;
    font-family: 'Open Sans';
}
    </style>
  </head>
  <body>
    <div class="testbox">
      <form method="post" action="chalan.php" >
        <div class="banner">
          <h1>JEE ELECTRONICS</h1>
        </div>
        <div class="myitem">
          <label for="name">CHALLAN NO:<span>*</span></label>
          <input id="name" type="text" name="entry"  />

          <div class="myitem">
          <label for="name">DATE:<span>*</span></label>
          <input type="date" name="entry1" />
          </div>
        </div>
        <div class="item">
          <label for="email">CUSTOMER Name<span>*</span></label>
          <input type="text" name="entry2">
        </div>
        <div class="item">
          <label for="email">ADDRESS<span>*</span></label>
          <input type="text" name="entry3">
        </div>
        <div class="item">
          <label for="email">PHONE NO:<span>*</span></label>
          <input type="text" name="entry4">
        </div>
        
        <div class="item">
          <label for="bdate">Product Name<span>*</span></label>
          <input type="text" name="entry6">

        </div>
        <div class="item">
          <label for="bdate">Product Name<span>*</span></label>
          <input type="text" name="entry7">
        </div>
        <!-- <div class="question">
          <label>Payment Type</label>
          <div class="question-answer">
            <div>
              <input type="radio" value="none" id="radio_1" name="availability"/>
              <label for="radio_1" class="radio"><span>Cash</span></label>
            </div>
            <div>
              <input  type="radio" value="none" id="radio_2" name="availability"/>
              <label for="radio_2" class="radio"><span>Bank</span></label>
            </div>
          </div>
        </div> -->
        <!-- <div class="item">
            <label for="email">Quantity<span>*</span></label>
            <input type="text" name="entry2">
          </div> -->
        <div class="item">
          <div class="name-item">
            <div>
              <label for="monday">Quantity</label>
              <div class="v-counter">
               <input type="button" class="minusBtn" value="-" />
                <input type="text" name="entry8" size="25" value="1" class="count" />
              <input type="button"  class="plusBtn" value="+" />
    </div>

    
            <div>
              <label for="monday">Quantity</label>
              <div class="v-counter">
        <input type="button" class="minusBtn" value="-" />
        <input type="text" size="25" value="1" name="entry9" class="count" />
        <input type="button" class="plusBtn" value="+" />
    </div>
              
              
              
            </div>
            
            <!-- <div>
              <label for="tuesday">Time you are available for Tuesday</label>
              <input id="tuesday" type="text" name="name" />
            </div> -->
          </div>
        </div>
        <!-- <div class="item">
          <div class="name-item">
            <div>
              <label for="wednesday">CHALAN NO:</label>
              <input type="text" name="entry3"/>
            </div>
            <div>
              <label for="thursday">ORDER NO:</label>
              <input type="text" name="entry4" />
            </div>
          </div>
        </div> -->
        
            <!-- <div>
              <label for="saturday">Time you are available for Saturday</label>
              <input id="saturday" type="text" name="name" />
            </div>
          </div> -->
        </div>
        <!-- <div class="item">
          <label for="sunday">Time you are available for Sunday</label>
          <input id="sunday" type="text" name="language"/>
        </div>
        <div class="item">
          <label for="comment">Comments/Explanations/Exceptions</label>
          <textarea id="comment" rows="3"></textarea>
        </div> -->
        <div class="btn-block">
          <button type="submit" href="/">Send</button>
        </div>
      </form>
    </div>

    <script>
        
// Store references that all functions can use.
var resultEl = document.querySelector(".resultSet"),
  plusMinusWidgets = document.querySelectorAll(".v-counter");

// Attach the handlers to each plus-minus thing
for (var i = 0; i < plusMinusWidgets.length; i++) {
  plusMinusWidgets[i].querySelector(".minusBtn").addEventListener("click", clickHandler);
  plusMinusWidgets[i].querySelector(".plusBtn").addEventListener("click", clickHandler);
  plusMinusWidgets[i].querySelector(".count").addEventListener("change", changeHandler);
}

/*****
 * both plus and minus use the same function, but value is set by the class of the
 *  button
 *****/
function clickHandler(event) {
  // reference to the count input field
  var countEl = event.target.parentNode.querySelector(".count");
  if (event.target.className.match(/\bminusBtn\b/)) {
    countEl.value = Number(countEl.value) - 1;
  } else if (event.target.className.match(/\bplusBtn\b/)) {
    countEl.value = Number(countEl.value) + 1;
    
  }
  // When we programmatically change the value, we need to manually trigger
  //  the change event.
  triggerEvent(countEl, "change");
};

/*****
 * changeHandler() processes whenever a plusMinusWidget's count el is changed.
 *  It iterates over all plusMinusWidgets, gets their count, and outputs that
 *  to the given resultEl input field.
 *****/
function changeHandler(event) {
  // remove all value from the result el.
  resultEl.value = 0;
  /******
   * Here is the only functional change, per your comment. Rather
   *  concatenating a string, you want to sum values of the 
   *  plusMinusWidget. To do this, we need to cast the value of each
   *  plusMinusWidget to a Number value, and add that to the Number
   *  value of the resultEl.
   *****/
  for (var i = 0; i < plusMinusWidgets.length; i++) {
    // Add the current plusMinusWidget value to the resultEl value.
    resultEl.value = Number(resultEl.value) + Number(plusMinusWidgets[i].querySelector('.count').value);

  }

};

/*****
 * triggerEvent() -- function to trigger an HTMLEvent on a given element.
 *  similar to jquery's trigger(), simply a convenience function. Not the
 *  point of this exercise.
 *****/

function triggerEvent(el, type){
   if ('createEvent' in document) {
        // modern browsers, IE9+
        var e = document.createEvent('HTMLEvents');
        e.initEvent(type, false, true);
        el.dispatchEvent(e);
    } else {
        // IE 8
        var e = document.createEventObject();
        e.eventType = type;
        el.fireEvent('on'+e.eventType, e);
    }
}
    </script>

  </body>
</html>