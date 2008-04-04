<gm:page title="Bible Links" authenticate="false">

  <style>
    #myTable td {
      padding-bottom: 15px;
      padding-right: 10px;
      vertical-align: top;
    }
  </style>
  
  <script>
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
        newCell.innerHTML = '<b>'+titleGPath.getValue(entry)+'</b><br/>';
        newCell.innerHTML += contentGPath.getValue(entry);
        newRow.appendChild(newCell);
        
        if ((i+1)%10 == 0) {
          bkTable.appendChild(newRow);
          newRow = document.createElement('tr');
        }
      }
    }
  </script>
  
      
      <h2>Bible Links</h2>
  <p>This is a work-in-progress.</p>
  <gm:list id="bkList" data="http://technocrat7.googlepages.com/bks2.xml" pagesize="20" style="display:none">
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