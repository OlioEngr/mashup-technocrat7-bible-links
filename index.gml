<gm:page title="Bible Links" authenticate="false">
  <h2>Bible Links</h2>
  <p>This is a work-in-progress.</p>
  <gm:list id="bkList" data="http://technocrat7.googlepages.com/bks.rss" template="books_old"  pagesize="10"/>
  <gm:template id="books">
    <div repeat="true" style="border:1px solid gray;padding:5px;margin:10px">
      <gm:debug ref="."/>
    </div>
  </gm:template>
  <gm:template id="books_old">
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
        <td><gm:text ref="tchncrt:Book_Name" default=""/></td>
        <td><gm:number ref="tchncrt:No" default="3" size="3"/></td>
        <td><gm:text ref="tchncrt:ESV" hint="Enter comment."/></td>
        <td><gm:editButtons/></td>
      </tr>
    </table>  
  </gm:template>
  

</gm:page>