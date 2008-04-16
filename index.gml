<gm:page title="Bible Links" authenticate="false">

  <style>
    #myTable td {
      padding-bottom: 15px;
      padding-right: 10px;
      vertical-align: top;
    }
  </style>
  
  <script>
    function stripFldName(str) {
      var pos = str.indexOf(":");
      return str.substr(pos + 1, str.length);
    }
//    function getValue(str, fld) {
//      var pos = str.indexOf(fld + ":");
//      return "";
//    }

    function buildTable() {
      var titleGPath = new GPath('atom:title');
      var contentGPath = new GPath('atom:content');
      
      var bkList = google.mashups.getObjectById('bkList');
      
      var bkTable = document.getElementById('bkTable');
      bkTable.innerHTML = '';
    
      var newRow = document.createElement('tr');
      for (var i=0; i<bkList.getData().size(); i++) {
        var entry = bkList.getData().entryAt(i);
    
        var newCell = document.createElement('td');
        var vals = contentGPath.getValue(entry).split(",");
        newCell.innerHTML = '<b>'+titleGPath.getValue(entry)+'</b><br/>';
//        newCell.innerHTML += contentGPath.getValue(entry);
        newRow.appendChild(newCell);

        var newCell = document.createElement('td');    
        newCell.innerHTML = '<a href="http://technocrat7.googlepages.com/">' + stripFldName(vals[0]) + '</a> ';
//        newCell.href = "http://technocrat7.googlepages.com/";
        newRow.appendChild(newCell);

        var newCell = document.createElement('td');    
        newCell.innerHTML = stripFldName(vals[1])+ ' ';
        newRow.appendChild(newCell);

        var newCell = document.createElement('td');    
        newCell.innerHTML = stripFldName(vals[2]) + ' ';
        newRow.appendChild(newCell);

        var newCell = document.createElement('td');    
        newCell.innerHTML = '<a href="http://www.gnpcb.org/esv/search/?q=' + stripFldName(vals[7]).replace(" ", "") + '+1">[ESV]</a> ';
        newRow.appendChild(newCell);

        var newCell = document.createElement('td');    
        newCell.innerHTML = '<a href="http://net.bible.org/bible.php?book=' + stripFldName(vals[8]).replace(" ", "") + '">[NET]</a> ';
        newRow.appendChild(newCell);
    
            //if ((i+1)%10 == 0) {
          bkTable.appendChild(newRow);
          newRow = document.createElement('tr');
        //}
      }
    }
  </script>
  
      
      <h2>Bible Links</h2>
  <p>This is a work-in-progress.</p>
  <gm:list id="bkList" data="http://spreadsheets.google.com/feeds/list/o11070467743159310010.8474335362509380687/oda/public/basic" pagesize="70" style="display:none">
    <gm:handleEvent event="repaint" execute="buildTable()"/>
  </gm:list>  

  <table id="bkTable"></table>    

      <gm:template id="books">
    <div repeat="true" style="border:1px solid gray;padding:5px;margin:10px">
      <gm:debug ref="."/>
    </div>
  <table class="gm-table">
      <thead>
        <tr>
          <th width="200">Book</th>  
          <th width="55">Number</th>
          <th width="200">ESV Link</th>
          <th width="30"></th>
        </tr>
      </thead>            
      <tr repeat="true">
        <td><gm:text ref="tchncrt:BookName" default=""/></td>
        <td><gm:number ref="tchncrt:No" default="3" size="3"/></td>
        <td><gm:text ref="tchncrt:ESV" hint="Enter comment."/></td>
        <td><gm:editButtons/></td>
      </tr>
    </table>  
  </gm:template>
  

</gm:page>